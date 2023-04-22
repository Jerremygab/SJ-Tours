
const header = document.querySelector('header');

window.addEventListener('scroll', function(){
    header.classList.toggle('sticky', window.scrollY > 0);
});

document.querySelector(".hamburger").addEventListener('click', () =>{
  navBar = document.querySelector(".nav-bar");
  navBar.classList.toggle("active");
})


function subImg1(){

  let subImg1 = document.querySelector('#sub1');
  src = subImg1.getAttribute('src');
  document.getElementById("main_img").src=src;

}
function subImg2(){
  
  let subImg2 = document.querySelector('#sub2');
  src = subImg2.getAttribute('src');
  document.getElementById("main_img").src=src;

}
function subImg3(){

  let subImg3 = document.querySelector('#sub3');
  
  src = subImg3.getAttribute('src');
  document.getElementById("main_img").src=src;

}
function subImg4(){
  
  let subImg4 = document.querySelector('#sub4');
  src = subImg4.getAttribute('src');
  document.getElementById("main_img").src=src;

}
function subImg5(){

  let subImg5 = document.querySelector('#sub5');
  src = subImg5.getAttribute('src');
  document.getElementById("main_img").src=src;

}

  document.querySelector('#contact-form').addEventListener('submit', (e) => {
    e.preventDefault();
    e.target.elements.name.value = '';
    e.target.elements.email.value = '';
    e.target.elements.message.value = '';
  });

  function messageSent(){
    alert('Thank you for contacting us!');
  }


function back2Top() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

var labelID;

$('label').click(function() {
  labelID = $(this).attr('for');
  $('#' + labelID).toggleClass('active');
}); 

const defaultSort = document.querySelector('#default').value;
const mostViewed = document.querySelector('#viewed').value;
const lowestPrice = document.querySelector('#lowest').value;
const highestPrice = document.querySelector('#highest').value;



