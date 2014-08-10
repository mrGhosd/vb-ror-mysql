function showFullLoanInfo(button)
{
    var arrow = button.find('.arrow');
    if(button.hasClass('open'))
    {
        button.removeClass('open');
        arrow.removeClass('up').addClass('down');
        button.parent().find('.loan-item-body').fadeOut('slow');
    }
    else
    {
        button.addClass('open');
        arrow.removeClass('down').addClass('up');
        button.parent().find('.loan-item-body').fadeIn('slow');
    }
}
function loanResponse(button)
{
    var classes = button.attr('class');
    console.log(classes);
    class_arr = classes.split(' ');
    console.log("id: "+class_arr[3]);
    console.log("result: "+class_arr[2]);
    $.ajax({
        type: 'GET',
        url: "/users/loans/"+class_arr[3]+"/loan_status/",
        data: {id: class_arr[3], result: class_arr[2]},
        success: function()
        {
            $(".loan-accept, .loan-deciline").remove();
        }
    });
}

function showRepyamentForm(button)
{
    if(button.hasClass('open'))
    {
        button.removeClass('open');
        $(".repayment_form").fadeOut('slow');
    }
    else
    {
        button.addClass('open');
        $(".repayment_form").fadeIn('slow');
    }
}
function changeTab(button)
{
    attr_list = button.attr('class');
    attr_arr = attr_list.split(' ');
    $(".user-money").hide();
    $(".admin_user_navigation a").removeClass('active');
    if(button.hasClass('active'))
    {
        button.removeClass('active');
    }
    else
    {
        button.addClass('active');

    }
    $("div.user-money."+attr_arr[0]).show();
}
$(document).ready(function()
{
    $(".admin-user-loans .loan-title, .admin-user-deposits .loan-title").click(function()
    {
        showFullLoanInfo($(this));
    });
    $(".loan-accept, .loan-deciline").click(function()
    {
        loanResponse($(this));
    });
    $(".repayment-form-show").click(function()
    {
        showRepyamentForm($(this));
    });
    $(".admin_user_navigation a").click(function()
    {
        changeTab($(this));
    });
});