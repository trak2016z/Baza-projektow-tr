function editorBtnClick(button) {
    var cursorPosition = $('#project-text').prop("selectionStart");
    var v = $('#project-text').val();
    var textBefore = v.substring(0,  cursorPosition);
    var textAfter  = v.substring(cursorPosition, v.length);

    switch (button) {
        case 0:                 // naglowek
                $('#project-text').focus();
                $('#project-text').val(textBefore + "<naglowek></naglowek>" + textAfter);
            break;
        case 1:                 // obrazek
                $('#project-text').focus();
                $('#project-text').val(textBefore + "<obrazek></obrazek>" + textAfter);
            break;
    }
}