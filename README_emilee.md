## TODO

figure out how to do rotating headers
fiddle with the site's css to make it not look like crap (e.g., spacing around headers)
figure out how to make the links on the abstract pages (paper.html layout) underlined
write new content
make new images

## Documentation for Publication Formats

All
	layout: is which layout to use for displaying the paper -- journal, conference, workshop, bookchap, magazine, working
	type: is the way the reference is formatted -- journal, conference, workshop, bookchap, magazine, working
	category: how to break up the list of publications -- journal, conference, workshop, bookchap, magazine, working
	tags: sort papers into projects -- security, privacy, curation, ihiring
	title
	author
	year
	file
	abstract: yes or no -- text of the abstract is the content of the file

 Journal (journal)
	journal
	volume
	number
	pages
 Archival Conference (conference)
	conference
	month
	year
	city
	pages
	acmdl
	doi
	appendix
 Conference Proceedings, Workshop Papers and Posters (workshop)
	workshop
	papertype: Poster, Full Paper
	month
	year
	city
 Book Chapter (bookchap)
	book
	editor
	publisher
	pages
	isbn
 Magazine (magazine)
	magazine
	volume
	number
	pages
	doi
	link
 Working Paper (working)
	month
	year

## Template

---
layout: 
type: 
category: 
tags: 
title: 
author: 
year: 
file: 
abstract: 

journal: 
conference: 
workshop: 
papertype: 
book: 
magazine: 
institution: 

volume: 
number: 
month: 
city: 

editor:
publisher: 

pages: 

acmdl: 
link: 
doi: 
isbn: 

appendix: 
award: 
---
