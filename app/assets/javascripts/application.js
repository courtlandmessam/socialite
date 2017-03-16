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
    
    $(".dropdown-button").dropdown();
    
    window.onload = function() {
        var upvotes = (+document.getElementById('upvotes').innerHTML);
        var downvotes = (+document.getElementById('downvotes').innerHTML);
        var standing = (+document.getElementById('standing').innerHTML);
        var dailyVotes = (+document.getElementById('dailyVotes').innerHTML);
        var totalComments = (+document.getElementById('totalComments').innerHTML);


        var chart = new CanvasJS.Chart("chartContainer", {
            title: {
                text: "Analytics"
            },
            axisX: {
              			  labelAngle: -30
              		 },
            animationEnabled: true,
            data: [{
                type: "column",
                dataPoints: [{
                        label: "Upvotes",
                        // y: upvotes
                        y: 350
                    },
                    {
                        label: "Downvotes",
                        // y: downvotes
                        y: 150
                    },
                    {
                        label: "Standing",
                        // y: standing
                        y: 650
                    },
                    {
                        label: "Daily Votes",
                        // y: dailyVotes
                        y: 500
                    },
                    {
                        label: "Total Comments",
                        // y: totalComments
                        y: 260
                    },
                ]
            }]
            
        });
        chart.render();
    };

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
            "Heart Nightclub": 'http://images1.miaminewtimes.com/imager/u/745xauto/7866062/heart-nightclub-miami.png',
            "Wyncode Academy": 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/2904/s300/wyncode-icon.jpg',
            "VenueNameGoesHere": null
        },
        limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
    });
});