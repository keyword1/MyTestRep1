({
	aMethod : function(component, event, helper) {
        var appEvent = $A.get("e.c:StandardEvent");
        appEvent.setParams({"message": "I am compA, sending an msg to compB"});
        appEvent.fire();
	}
})