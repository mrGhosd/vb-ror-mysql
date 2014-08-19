$(document).ready(function()
{
    $(".percent-main tr").click(function()
    {
        showPercentActions($(this));
    });
});

function showPercentActions(row)
{
    $(".actionMenu").remove();
    percent_id = row.find(".percent_id").text();
    var actionMenu = $("<tr class='actionMenu'><td colspan='7'></td></tr>");
    editLink = $("<a class='btn btn-success' href='/percents/"+percent_id+"/edit'>Редактировать</a>");
    deleteLink = $("<a class='btn btn-danger delete-percent'>Удалить</a>");
    actionMenu.find("td").append(editLink).append(deleteLink);
    actionMenu.insertAfter(row);

    $(".delete-percent").click(function()
    {
        $.ajax({
            type:'POST',
            method: 'delete',
            url: '/percents/'+percent_id,
            success: function()
            {
                actionMenu.remove();
                row.fadeOut('slow');
            }
        });
    });
}