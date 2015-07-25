$(document).ready(function(){

if ($('html').hasClass('articles-show') == false) {
  $(window).scroll(function(e){
      if ($(this).scrollTop() > 95) {
        $("#logo_id").hide(000);
        $(".navbar").css({
          'position': 'fixed',
          'z-index': '20000'
        })


      } else {
        $("#logo_id").slideDown(600);
        $(".navbar").css({
          'position': 'relative',
          'z-index': '20000'
        })
      }
    });
}



  // $(window).on('scroll', function(){
  //   if($(this).scrollTop() >= 105) {
  //     $("#logo_id").addClass('none')
  //     $(".navbar").css({
  //         'position': 'fixed',
  //         'z-index': '20000'
  //       })
  //     $(".navigation").css({
  //         'margin-top': '0px'
  //       })
  //   } else {
  //     $(".navigation").css({
  //       'margin-top': '25px'
  //     })
  //     $("#logo_id").removeClass('none')
  //     $(".navbar").css({
  //       'position': 'relative'
  //     })

  // })
})
