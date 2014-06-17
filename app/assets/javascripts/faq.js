/**
 * Created by vsokoltsov on 17.06.14.
 */
$(document).ready(function()
{
    $(".faq_question").click(function()
    {
        var title = $(this).children(".arrow");
        var answer = $(this).children(".faq_answer");
        if($(this).hasClass("open"))
        {
            answer.hide();
            title.removeClass("up").addClass("down");
            $(this).removeClass("open");
        }
        else
        {
            answer.show();
            title.removeClass("down").addClass("up");
            $(this).addClass("open");
        }
    });

    $(".faq_destroy").click(function()
    {
        var faq_row = $(this).parents("tr");
        $.ajax({
            url: '/faqs/'+faq_row.attr("faq_id")+'/destroy',
            type: 'POST',
            data: {},
            success: function(result)
            {
                $("tr.faq_"+faq_row.attr("faq_id")).fadeOut(200);
            }
        });
    });
});