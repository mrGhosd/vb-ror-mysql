/**
* Created by vsokoltsov on 19.07.14.
*/
function changeMenuButton(number)
{
    $(".registration_page .btn-group.registration_navigation a").removeClass('active');
    $(".registration_page .btn-group.registration_navigation a."+number).addClass('active');
//    var arr_class = classes.split(" ");
//    var page = arr_class[1];
}
function changeFocusPage(object)
{
    var classes = object.attr('class');
    var arr_class = classes.split(" ");
    var page = arr_class[2];
    changeMenuButton(page);
    object.parent().parent().hide();

    $("div."+page).show();

}

$(document).ready(function()
{
    $(".reg_form_controll a").click(function(){
        changeFocusPage($(this));
    });
});