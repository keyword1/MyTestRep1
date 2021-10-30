({
	myFunction : function(component, event, helper) {
		var sum = parseInt(component.get("v.fNumber")) + parseInt(component.get("v.sNumber"));
        var evenObj = $A.get("e.c:Eventevent");
        evenObj.setParams({"eventVar": sum});
        evenObj.fire();
	}
})