({
	packItem : function(component, event, helper) {
		var buttonClicked = event.getSource();
        //component.set("v.item.Packed__c", true);
        var a = component.get("v.item",true);
		 a.Packed__c = true;
		component.set("v.item",a);
        buttonClicked.set("v.disabled", true);
        console.log("Clicked a.id "+a.id + " set packed to "+ a.Packed__c);
	}
})