function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var lessonAddress = document.getElementById('lesson_address');

    if (lessonAddress) {
      var autocomplete = new google.maps.places.Autocomplete(lessonAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(lessonAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
