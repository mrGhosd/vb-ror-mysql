/**
* Created by vsokoltsov on 19.07.14.
*/
visitedPages = [];
registrationView = function()
{
    initRegPopups();
    $(".registration_page .datepicker").datepicker({dateFormat: "dd.mm.yy", changeMonth:true, changeYear:true});
    specialQuestion($('.step_1 .hidden_role').val());
    $("#new_user .reg_form_controll a").bind('click', function(){
        changeFocusPage($(this));
    });
    $(".btn-group.registration_navigation a").click(function()
    {
        registrationNavigation($(this));
    });
};

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
        console.log(page);
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
          for(var i = 0; i < visitedPages.length; i++)
          {
              console.log("current_page " + visitedPages[i]);
              if(visitedPages[i] === val)
              {
                  console.log("ooops!");
              }
          }
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
function specialQuestion(val){
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
    $(save_block).addClass('active_form');
}

$(document).delegate(".registration_page #new_user", "submit", function(e){
    e.preventDefault();
    e.stopPropagation();
    e.stopImmediatePropagation();

    $("#new_user input").removeClass("error-field");
    $(".err-text").remove();
    var dataObj = JSON.stringify($(".registration_page #new_user").serialize());
    var default_url = $(".registration_page #new_user").attr("action");
    $.ajax({
        type: "POST",
        dataType: "json",
        url: default_url,
        data: dataObj,
        success: function(object){
            systemDialogWindow(object.notice, "/")
        },
        error: function(object) {
            var errors = JSON.parse(object.responseText);
            $.each(errors.errors, function (key, value) {
                $("#user_" + key).addClass("error-field");
                for (var i = 0; i < value.length; i++) {
                    $("#user_" + key).after("<div class='err-text'>" + value[i] + "</div>");
                }
            });
        $(".registration_navigation>a.step_1").click();
        }

    });
    return false;
});