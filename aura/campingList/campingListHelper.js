({
    createItem: function(component, item) {
        var action = component.get("c.saveItem");
        action.setParams({
            "item": item
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
				// all good, nothing to do.
                //var items = component.get("v.items");
                //items.push(response.getReturnValue());
                //component.set("v.items", items);
                //component.set("v.newItem", { 'sobjectType': 'Camping_Item__c'}); // rest newItem
            }
        });
        $A.enqueueAction(action);
    }
    
   
})