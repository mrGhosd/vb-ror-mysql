popupWindow = function(form)
{
    form.find("input.popup-available").each(function()
    {
        $(".popup-main").remove();
        var popup = $("<div class='popup-main'></div>");


        $(this).focusin(function(){
            classes_list = $(this).attr("class");
            arr_classes = classes_list.split(" ");
            popupFindData(arr_classes[1], popup);
            popup.insertAfter($(this)).hide().fadeIn('fast');
        })
            .focusout(function()
            {
                $(".popup-main").fadeOut('fast');
            })
            .on('keyup, keydown', function()
            {
                return false;
            });
        ;
    });
}

popupFindData = function(className, popup)
{
   $(".popup-main>ul").remove();
   var cache = [];
   var list = $("<ul></ul>");
   popup.append(list);
   console.log("cached length"+ " " + cache.length);
       $.ajax({
           type: 'GET',
           url: '/users/user_nested_info',
           data: { class_name: className },
           dataType: 'json',
           success: function (data) {
               $.each(data, function (index, value) {
                   list.append("<li data-field-id='"+this.id+"' >" + this.value + "</li>");
                   cache.push(this.value);
               });
               popup.find("li").on('mouseenter',function()
               {
                   $(this).addClass("current");
               })
                   .on('mouseleave', function()
                   {
                       $(this).removeClass('current');
                   })
                   .on('click', function()
                   {
                       text = $(this).text();
                       field_id = $(this).data("field-id");
                       console.log(text);
                       var closest_popup = $(this).closest('.popup-main');
                       closest_popup.prev('.popup-available').val(text);
                       closest_popup.next('.popup-hidden-field').val(field_id);
                   });
           }
       });


}

initRegPopups = function()
{
   $("#registration .datepicker").datepicker({dateFormat: "dd.mm.yy", changeMonth:true, changeYear:true});
   popupWindow($("#edit_user_form, #roles_percent_form,#registration #new_user"));
};