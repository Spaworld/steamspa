$(document).ready(function(){
  'use strict';
  $('body.page-id-2464').ready(function(){
    // Initing generator images
    $('.generators-container .span5').hide();

    // Validations
    $(function(){ $('#dimensions input').not('[type=submit]').jqBootstrapValidation(); });

    $('#dimensions').on('submit', function(e){
      $('.generators-container .span5').hide();
      e.preventDefault();
      var data = $('#dimensions :input').serializeArray();
      var values = $.map(data,function(k){
        return [k.value];
      });

      var processedValues = [];
      $(values).each(function(e){
        if(e === 4){
          processedValues.push(this * 1.10);
        } else {
          processedValues.push(this);
        }
      });
      var sqft = processedValues.reduce(function(a, b){return a * b;});
      toggleGenerator(sqft);
    });
    function toggleGenerator(sqft){
      console.log(sqft);
      $('.generators-container .span5').hide();

      switch(true){
        case (between(sqft, 1, 90)):
          $('.45kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 4.5 KW Steam Generator');
          break;
        case (between(sqft, 91, 150)):
          $('.6kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 6 KW Steam Generator');
          break;
        case (between(sqft, 151, 225)):
          $('.75kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 7.5 KW Steam Generator');
          break;
        case (between(sqft, 226, 300)):
          $('.9kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 9 KW Steam Generator');
          break;
        case (between(sqft, 301, 400)):
          $('.10kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 10.5 KW Steam Generator');
          break;
        case (between(sqft, 401, 450)):
          $('.12kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 12 KW Steam Generator');
          break;
        case (between(sqft, 451, 500)):
          $('.15kw-quick-start-unit').show();
          $('#wpcf7-f2470-p2464-o1 textarea').text('Hi, I am inquiring about 15 KW Steam Generator');
          break;
      }
      function between(i, min, max){
        return i >= min && i <= max;
      }
    }

  });
});
