#!/usr/bin/perl
#
# parse_all_url.pl
# Rick Wash <rwash@umich.edu>
#
# Download a ton of pages from del.icio.us/URL (or from a person's delicious page)
# and save them as .html files.
# Then, you can run this file:
# - parse_all_url create <name>
#   (creates the database tables <name>_site and <name>_tag)
# - parse_all_url <name>
#   (parses all of the .html files in the current and all sub-directories)

use File::Find;

# Config info
$db_name = "delicious2007";
$db_user = "root";
$db_passwd = "********";

# Connect to the Database
use DBI;
$dbh = DBI->connect("dbi:mysql:$db_name", $db_user, $db_passwd);

sub create_tables 
{
  ($sample) = @_;
  $site_sql = "
CREATE TABLE  `${sample}_site` (
  `id` int(11) NOT NULL auto_increment,
  `deliciousID` varchar(200) NOT NULL default '',
  `title` varchar(400) default NULL,
  `url` varchar(500) default NULL,
  `user` varchar(200) default NULL,
  `date` date default NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `deliciousID` (`deliciousID`),
  KEY `date` (`date`),
  KEY `position` (`position`),
  KEY `user` (`user`),
  KEY `id_date` (`deliciousID`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1";
  $tag_sql = "
CREATE TABLE  `${sample}_tag` (
  `id` int(11) NOT NULL auto_increment,
  `site_id` int(11) default NULL,
  `tag` varchar(200) default NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `tag` (`tag`),
  KEY `deliciousID` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1";

  $dbh->do($site_sql);
  $dbh->do($tag_sql);
}

sub fix_month {
        $_ = shift;
        s/Jan/01/g;
        s/Feb/02/g;
        s/Mar/03/g;
        s/Apr/04/g;
        s/May/05/g;
        s/Jun/06/g;
        s/Jul/07/g;
        s/Aug/08/g;
        s/Sep/09/g;
        s/Oct/10/g;
        s/Nov/11/g;
        s/Dec/12/g;     

        return $_;
}


$first = shift;   # first parameter from command line
if ($first eq "create") {
	$sample = shift;
	create_tables($sample);
	exit(0);
} else {
	$sample = $first;
}

$site_sql = "INSERT INTO ${sample}_site (deliciousID, title, url, user, date, position) VALUES (?, ?, ?, ?, ?, ?)";
$site_sth = $dbh->prepare($site_sql);

$meta_sql = "INSERT INTO ${sample}_tag (site_id, tag, position) VALUES (?, ?, ?)";
$meta_sth = $dbh->prepare($meta_sql);

# First pass through the file.    Find the Title, URL, and total number of posts
sub pass_one()
{
  # Get the Site ID number from the title
  if (/<title>del.icio.us\/url\/([^<]*)<\/title>/)
  {
    $site_id = $1;
  }
  if (/<h4 class="nomb"><a href="([^\"]*)" rel="nofollow">([^<]*)<\/a><\/h4>/){
    $title = $2;
    $url = $1;
  }
  if (/this url has been saved by (\d*) people/) {
    $total_count = $1
  }
}

# Pass two through the file.   Find the individual posts and store them in the database
sub pass_two()
{
  if (/<h5 class="datehead">(...) &lsquo;(\d\d)<\/h5>/) {
    $mo = fix_month($1);
    if ($2 < 90) {
      $date = "20$2-${mo}-01 00:00:00";
    } else {
      $date = "19$2-${mo}-01 00:00:00";
    }
  }
  if (/<li><p>by/) { # Found entry
    @tags = ();
    $order = 1;
    if (/who" href="[^\\"]*">([^<]*)/) {
      $user = $1;
    }
    while (/(to) <a href="[^"]*">([^<]*)<\/a>(.*)/) {
      push @tags, [ $2, $order ];
      $_ = $1 . $3;   # Remove the matched section
      $order += 1;
    }
    $site_sth->execute($site_id, $title,$url,$user,$date, $number--) || warn "SQL Error Inserting into site";
  
    $id = $dbh->last_insert_id(undef, undef, undef, undef);

    foreach my $i (@tags) {
      ($tag, $order) = @{$i};
      $meta_sth->execute($id, $tag, $order) || warn "SQL Error Inserting into metadata";
    }
  }

}

sub parse_file {
	my ($fname) = @_;

	$number = 1;
	# First pass....  
	open(INFILE, "<", $fname) || warn("Cannot open $fname: $!");
	# Loop through the file, reading one line at a time
	while(<INFILE>) {
		pass_one()	
	}
	close INFILE;

	$number = $total_count;
	# Second Pass
	open(INFILE, "<", $fname) || warn("Cannot open $fname: $!");
	# Loop through the file, reading one line at a time
	while(<INFILE>) {
		pass_two()	
	}
	close INFILE;
}


sub check_file {
	if (!(/^.*\.html$/)) { return; }
	parse_file($_);
}

find(\&check_file, ".");
