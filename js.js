$(document).ready(function(){
 


$(".go").children().hide().parent().click(function() {
  $(this).children().toggle( "slow" );
});

// $( ".go" ).on('mouseon', function() {
//   $( ".paragraph" ).slideDown( "slow" );
// });

//   $('#go').on('mouseleave', function(){
//      $( "#paragraph" ).hide();
//   })


// $( ".go" ).on('mouseleave', function() {
//   $( ".paragraph" ).slideUp( "slow" );
// });


 
})