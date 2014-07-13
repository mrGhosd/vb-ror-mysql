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
                calculate_full_summ();
                deposit_main_diagram_change();
            },
//            start: function(event, ui)
//            {
//                calculate_full_summ();
////                deposit_main_diagram_change();
//
//            },
            change: function(event, ui)
            {
                calculate_full_summ();
                deposit_main_diagram_change();

            }
//            stop: function(event, ui)
//            {
//                calculate_full_summ();
//                deposit_main_diagram_change();
//
//            }
        });
    $("#slider_deposit_time").slider(
        {
            range: "min",
            min: 12,
            max: 36,
            value: 18,
            step: 1,
            start: function()
            {
                calculate_full_summ();
            },
            slide: function( event, ui ) {
                deposit_time_info_value(ui.value);
                calculate_full_summ();
            },
            change: function()
            {
                calculate_full_summ();
            },
            stop: function()
            {
                calculate_full_summ();
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

    //Инициализация данных о депозите
    var month = getTime();
    $("span.month_count").text(month);
    calculate_full_summ();

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
        calculate_full_summ();
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
        calculate_full_summ();
    });

    $(".deposit_confirm").click(function()
    {
        var amount = getAmount();
        var time = getTime();
        var percent = getPercent();

        if (amount != " " && time != " " && percent != " ")
        {
            $.ajax({
                 url: '/users/deposits/deposit_request',
                 data: {amount: amount, time: time, percent: percent},
                 success: function(html)
                 {
//                     $(".calc_deposit").hide();
                     $(".calc_deposit").html(html);
                 }
                });
        }
    });


});


function deposit_time_info_value(value)
{
    $( ".deposit_time_value" ).val(value + " м." );
    $("span.month_count").text(value);
}

function getPercent()
{
    var percent;
    if($(".main_percent_slider .left_side").hasClass('active'))
    {
        percent = 15;
    }
    else
    {
        percent = 30;
    }
    return percent;
}

function getAmount()
{
    var amount = $("#slider_deposit_amount").slider("value");
    return amount;
}
function getTime()
{
    var time = $("#slider_deposit_time").slider("value");
    return time;
}


function calculate_full_summ()
{
    var percent = getPercent();
    var amount = getAmount();
    var time = getTime();
    var percents = (amount * percent/100) * time;

    var result_sum = amount + ((amount * percent/100) * time);
    $(".deposit_amount_value").val(amount + " р.");
    $(".deposit_time_value").val(time + " м.");
    $(".deposit_information .current_summ").text(parseInt(result_sum, 10) + " р.");
    $(".deposit_information .user_deposit").text(amount + " р.");
    $(".deposit_information .added_percents").text(percents + " р.");
    $(".deposit_info_user p.user_amount").text(amount + " р.")
    $(".deposit_info_user p.user_full_summ").text(result_sum + " р.");
    deposit_main_diagram_change();
}

function deposit_main_diagram_change()
{
    var slider = $("#slider_deposit_amount");
    var slider_time = $("#slider_deposit_time");
    var current_height = 80;
    var current_top_value = 34;
    var profit_diagram_height = 40;
    var profit_diagram_top_margin = 69;
    var slider_current_value = slider.slider("value");
    var time_current_value = slider_time.slider("value");
    var slider_step = slider.slider("option", "step");
    var exp = slider_current_value / slider_step;
    var time_diff = slider_current_value / time_current_value;


    $(".deposit_diagram_middle .deposit_diagram_middle_middle").animate({ "height": current_height + (exp * 3)}, 'fast');
    $(".deposit_diagram_top").animate({"top": + current_top_value + (exp/4)});
    $(".deposit_profit_diagram_middle .deposit_diagram_middle_middle")
        .animate({ "height": profit_diagram_height + (exp * 1.5)}, 'fast');
    $(".deposit_profit_diagram_top").animate({"top": + profit_diagram_top_margin + (exp/4)});



}