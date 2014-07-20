/**
* Created by vsokoltsov on 19.07.14.
*/

function changeFocusPage(object)
{
    var classes = object.attr('class');
    var arr_class = classes.split(" ");
    var page = arr_class[2];
    object.parent().parent().hide();
    $("div."+page).show();

}

$(document).ready(function()
{
    $(".reg_form_controll a").click(function(){
        changeFocusPage($(this));
    });
});