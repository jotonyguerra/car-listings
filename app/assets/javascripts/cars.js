// var search_car;
//
// search_car = function() {
//   $("#search").on('ajax:success', function(event, data, status){
//     $('#cars-list').append(data);
//     search_car();
//   })
//
// }
// $(document).ready(function() {
//   search_car();
// })

$( document ).ready(function(){
  $('#search').on('click', function (){
    var request = $.ajax({
      method: "GET",
      url: "/cars",
      data: { cars: "car"}
    }).done(function(data){
      

    }
  })
})
