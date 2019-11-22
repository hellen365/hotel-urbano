$(document).ready(function(){
    $('.modal').modal();
    $('select').formSelect();
    $('.slider').slider({
    	indicators: false
    });
      $('.carousel.carousel-slider').carousel({
    fullWidth: true,
    indicators: true
  });

  $('.datepicker').datepicker({
      format:'dd-mm-yyyy',
i18n:{
  months: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
  monthsShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
  weekdays: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabádo'],
  weekdaysAbbrev: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab']
}
    });

  });


 
window.onscroll = function() {myFunction()};

function myFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
   document.getElementById("nav").style.background = "blue";
  } else {
    document.getElementById("nav").style.background = "";
  }
}

function Mudarestado(el) {
        var display = document.getElementById(el).style.display;
        if(display == "none")
            document.getElementById(el).style.display = 'block';
        else
            document.getElementById(el).style.display = 'none';
  }