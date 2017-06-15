({
    createItem: function(component, item) {
        var addItemEvent = component.getEvent("addItem");
        addItemEvent.setParams({ "item": item });
        addItemEvent.fire();
        component.set("v.newItem", { 'sobjectType': 'Camping_Item__c'});
    },
    
    validateItemForm: function(component) {
        
        // Simplistic error checking
        var validItem = true;
        
        // Name must not be blank
        var nameField = component.find("itemName");
        var itemName = nameField.get("v.value");
        if ($A.util.isEmpty(itemName)){
            validItem = false;
            nameField.set("v.errors", [{message:"Item name can't be blank."}]);
        }
        else {
            nameField.set("v.errors", null); 
        }
        
        // Quantity must not be blank
        var quantityField = component.find("itemQuantity");
        var itemQuantity = quantityField.get("v.value");
        if ($A.util.isEmpty(itemQuantity)){
            validItem = false;
            quantityField.set("v.errors", [{message:"Item Quantity can't be blank."}]);
        }
        else {
            quantityField.set("v.errors", null);
        }
        
        // Price must not be blank
        var priceField = component.find("itemPrice");
        var itemPrice = priceField.get("v.value");
        if ($A.util.isEmpty(itemPrice) || isNaN(itemPrice) || (itemPrice <= 0.0)){
            validItem = false;
            priceField.set("v.errors", [{message:"Item Price can't be blank."}]);
        }
        else {
            priceField.set("v.errors", null);
        }
        
        return(validItem);
    }
})