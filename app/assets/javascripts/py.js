(function ($) {
    $.fn.extend({
        tableAddCounter: function (options) {

            // set up default options
            var defaults = {
                title: '#',
                start: 1,
                id: false,
                cssClass: false
            };

            // Overwrite default options with user provided
            var options = $.extend({}, defaults, options);

            return $(this).each(function () {
                // Make sure this is a table tag
                if ($(this).is('table')) {

                    // Add column title unless set to 'false'
                    if (!options.title) options.title = '';
                    $('th:first-child, thead td:first-child', this).each(function () {
                        var tagName = $(this).prop('tagName');
                        $(this).before('<' + tagName + ' rowspan="' + $('thead tr').length + '" class="' + options.cssClass + '" id="' + options.id + '">' + options.title + '</' + tagName + '>');
                    });

                    // Add counter starting counter from 'start'
                    $('tbody td:first-child', this).each(function (i) {
                        $(this).before('<td>' + (options.start + i) + '</td>');
                    });

                }
            });
        }
    });
})(jQuery);

$(document).ready(function () {
    $('.table').tableAddCounter();
    $.getScript("http://code.jquery.com/ui/1.9.2/jquery-ui.js").done(function (script, textStatus) { $('tbody').sortable();$(".alert-info").alert('close');$(".alert-success").show(); });
});

window.myFunction = function() {
    var myWindow = window.open("", "", "width=200, height=200");

    var dd = document.getElementById("dropdown");
    myWindow.document.write(dd.options[dd.selectedIndex].innerHTML);
}

$("#selectBox option[value='option1']").remove();



$( document ).ready(function() {

  $(".class_selector").on('change', function(){

      $.post("assign_class",
      {     //alert('hhhh')
          division_id: $(this).val(),
          user_id: $(this).data("userId")
      },
      function(response){

          alert("hi " +response.email);
          console.log(response)
      });
  });
});

(function ($) {
    $.fn.extend({
        tableAddCounter: function (options) {

            // set up default options
            var defaults = {
                title: '#',
                start: 1,
                id: false,
                cssClass: false
            };

            // Overwrite default options with user provided
            var options = $.extend({}, defaults, options);

            return $(this).each(function () {
                // Make sure this is a table tag
                if ($(this).is('table')) {

                    // Add column title unless set to 'false'
                    if (!options.title) options.title = '';
                    $('th:first-child, thead td:first-child', this).each(function () {
                        var tagName = $(this).prop('tagName');
                        $(this).before('<' + tagName + ' rowspan="' + $('thead tr').length + '" class="' + options.cssClass + '" id="' + options.id + '">' + options.title + '</' + tagName + '>');
                    });

                    // Add counter starting counter from 'start'
                    $('tbody td:first-child', this).each(function (i) {
                        $(this).before('<td>' + (options.start + i) + '</td>');
                    });

                }
            });
        }
    });
})(jQuery);

$(document).ready(function () {
    $('.table').tableAddCounter();
    $.getScript("http://code.jquery.com/ui/1.9.2/jquery-ui.js").done(function (script, textStatus) { $('tbody').sortable();$(".alert-info").alert('close');$(".alert-success").show(); });
});
$(document).ready(function(){
   $('[data-toggle="offcanvas"]').click(function(){
       $("#navigation").toggleClass("hidden-xs");
   });
});

$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();
    });

    function hamburger_cross() {

      if (isClosed == true) {
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }

  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });
});
$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
});
$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
});
