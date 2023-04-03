const header = document.querySelector('header');

window.addEventListener('scroll', function(){
    header.classList.toggle('sticky', window.scrollY > 0);
});

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

/* var count = 0;
var btn = document.getElementById("btn");
var disp = document.getElementById("display");

btn.onclick = function () {
    count++;
    disp.innerHTML = count;
}
 */

/* // Get the modal
const modal = document.getElementById("myModal");

// Get the button that opens the modal
let btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
let span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

window.scroll({
  top: 2500, 
  left: 0, 
  behavior: 'smooth'
}); */