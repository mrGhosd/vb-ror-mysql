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
            slide: function(event, ui) {
                $( ".time_value" ).val(ui.value + " м." );
                change_loan_value();
            },
            stop: function()
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
    $(".loan_confirm").click(function()
    {
        var amount = getLoanAmount();
        var time = getLoanTime();
        var role = $(".user-role a.active").data("role-id");
        var percent_id = $(".user-role a.active").data("percent-id");
        if (amount != " " && time != " " && role != " " && percent_id != "")
        {
            $.ajax({
                url: '/users/loans/loan_request',
                data: {amount: amount, time: time, role: role, percent_id: percent_id},
                success: function(html)
                {

                    if(typeof html == "string")
                    {
                        $(".content_part").html(html).hide().slideDown();
                    }
                    else
                    {
                        systemDialogWindow(html.answer);
                    }

                }
            });
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
function changeSliderTimeValue()
{
    var time = $("#slider_time").slider("value");
    var param;
    if (time >3 && time <= 6)
    {
        param = 3;
    }
    if (time >6 && time <= 12)
    {
        param = 6;
    }
    if (time >12 && time < 15)
    {
        param = 12;
    }
    if (time == 15)
    {
        param = 15;
    }
    $( ".time_value" ).val(param + " м." );
}
function change_loan_value()
{
    var amount;
    var time = $( ".time_value" ).val();
    var arr_time = time.split(' ');
    var time = arr_time[0];
    if(time >= 3 && time < 6)
    {amount = 33000;}
    else if(time >= 6 && time < 12)
    {amount = 59000;}
    else if(time >= 12 && time < 15)
    {amount = 72000;}
    else if(time == 15)
    {
        amount = 88000;
    }
    $("#slider_amount").slider("value", amount);
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

function systemDialogWindow(message)
{
    var dialog = $("<div id='system_dialog_window'></div>");
    dialog.insertBefore(".wrapper");
    dialog.dialog({
        title: 'Сообщение системы',
        dialogClass: 'system_message',
        width: 400,
        modal: true,
        show: 'slide',
        hide: 'slide',
        buttons:{
          "OK": function()
          {
             $("#system_dialog_window").remove();
          }
        },
        close: function()
        {
            $("#system_dialog_window").remove();
        }
    }).html(message);

}