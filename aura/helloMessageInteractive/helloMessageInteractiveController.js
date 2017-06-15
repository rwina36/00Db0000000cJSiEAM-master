({
    handleClick: function(component, event, helper) {
        //var btnClicked = event.getSource();         // the button
        //var btnMessage = btnClicked.get("v.label"); // the button's label
        //component.set("v.message", btnMessage);     // update our message
		//console.log("handleClick: Message: " + btnMessage);
		//console.log("My object" + JSON.stringify(yourObject)) //for object debuging
        component.set("v.message", event.getSource().get("v.label"));
    }
})