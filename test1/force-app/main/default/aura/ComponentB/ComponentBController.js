({
	bMethod : function(component, event, helper) {
		var message = event.getParam("message");
        component.set("v.bVariable1", message);
	}
})