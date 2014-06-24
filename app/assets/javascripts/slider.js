$(document).ready(function()
{
    $(".slider").each(function () // обрабатываем каждый слайдер
    {
        var obj = $(this);
        $(obj).prepend("<div class='nav'></div>");
        $(obj).append("<div class='left_navigation_button'></div>");
        $(obj).append("<div class='right_navigation_button'></div>");
        $(obj).find("li").each(function ()
        {
            $(obj).find(".nav").append("<span rel='"+$(this).index()+"'></span>"); // добавляем блок навигации
            $(this).addClass("slider"+$(this).index());
        });
        $(obj).find("span").first().addClass("on"); // делаем активным первый элемент меню
    });

    $(".left_navigation_button").click(function()
    {
        var current_slide = $(".slider .nav .on");
        var number_attr = parseInt(current_slide.attr("rel"), 10) - 1;
        if(number_attr < 0 )
        {
            $(".nav span:last").click();
        }
        else {
            $(".nav span[rel=" + number_attr + "]").click();
        }
    });
    $(".right_navigation_button").click(function()
    {
       var current_slide = $(".slider .nav .on");
       var number_attr = parseInt(current_slide.attr("rel"), 10) + 1;
        if(number_attr > 4)
        {
            $(".nav span:first").click();
        }
        else
        {
            $(".nav span[rel=" + number_attr + "]").click();
        }
    });

});
function sliderJS (obj, sl) // slider function
{
    var ul = $(sl).find("ul"); // находим блок
    var bl = $(sl).find("li.slider"+obj); // находим любой из элементов блока
    var step = $(bl).width(); // ширина объекта
    $(ul).animate({marginLeft: "-"+step*obj}, 500); // 500 это скорость перемотки
}

function navClick()
{

}

$(document).on("click", ".slider .nav span", function() // slider click navigate
{
    var sl = $(this).closest(".slider"); // находим, в каком блоке был клик
    $(sl).find("span").removeClass("on"); // убираем активный элемент
    $(this).addClass("on"); // делаем активным текущий
    var obj = $(this).attr("rel"); // узнаем его номер
    sliderJS(obj, sl); // слайдим
    return false;
});
x1