var counter = 1;
var idCounter = 1;
var limit = 10;

function addInput(divName) {
    if (counter == limit) {
        alert("Możesz dodać maksymalnie " + limit + " elementów");
    }
    else {
        var container = document.getElementById(divName);
        //var quantity_container = document.getElementById(divQuantityName);

        var deleteBtnContainer = document.createElement("div");
        deleteBtnContainer.className = "col-md-1 componentRow";
        deleteBtnContainer.id = "deleteBtnContainer" + idCounter;

        var nameContainer = document.createElement("div");
        nameContainer.className = "col-md-8 componentRow";
        nameContainer.id = "nameContainer" + idCounter;

        var qntContainer = document.createElement("div");
        qntContainer.className = "col-md-3 componentRow";
        qntContainer.id = "qntContainer" + idCounter;

        var deleteBtn = document.createElement("button");
        deleteBtn.className = "btn btn-sm btn-danger";
        deleteBtn.innerHTML = "usuń";
        deleteBtn.type = "button";
        deleteBtn.id = idCounter;
        deleteBtn.onclick = function() {
            deleteInput(this.id);
        };


        var itemNameInput = document.createElement('input');
        itemNameInput.type = "text";
        itemNameInput.placeholder = "nazwa";
        itemNameInput.className = "form-control";
        itemNameInput.name = "components[]";
        itemNameInput.id = "componentname" + idCounter;
        itemNameInput.required = true;

        var itemQuantityInput = document.createElement('input');
        itemQuantityInput.type = "number";
        itemQuantityInput.placeholder = "ilość";
        itemQuantityInput.className = "form-control";
        itemQuantityInput.name = "componentsQuantity[]";
        itemQuantityInput.id = "componentQuantity" + idCounter;
        itemQuantityInput.required = true;


        deleteBtnContainer.appendChild(deleteBtn);
        nameContainer.appendChild(itemNameInput);
        qntContainer.appendChild(itemQuantityInput);

        container.appendChild(deleteBtnContainer);
        container.appendChild(nameContainer);
        container.appendChild(qntContainer);


        counter++;
        idCounter++;
    }
}

function deleteInput(id) {
    var btn =  document.getElementById("deleteBtnContainer" + id).remove();
    var name = document.getElementById("nameContainer" + id).remove();
    var qnt =  document.getElementById("qntContainer" + id).remove();

    counter--;
}