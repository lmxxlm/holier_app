<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>
  <link rel="stylesheet" href="../assets/css2/idangerous.swiper.css">
 <style>
/* Demo Styles */
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 13px;
  line-height: 1.5;
}
.swiper-container {
  width: 660px;
  height: 250px;
  color: #fff;
  text-align: center;
}
.red-slide {
  background: #ca4040;
}
.blue-slide {
  background: #4390ee;
}
.orange-slide {
  background: #ff8604;
}
.green-slide {
  background: #49a430;
}
.pink-slide {
  background: #973e76;
}
.swiper-slide .title {
  font-style: italic;
  font-size: 42px;
  margin-top: 80px;
  margin-bottom: 0;
  line-height: 45px;
}
.pagination {
  position: absolute;
  z-index: 20;
  left: 10px;
  bottom: 10px;
}
.swiper-pagination-switch {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 8px;
  background: #222;
  margin-right: 5px;
  opacity: 0.8;
  border: 1px solid #fff;
  cursor: pointer;
}
.swiper-visible-switch {
  background: #aaa;
}
.swiper-active-switch {
  background: #fff;
}
  </style>
</head>
<body>
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide red-slide">
        <div class="title">Slide 1</div>
      </div>
      <div class="swiper-slide blue-slide">
        <div class="title">Slide 2</div>
      </div>
      <div class="swiper-slide orange-slide">
        <div class="title">Slide 3</div>
      </div>
      <div class="swiper-slide green-slide">
        <div class="title">Slide 4</div>
      </div>
      <div class="swiper-slide pink-slide">
        <div class="title">Slide 5</div>
      </div>
      <div class="swiper-slide red-slide">
        <div class="title">Slide 6</div>
      </div>
      <div class="swiper-slide blue-slide">
        <div class="title">Slide 7</div>
      </div>
      <div class="swiper-slide orange-slide">
        <div class="title">Slide 8</div>
      </div>
    </div>
    <div class="pagination"></div>
  </div>
  <script src="../assets/script/productAdmin/vendor/jquery-1.10.2.min.js"></script>
  <script src="../assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script> 
  <script>
  var mySwiper = new Swiper('.swiper-container',{
    pagination: '.pagination',
    paginationClickable: true,
    slidesPerView: 3,
    loop: true
  })
  </script>
</body>
</html>