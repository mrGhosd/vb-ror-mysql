/**
* Created by vsokoltsov on 19.07.14.
*/
var visitedPages = [];
function changeMenuButton(number)
{
    $(".registration_page .btn-group.registration_navigation a").removeClass('active');
    $(".registration_page .btn-group.registration_navigation a."+number).addClass('active');
}
function changeFocusPage(object)
{
    if(object.hasClass("disable")){
        return false;
    } else {
        var classes = object.attr('class');
        var arr_class = classes.split(" ");
        var page = arr_class[1];


        changeMenuButton(page);
        object.parent().parent().hide();
        removeDisableNavigation(page);
        $("div." + page).show();
        setStepTitle(page);
        addVisitPage(page);
    }
}
function removeDisableNavigation(page)
{
    $(".registration_navigation a."+page).removeClass("disable");
}
function registrationNavigation(object)
{
    if(object.hasClass("disable")){
        return false;
    } else {
        var classes = object.attr('class');
        var current_class = $(".registration_navigation a.active").attr('class');

        var arr_class = classes.split(" ");
        var arr_current = current_class.split(" ");


        var page = arr_class[1];
        var current_page = arr_current[1];


        console.log("is this page was visited? " + checkVisitedPages(page));
        changeMenuButton(page);
        $("#new_user>div." + current_page).hide();
        $("#new_user>div." + page).show();
        setStepTitle(page);
        addVisitPage(page);
    }

}
function addVisitPage(val)
{
    if(visitedPages.length == 0)
    {
        visitedPages.push(val);
        return false;
    }
    else {
//        for(page in visitedPages)
//        {
//            console.log("the page is " + page);
//            visitedPages.push(val);
//        }
          for(var i = 0; i < visitedPages.length; i++)
          {
              console.log("current_page " + visitedPages[i]);
              if(visitedPages[i] === val)
              {
//                  visitedPages.push(val);
                  console.log("ooops!");
//                  return false;
              }
          }
//        $.each(visitedPages, function(item, i) {
//            console.log("in addVisitPage value of visitedPages is "+visitedPages);
//            console.log("val = " + val+", type is "+typeof val);
//            console.log("item = " + i +" type is "+typeof i);
//            if(i != val)
//            {
////                alert("item eq val");
//                console.log("val = " + val);
//                console.log("item = " + i);
//                visitedPages.push(val);
//                return false;
//            }
//            else {
//
//            }
//        });
    }
}
function checkVisitedPages(page)
{
    $.each(visitedPages, function(item, i)
    {
        if(item == page){
            return true;
        }else{
            return false;
        }
    });
}
function setStepTitle(step)
{
    $(".static_page_title .step_title").text("Шаг "+step.substr(-1));
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
    $(".datepicker").datepicker({dateFormat: "dd.mm.yy", changeMonth:true, changeYear:true});
    specialQuestion($('.step_1 .hidden_role').val());
    $(".reg_form_controll a").click(function(){
        changeFocusPage($(this));
        console.log(visitedPages);
    });
   $(".btn-group.registration_navigation a").click(function()
    {
        registrationNavigation($(this));
        console.log(visitedPages);
    });
});