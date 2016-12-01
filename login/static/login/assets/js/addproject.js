var counter = 1;
var limit = 10;

function addInput(divName) {
    if (counter == limit) {
        alert("Możesz dodać maksymalnie " + limit + " elementów");
    }
    else {
        var container = document.getElementById(divName);
        var newInput = document.createElement('input');
        newInput.type = "text";
        newInput.className = "form-control input-separated";
        newInput.name = "components[]";
        container.appendChild(newInput);
        counter++;
    }
}