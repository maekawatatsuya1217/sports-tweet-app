window.onload=function(){

  const spinner = document.getElementById('loading');
  spinner.classList.add('loaded');

  var scroll = document.querySelectorAll('.anime_up');
     
  var Animation = function() {
    for(var i = 0; i < scroll.length; i++) {
    var triggerMargin = 80;
    if (window.innerHeight > scroll[i].getBoundingClientRect().top + triggerMargin) {
    scroll[i].classList.add('show');
    }
    }
    }
    window.addEventListener('scroll', Animation);
    
  }             