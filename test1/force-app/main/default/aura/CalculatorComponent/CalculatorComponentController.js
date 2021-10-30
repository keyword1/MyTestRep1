({
	myAction : function(component, event, helper) {
        var a = component.get("v.fNumber");
		var b = component.get("v.sNumber");
		var sum = parseInt(a)+parseInt(b);
       component.set("v.result", sum);
	}
})