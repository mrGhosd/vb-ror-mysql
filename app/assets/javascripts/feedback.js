$(document).ready(function()
{
    $(".admin-delete-feedback").click(function()
    {
        deleteFeedback($(this));
    });
});

function deleteFeedback(button)
{
    feedback_id = button.parent().prevAll('.user_id').text();
    table_row = button.closest('tr');
   $.ajax({
       type: 'post',
       method: 'delete',
       url: '/feedbacks/'+feedback_id,
       success: function()
       {
           table_row.fadeOut('slow');
       }
   });
}