// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load', function() {
    $('.button-collapse').sideNav({
            menuWidth: 300, // Default is 300
            edge: 'left', // Choose the horizontal origin
            closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
            draggable: true // Choose whether you can drag to open on touch screens
    });
        
    // $('.collapsible').collapsible({
    //   accordion: false, // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    //   onOpen: function(el) { alert('Open'); }, // Callback for Collapsible open
    //   onClose: function(el) { alert('Closed'); } // Callback for Collapsible close
    // });  
        
    $('.datepicker').pickadate({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  
  $('input.autocomplete').autocomplete({
    data: {
      "Adoré Nightclub": null,
      "American Social": null, // Image link goes here. ex. 'http://images1.miaminewtimes.com/imager/u/745xauto/7866062/heart-nightclub-miami.png'
      "BLUME Nightclub": null,
      "Bahia": null,
      "Bar Louie": null,
      "Bardot": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      "VenueNameGoesHere": null,
      
      "Heart Nightclub": 'http://images1.miaminewtimes.com/imager/u/745xauto/7866062/heart-nightclub-miami.png'
    },
    limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
  });
      
  $(".dropdown-button").dropdown();
  
  
  
  
  
  
  // $('select').material_select();
  
});