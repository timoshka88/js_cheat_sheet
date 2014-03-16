$(document).ready(function(){
 


$( ".go" ).click(function() {
  $( ".paragraph" ).slideToggle( "slow" );
});

// $( ".go" ).on('mouseon', function() {
//   $( ".paragraph" ).slideDown( "slow" );
// });

  // $('#go').on('mouseleave', function(){
  //    $( "#paragraph" ).hide();
  // })


$( ".go" ).on('mouseleave', function() {
  $( ".paragraph" ).slideUp( "slow" );
});


 
})