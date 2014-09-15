$(document).ready(function(){
  
  function fireA() {
    $('#animation').css("background", "url('/images/wave_1.jpg')");
 }

  function fireB() {
   $('#animation').css("background", "url('/images/wave_2.jpg')");
 }

  function fireC() {
    $('#animation').css("background", "url('/images/wave_3.jpg')");
  }

  function fireD() {
    $('#animation').css("background", "url('/images/wave_4.jpg')");
 }

  function fireE() {
   $('#animation').css("background", "url('/images/wave_5.jpg')");
 }

  function fireF() {
    $('#animation').css("background", "url('/images/wave_6.jpg')");
  }

  function fireG() {
    $('#animation').css("background", "url('/images/wave_7.jpg')");
 }

  function fireH() {
   $('#animation').css("background", "url('/images/wave_8.jpg')");
 }

  function fireI() {
    $('#animation').css("background", "url('/images/wave_9.jpg')");
  }

  function fireJ() {
    $('#animation').css("background", "url('/images/wave_10.jpg')");
  }

  function fireK() {
   $('#animation').css("background", "url('/images/point_1.jpg')");
 }

  function fireL() {
    $('#animation').css("background", "url('/images/point_2.jpg')");
  }

  function fireM() {
    $('#animation').css("background", "url('/images/point_3.jpg')");
  }

  function stop() {
    $('#animation').css("background", "url('/images/start.jpg')");
  }

  $(window).scroll(function(){
    var events = [fireA, fireB, fireC, fireD, fireE, fireF, fireG, fireH, fireI, fireJ, fireK, fireL, fireM];
    
    if(!this.counter) { this.counter = 0; }
    
    events[this.counter]();
    this.counter = (this.counter + 1);
    
    // $('#animation').css("background", "url('/images/wave_1.jpg')");
  });

})
