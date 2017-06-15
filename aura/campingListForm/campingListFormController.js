({
    submitForm: function(component, event, helper) {
        // If we pass error checking, do some real work
        if(helper.validateItemForm(component)){
            // Create the new expense
            var newItem = component.get("v.newItem");
            helper.createItem(component, newItem);
            console.log("#### SUCCESS:  item created :) : " + JSON.stringify(newItem));
        }else{
          console.log("#### ERROR :Enable to create item: " + JSON.stringify(newItem));
        }
    }
})