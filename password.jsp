<%-- 
    Document   : password
    Created on : May 5, 2023, 12:39:00 AM
    Author     : Geutzu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%
       
    if(session.getAttribute("name")==null){
        response.sendRedirect("index.jsp");
    }

 %>


<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;900&amp;display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">      

  <title>Home Page</title>
</head>
<body>
    <header>
        <a class="cta1" href="password.jsp"><img class="logo" src="logo12.jpg" alt="logo"></img></a>
  <nav>
      <ul class="nav_links">
          <li><a href="password.jsp">User</a></li>
          <li><a href="movies.jsp">Movies</a></li>
          <li><a href="tvshows.jsp">Tv Shows</a></li>
      </ul>
  </nav>
  <a class="cta" href="Logout"><button1>Log Out</button1></a>
    </header>
  <div class="slider">
    <img src="breaking bad.jpg" alt="Image 1">
    <img src="theboys.jpg" alt="Image 2"> 
    <img src="gameofthonres.jpg" alt="Image 3">
  </div>
  <div class="butoane">
      <h1><button onclick="showSlides1()"><img src="sageata2.jpg" alt="Image 4" width="20" height="20"></button></h1>
	<script src="script.js"></script>
        <h2><button onclick="showSlides()"><img src="sageata.jpg" alt="Image 5" width="20" height="20"></button></h2>
	<script src="script.js"></script>
  
    </div>
   <section class="film">
       <h3 class="categorie">Upcoming Movies</h3>
       <div class="owl-carousel owl-theme">
           <div class="item">
               <img src="JohnWick.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
          <div class="item">
               <img src="123.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="eternals.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="ant man.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="collage romance.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="topgun.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="thor love of thunder.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="spiderman.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
       </div>
       
   </section>

   <section class="film">
       <h3 class="categorie">Upcoming Shows</h3>
       <div class="owl-carousel owl-theme">
           <div class="item">
               <img src="JohnWick.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
          <div class="item">
               <img src="123.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="eternals.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="ant man.jpg" class="poster-thumbnail" alt="">
               <div class="movie-info">
                   <h3>Movie title</h3>
               </div>
                   <button onclick="openPopup()" class="trailer">More-Info</button>
            <div id="popup-overlay">
                <div id="popup-content">
                     <h4>This is the content of the pop-up screen.</h4>
                 <button onclick="closePopup()">Close</button> 
                  <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="popup-content" style="font-size: 15px;">Watch Trailer!</button></a>
             </div>
                 </div>

               
           </div>
           <div class="item">
               <img src="collage romance.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="topgun.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="thor love of thunder.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
           <div class="item">
               <img src="spiderman.jpg" class="poster-thumbnail" alt="">
                <a href="https://www.youtube.com/embed/qEVUtrk8_B4"><button class="trailer" style="font-size: 15px;">Watch Trailer!</button></a>
           </div>
       </div>
       
   </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
            $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    dots:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:9
        }
    }
})
        </script>
        <script>
                function openPopup() {
  document.getElementById("popup-overlay").style.display = "block";
}

function closePopup() {
  document.getElementById("popup-overlay").style.display = "none";
}
        </script>
</body>
</html>

<style>
      *{
          box-sizing:border-box;
          margin:0;
          padding:0;
          
      }
    .slider {
  position: relative;
  top:5px;
  margin:0 auto;
  width: 85%;
  height: 600px;
  overflow: hidden;
  border-radius: 50px;
}

.slider img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  transition: opacity 0.5s;
}

.slider img:first-child {
  opacity: 1;
}
    .butoane{
        position:absolute;
        text-align:center;
    }
    .logo{
  background-color: #FFFFFF;
  max-width: 250px;
  padding: 5px;
  text-align: left; 
  position: relative;
  top: 5px;
  cursor:pointer;
    }

    button{
        color: #950000;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        padding: 9px;
        transition: background-color 0.3s ease;
    }
    h1{
        position:relative;
        top:-285px;
        right:-200px;
      
    }
    h2{
        position:relative;
        top:-345px;
        left:1290px;
    }
    li, a{
       font-family: Arial, sans-serif;
       font-weight:500;
       font-size:20px;
       text-decoration: none;
       color:black;
    }
      .cta{
          text-decoration:none;
      }
    header{
        display:flex;
        justify-content:space-between;
        align-items:center;
        padding:10px 5%;
    }
      .nav_links{
          list-style:none;
      }
      .nav_links li{
          display:inline-block;
          padding:0px 60px;
          margin-top:25px;
          margin-right:50px;
      }
      .nav_links li a{
          transition:all 0.3s ease 0s;
      }
      .nav_links li a:hover{
          color: #950000;
      }
      button1{
          padding: 9px 25px;
          background-color:#000000;
          border : none;
          border-radius:50px;
          cursor:pointer;
          transition:all 0.3s ease 0s;
          color:white;
      }
      button1:hover{
          background-color:#950000;
      }
      .film{
          position:relative;
          overflow:hidden;
          padding:20px;
          top:20px;
          margin-bottom:-100px;
      }
      .categorie{
         
          font-size:30px;
          font-weight:500;
          margin-bottom:30px;
          text-transform:capitalize;
          font-family: Arial, sans-serif;
          transition:all 0.3s ease 0s;
      }
      .categorie:hover{
         color: #950000; 
      }
      .owl-carousel owl-theme{
          display:flex;
          flex-direction:row;
          width:100%;
          overflow-x:scroll;
          white-space:nowrap;
          
      }
      .item{
          position:relative;
          width:150px;
          height:350px;
          overflow:hidden;
      }
      .poster-thumbnail{
          height:200px;
          widht:200px;
          border-radius:25px;
      }
      .trailer{
          position:absolute;
          left:20px;
          padding:10px;
          text-transform:capitalize;
          border:none;
          outline:none;
          border-radius:25px;
          transition:0.5s;
          cursor:pointer;
          opacity:0;
          top:150px;
          background:none;
      }

      .trailer:hover{
          opacity:1;
          background:none;
          color:white
      }
      .pre,.nxt{
          border:none;
          position:absolute;
          display:flex;
          justify-content:center;
          align-items:center;
          cursor:pointer;
          bottom:60%;
      }
   
      .nxt{
          right:0;
      }
      .pre img,.nxt img{
          opacity:0.2;
      }
      .pre:hover img,.nxt:hover img{
          opacity:1;
      }
        
#popup-overlay {
  display: none;
  position: fixed;
  
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 9999;
}

#popup-content {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
  z-index: 9999;
}
  </style>
    <script>
    var slideIndex = 0;
var slides = document.getElementsByClassName("slider")[0].getElementsByTagName("img");

function showSlides() {
  // ascunde slide-urile
  for (var i = 0; i < slides.length; i++) {
    slides[i].style.opacity = 0;
  }
  
  // incrementeaza slide indexul
  slideIndex++;
  if (slideIndex > slides.length) {
    slideIndex = 1;
  }
  
  // arata slide-ul recent
  slides[slideIndex-1].style.opacity = 1;

}
    
    // acesta este codul pentru a merge inapoi in slide
    function showSlides1() {
  // ascunde slide-urile
  for (var i = 0; i < slides.length; i++) {
    slides[i].style.opacity = 0;
  }
  
  // decrementeaza slide indexul
  slideIndex--;
  if (slideIndex < 1) {
    slideIndex = slides.length;
  }
  
  slides[slideIndex-1].style.opacity = 1;
}
// Incepe aratarea slide-ului
showSlides();
  </script>
