$(document).ready(function()
{
    $(".submit_login").on('click', function(e)
    {
        $(".auth_error_field").fadeOut().remove();
        $(".auth_login, .auth_pass").removeClass("error_input");
        e.preventDefault();
        login = $(".auth_login").val();
        password = $(".auth_pass").val();
        $.ajax({
            type: 'POST',
            url: "/login",
            data: {login: login, password: password},
            dataType: 'json',
            success: function()
            {
                window.location.href = "/";
            },
            error: function(json)
            {
                showErrorWindow(json.responseText);
            }
        });

    });
});

function showErrorWindow(text)
{
    $(".auth_login, .auth_pass").addClass("error_input");
    error_popup = $("<div class='auth_error_field'></div>");
    error_popup.append("<p>"+text+"</p>");
    error_popup.prependTo(".authorization").hide().fadeIn();
}