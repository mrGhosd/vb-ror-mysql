/**
 * Created by vsokoltsov on 27.06.14.
 */
$(document).ready(function()
{
    $('.callback_arrow').click(function()
    {
        if($(this).hasClass('down'))
        {
            $(this).removeClass('down').addClass('up');
            $('.callback_form .callback_main').fadeIn('slow');
            $(this).removeClass('arrow-no-bottom-border');

        }
        else
        {
            $(this).removeClass('up').addClass('down');
            $('.callback_form .callback_main').slideUp('slow');
            $(this).addClass('arrow-no-bottom-border');
        }
    });
});