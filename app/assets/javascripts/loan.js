$(document).ready(function()
{
    $('.user-role a').click(function()
    {
        $('.user-role a').removeClass('active');
        $(this).toggleClass('active')
    });



    $("#slider_amount").slider(
        {
            range: "min",
            min: 15000,
            max: 90000,
            value: 23000,
            step: 1500,
            slide: function( event, ui ) {
                $( ".amount_value" ).val(ui.value + " р." );
            }
        });
    $("#slider_time").slider(
        {
            range: "min",
            min: 3,
            max: 15,
            value: 3,
            step: 1,
            slide: function( event, ui ) {
                $( ".time_value" ).val(ui.value + " м." );
            }
        });
    $("#slider_everymonth_pay").slider(
        {
            range: "min",
            min: 15000,
            max: 90000,
            value: 23000,
            step: 1500,
            disabled:true,
            slide: function( event, ui ) {
                $( "span.pay_value" ).val(ui.value + " р." );
            }
        });
});