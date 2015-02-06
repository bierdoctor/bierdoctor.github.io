$(function() {
  images = [
    'sample-image-1.jpg',
    'sample-image-2.jpg',
    'sample-image-3.jpg',
    'sample-image-4.jpg',
    'sample-image-5.jpg',
    'sample-image-6.jpg',
    'sample-image-7.jpg'
  ];
  i = Math.floor(Math.random()*images.length);
  $('.image-wrap img').attr('src', '/images/' + images[i]);   
});
