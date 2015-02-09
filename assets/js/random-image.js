$(function() {
  images = [
    'DSC00483_crop.png',
    'DSC00612_crop.png',
    'IMG_0057_crop.png',
    'IMG_0062_crop.png',
    'IMG_0067_crop.png',
    'IMG_0278_crop.png',
    'IMG_0311_crop.png'
  ];
  i = Math.floor(Math.random()*images.length);
  $('.image-wrap img').attr('src', '/images/' + images[i]);   
});
