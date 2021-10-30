({
	myFunction : function(component, event, helper) {
		var eventObj = component.getEvent("cmpEvent");
        eventObj.setParams({"resultVar": component.get("v.selectedVar")});
        eventObj.fire();
	}
})