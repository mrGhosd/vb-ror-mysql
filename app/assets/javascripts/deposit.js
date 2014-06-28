$(document).ready(function()
{
    $("#slider_deposit_amount").slider(
        {
            range: "min",
            min: 100000,
            max: 3000000,
            value: 350000,
            step: 250000,
            slide: function( event, ui ) {
                $( ".deposit_amount_value" ).val(ui.value + " р." );
            }
        });
    $("#slider_deposit_time").slider(
        {
            range: "min",
            min: 12,
            max: 36,
            value: 18,
            step: 1,
            slide: function( event, ui ) {
                $( ".deposit_time_value" ).val(ui.value + " м." );
            }
        });
    $("#percents_slider").slider(
        {
            range: "min",
            min: 1,
            max: 2,
            value: 1,
            step: 1,
            start: function()
            {
              if($(this).slider('value') == 1)
              {
                  $(this).slider("value", 2);
                  $('.left_side').removeClass('active');
                  $('.right_side').addClass('active');
              }
              else
              {
                  $(this).slider("value", 1);
                  $('.right_side').removeClass('active');
                  $('.left_side').addClass('active');
              }
            },
            slide: function( event, ui ) {

            }
        });

    $(".left_side").click(function()
    {
        if($(this).hasClass('active'))
        {
            $("#percents_slider").slider("value", 2);
            $('.left_side').removeClass('active');
            $('.right_side').addClass('active');
        }
        else
        {
            $("#percents_slider").slider("value", 1);
            $('.right_side').removeClass('active');
            $('.left_side').addClass('active');
        }
    });
    $('.right_side').click(function()
    {
        if($(this).hasClass('active'))
        {
            $("#percents_slider").slider("value", 1);
            $('.right_side').removeClass('active');
            $('.left_side').addClass('active');
        }
        else
        {
            $("#percents_slider").slider("value", 2);
            $('.left_side').removeClass('active');
            $('.right_side').addClass('active');
        }
    });
});