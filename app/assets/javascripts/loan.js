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
                change_time_value();
            },
            change: function()
            {
                change_time_value();
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
                change_loan_value()
            },
            change: function()
            {
                change_loan_value();
            }
        });
    $("#slider_everymonth_pay").slider(
        {
            range: "min",
            min: 1500,
            max: 35000,
            step: 1000,
            disabled:true,
            slide: function( event, ui ) {
                $( "span.pay_value" ).val(ui.value + " р." );
            }
        });

    setDefaultValues();
});
function getLoanAmount()
{
    var amount = $("#slider_amount").slider("value");
    return amount;
}

function getLoanTime()
{
    var time = $("#slider_time").slider("value");
    return time;
}

function change_loan_value()
{
    var amount;
    var time = getLoanTime();
    switch(time)
    {
        case 3:
            amount = 33000;
            break;
        case 6:
            amount = 59000;
            break;
        case 12:
            amount = 72000;
            break;
        case 15:
            amount = 88000;
            break;
    }
    $("#slider_amount").slider("value", amount);
    $( ".amount_value" ).val(amount + " р." );
    calc_everymonth_pay();

}

function change_time_value()
{
    var time;
    var amount = getLoanAmount();
    if (amount <= 35000)
    {
        time = 3;
    }
    else if (amount > 35000 && amount <= 60000)
    {
        time = 6;
    }
    else if (amount <= 75000 && amount > 60000)
    {
        time = 12;
    }
    else if(amount >= 75000)
    {
        time = 15;
    }
    $("#slider_time").slider("value", time);
    $( ".time_value" ).val(time + " м." );
    calc_everymonth_pay();

}
function setDefaultValues()
{
    var amount = getLoanAmount();
    var time = getLoanTime();

    $( ".amount_value" ).val(amount + " р." );

    $( ".time_value" ).val(time + " м." );
    calc_everymonth_pay();
}
function calc_everymonth_pay()
{
    var amount = getLoanAmount();
    var time = getLoanTime();

    var everymonth = parseInt(((amount / time) + (amount * 21 / 100)), 10);
    $("#slider_everymonth_pay").slider("value", everymonth);
    $( ".pay_value" ).val(everymonth + " р.")
}