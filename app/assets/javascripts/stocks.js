$(document).ready(function(){
    $(".stock-destroy").click(function()
    {
        var stock_row = $(this).parents("tr");
        $.ajax({
            url: '/stocks/'+stock_row.attr("stock_id")+'/destroy',
            type: 'POST',
            data: {},
            success: function(result)
            {
                $(stock_row).fadeOut(200);
            }
        });
    });

    $(".stock-show").click(function(){
        var button = $(this);
        var stock_row = $(this).parents("tr");
        $.ajax({
            url: '/stocks/'+stock_row.attr("stock_id")+'/stock_switch',
            type: 'POST',
            data: {id: stock_row.attr("stock_id")},
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