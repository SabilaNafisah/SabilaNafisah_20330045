<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about2-img.svg" alt="">
      </div>

      <div class="content">
         <h3>What is Knitting Shop?</h3>
         <p>Knitting Shop adalah suatu aplikasi pemesanan kerajinan rajut berbasis website  yang memungkinkan pengguna untuk menjelajahi, memilih, dan memesan berbagai produk kerajinan rajutan. Aplikasi ini menyediakan informasi detail tentang setiap produk, termasuk deskripsi, bahan produk, ukuran, warna, dan foto produk. Pengguna dapat menambahkan produk yang mereka inginkan ke keranjang belanja, menambahkan produk ke wishlist, memilih metode pembayaran yang aman, dan melacak status pengiriman produk mereka. Keamanan dan privasi pengguna juga menjadi perhatian utama dalam aplikasi ini.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>
</section>


<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>