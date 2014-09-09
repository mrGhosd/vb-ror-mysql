/**
 * Created by vsokoltsov on 17.06.14.
 */
$(document).ready(function(){
    $(".partner-destroy").click(function()
    {
        var partner_row = $(this).parents("tr");
        $.ajax({
            url: '/partners/'+partner_row.attr("partner_id"),
            type: 'POST',
            method: 'delete',
            success: function(result)
            {
                $("tr.partner_"+partner_row.attr("partner_id")).fadeOut(200);
            }
        });
    });

    $(".partner-show").click(function(){
        var button = $(this);
        var stock_row = $(this).closest("td");
        console.log(stock_row.attr("partner_id"));
        $.ajax({
            url: '/partners/'+stock_row.attr("partner_id")+'/partner_switch',
            type: 'POST',
            data: {id: stock_row.attr("partner_id")},
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

    $(".partners_page .main").click(function()
    {
        $(".partners_page .hidden").hide();
        var tar = $(this);
        var obj = $(this).next(".hidden");
        if(obj.hasClass('visible'))
        {
            obj.removeClass('visible');
            obj.fadeOut(200);
        }
        else
        {
            obj.addClass('visible');
            obj.fadeIn(200);
        }
    });
});

function admin_panel(tar, obj)
{

    tar.click(function()
    {
       if(obj.hasClass('visible'))
       {
           obj.removeClass('visible');
           obj.fadeOut(200);
       }
       else
       {
            obj.addClass('visible');
           obj.fadeIn(200);
       }
    });
}
