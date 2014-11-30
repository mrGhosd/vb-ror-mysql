$(document).ready(function()
{
    buildSlider();
    $(".user_cabinet").click(function()
    {
        buildDialog($(this));
    });
    $(".loan_page div.title").click(function()
    {
        showLoansInformation($(this));
    });
    $(".history_item_title").click(function()
    {
        showLoansItem($(this));
    });
    $(".deposit_calc_title, .deposit_list_title").click(function()
    {
        showDepositsValues($(this));
    });
    $(".deposit_list_item_title").click(function()
    {
        showDepositItem($(this));
    });

    $(".get_current_loan_contract").click(function()
    {
        getContractDocument($(this));
    });
});


function buildSlider()
{
    var current_val = parseInt($("#current_day").val(),10);
    var sum_of_days = parseInt($("#date_sum").val(),10);
    console.log(current_val);
    console.log(sum_of_days);
    $(".current_user_slider").slider(
        {
            range: "min",
            min: 1,
            max: sum_of_days,
            value: current_val,
            disable: true
        });
}
buildDialog = function(link)
{
    var user_id= link.data('user');
    console.log(user_id);
    var dialog = $("<div id='dialog_window'></div>");
    dialog.insertBefore(".wrapper");
    dialog.dialog({
        title: 'Личный кабинет',
        dialogClass: 'user_cabinet',
        width: 958,
        modal: true,
        close: function()
        {
            $("#dialog_window").remove();
        }
    });
    $.ajax({
        url: '/users/edit',
        data: {user_id: user_id},
        type: 'GET',
        success: function(html)
        {
            dialog.html(html);
            $("#cabinet_tabs").tabs({selected: 0});
        },
        error: function(error)
        {
            alert(error);
        }

    });

}

function showLoansInformation(button)
{
    var block = button.next();
    var arrow = button.find('span.arrow');
    if(block.hasClass('hidden'))
    {
        block.removeClass('hidden').addClass('active');
        arrow.removeClass('down').addClass('up');
    }
    else
    {
        block.removeClass('active').addClass('hidden');
        arrow.removeClass('up').addClass('down');
    }
}

function showLoansItem(button)
{
    var body = button.closest('.user_history_item').find('.history_item_body');
    var arrow = button.find('span.arrow');
    if(button.hasClass('closed'))
    {
        body.fadeIn('slow');
        arrow.removeClass('down').addClass('up');
        button.removeClass('closed');
    }
    else
    {
        body.fadeOut('slow');
        arrow.removeClass('up').addClass('down');
        button.addClass('closed');
    }
}

function showDepositsValues(button)
{
    var body = button.closest('.main_temp').find('.body_partial');
    var arrow = button.find('span.arrow');
    if(button.hasClass('closed'))
    {
        body.show();
        button.removeClass('closed');
        arrow.removeClass('down').addClass('up');

    }
    else
    {
        body.hide();
        button.addClass('closed');
        arrow.removeClass('up').addClass('down');
    }
}

function showDepositItem(button)
{
    var body = button.closest('.deposit_list_item').find('.deposit_list_item_body');
    var arrow = button.find('span.arrow');
    if(button.hasClass('closed'))
    {
        body.fadeIn('slow').addClass('hide');
        arrow.removeClass('down').addClass('up');
        button.removeClass('closed');
    }
    else
    {
        body.fadeOut('slow').removeClass('hide');
        arrow.removeClass('up').addClass('down');
        button.addClass('closed');
    }
}