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

function specialQuestion(val)
{
    console.log(val);
    var save_block;
    switch(parseInt(val, 10))
    {
        case 1:
            save_block = ".form_kursant";
            break;
        case 2:
            save_block = ".form_contract";
            break;
        case 3:
            save_block = ".form_officer";
            break;
    }
    console.log($(save_block));
    $(save_block).addClass('active_form');
}

$(document).ready(function()
{
    specialQuestion($('.step_1 .hidden_role').val());
    $(".reg_form_controll a").click(function(){
        changeFocusPage($(this));
    });
});