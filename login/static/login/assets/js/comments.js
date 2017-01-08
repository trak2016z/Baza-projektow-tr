function getCookie(name) {
    var cookieValue = null;
    if (document.cookie && document.cookie !== '') {
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = jQuery.trim(cookies[i]);
            // Does this cookie string begin with the name we want?
            if (cookie.substring(0, name.length + 1) === (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}

var csrftoken = getCookie('csrftoken');

$(document).ready(function () {
    $.post(commurl, {
            csrfmiddlewaretoken: csrftoken,
            project_id: proj_id
        },
    function (data, status) {
        $.each(data, function(k, v) {
            displayComment(v.comment_author, v.comment_text, v.comment_date)
        });
    });
});

function displayComment(author, text, date) {
    $("#comment-container").append("<div class='comment-container'><div class='comment-head'><div class='comment-author'><span class='glyphicon glyphicon-user' aria-hidden='true'></span>"+ author +"</div><div class='comment-date'><span class='glyphicon glyphicon-calendar' aria-hidden='true'></span>"+ date +"</div></div><div class='comment-text'>"+ text +"</div></div>");
}
