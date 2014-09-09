function showUserInfoPopup(button)
{
    $(".user_short_info").remove();
    var butt_arr = [];
    var user_id = button.find(".user_id").text();
    var adminUserPopup = $("<tr class='user_short_info "+user_id+"'></tr>");
    buttonWrapper = $("<td colspan='6' class='buttonWrapper'></td>");
    adminUserPopup.append(buttonWrapper);
    buttonShow = $("<a href='/users/"+user_id+"/show' class='btn btn-info show-user'>Кредиты/Вклады</a>");
    buttonEdit = $("<a class='btn btn-success edit-user'>Редактировать информацию</a>")
    buttonDelete= $("<a class='btn btn-danger delete-user'>Удалить пользователя</a>")
    butt_arr.push(buttonShow);
    butt_arr.push(buttonEdit);
    butt_arr.push(buttonDelete);
    console.log("button array " + butt_arr);
   $.each(butt_arr, function(index, value)
    {
        buttonWrapper.append(value);
    });
    adminUserPopup.insertAfter(button);
    $(".edit-user").click(function()
    {
        buildAdminDialog($(this));
    });
    $(".delete-user").click(function()
    {
        deleteUser($(this));
    });
}
$(document).ready(function()
{
    $(".user-information tr").click(function()
    {
        showUserInfoPopup($(this));
    });

});
function deleteUser(button)
{
    popup_classes = button.closest('.user_short_info').attr("class");
    user_id = popup_classes.split(" ");
    console.log(user_id[1]);
    $.ajax({
        url: '/users',
        type: 'DELETE',
        data: {id: user_id[1], method: 'delete'},
        success: function(html)
        {
            button.closest(".user_short_info").prev('tr:first').fadeOut('slow');
        }

    });
}

function buildAdminDialog(link)
{

    popup_classes = link.closest('.user_short_info').attr("class");
    user_id = popup_classes.split(" ");
    console.log(user_id[1]);
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
        data: {user_id: user_id[1]},
        type: 'GET',
        success: function(html)
        {
            dialog.html(html);
            $("#cabinet_tabs").tabs({selected: 0});
        }

    });

}