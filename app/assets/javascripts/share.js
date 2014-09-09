/**
 * Created by vsokoltsov on 18.06.14.
 */
$(document).ready(function()
{
    $(".share_question").click(function()
    {
        var title = $(this).children(".arrow");
        var text = $(this).children(".share_answer");
        if($(this).hasClass("open"))
        {
            text.hide();
            title.removeClass("up").addClass("down");
            $(this).removeClass("open");
        }
        else
        {
            text.show();
            title.removeClass("down").addClass("up");
            $(this).addClass("open");
        }
    });

    $(".share_destroy").click(function()
    {
        var faq_row = $(this).parents("tr");
        $.ajax({
            url: '/shares/'+faq_row.attr("share_id"),
            type: 'POST',
            method: 'delete',
            data: {},
            success: function(result)
            {
                $("tr.share_"+faq_row.attr("share_id")).fadeOut(200);
            }
        });
    });

    $(".share-show").click(function(){
        var button = $(this);
        var stock_row = $(this).parents("tr");
        $.ajax({
            url: '/shares/'+stock_row.attr("share_id")+'/share_switch',
            type: 'POST',
            data: {id: stock_row.attr("share_id")},
            success: function(success)
            {
                if(success.success)
                {
                    button.text("Не отображать").removeClass("btn-warning").addClass("btn-success");
                }
                else
                {
                    button.text("Отображать").removeClass("btn-success").addClass("btn-warning");
                }
            }
        });
    });
});