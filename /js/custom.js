
//SEARCh BAR
$(function () {
    $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });
    
    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
    
    

});
$(function(){
    $("div#navbar > ul > li").each(function(){
        var mobbody = $(this).html();
        $('.sidenav').append('<div>'+mobbody+'</div>');
    });
    $( "#mySidenav a" ).each(function(){
        if ($(this).find(".caret").length > 0){ 
          $(this).parent('div').attr('id','hassubmenu');
          $(this).after('<i class="fa fa-angle-down"></i>');
        }
    });
    $('#mySidenav #hassubmenu i.fa.fa-angle-down').click(function(){
        $(this).next('ul.dropdown-menu').slideToggle();
    }
    );
});

function openNav() {
        document.getElementById("mySidenav").style.left = "0px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.left = "-250px";
}
 $(document).ready(function ()
      {$('.fb').fancybox();
});
 $('a[href="#search"]').on('click', function(event) {
            event.preventDefault();
            $('#search').addClass('open');
            $('#search > form > input[type="search"]').focus();
        });

        $('#search, #search button.close').on('click keyup', function(event) {
            if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
                $(this).removeClass('open');
            }
        });

        $('form').submit(function(event) {
            event.preventDefault();
            return false;
        })
        new WOW().init();
/*scroll-header CSS*/
// $(window).scroll(function () {
//     var window_top = $(window).scrollTop() + 1;
//     if (window_top > 50) {
//       $('.header_').addClass('header_scroll animated fadeInDown');
//     } else {
//       $('.header_').removeClass('header_scroll animated fadeInDown');
//     }
// });
//       $(document).ready(function(){

// var quantitiy=0;
//    $('.quantity-right-plus').click(function(e){
        
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
            
            $('#quantity').val(quantity + 1);

          
            // Increment
        
    });

     $('.quantity-left-minus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
      
            // Increment
            if(quantity>0){
            $('#quantity').val(quantity - 1);
            }
    });
    
});
            $('#sell1').owlCarousel({
          loop:true,
          margin:10,
          nav:true,
          dots:false,
           navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
          responsive:{
              0:{
                  items:1
              },
              600:{
                  items:4
              },
              1000:{
                  items:4
              }
          }
      });
                  $('#sell2').owlCarousel({
          loop:true,
          margin:10,
          nav:true,
          dots:false,
           navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
          responsive:{
              0:{
                  items:1
              },
              600:{
                  items:4
              },
              1000:{
                  items:5
              }
          }
      });
