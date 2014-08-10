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

$(document).ready(function()
{
    $(".admin-user-loans .loan-title").click(function()
    {
        showFullLoanInfo($(this));
    });
});