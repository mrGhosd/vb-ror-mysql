$(document).ready(function()
{
    $(".role-delete").on("click", function()
    {
        role_button = $(this).closest("tr");
        role_id = $(this).data("id");
        console.log(role_id);
        $.ajax({
            type: "POST",
            url: "/roles/"+role_id,
            method: "DELETE",
            success: function()
            {
                role_button.fadeOut("slow");
            }
        });
    });
});