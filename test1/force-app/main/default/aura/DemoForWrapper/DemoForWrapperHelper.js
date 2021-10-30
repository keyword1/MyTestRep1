({
	helperMethod : function(component, event, helper) {
		var a = component.get("c.myName");
        var c ;
        a.setCallback(this, function(data){
                var state = data.getstate();      
            if(state == "SUCCESS"){
                var result = data.getReturnValue();
                
                c = result;
                component.set("v.aname", c);
            }
            
        });
		$A.enqueueAction(a);
	}
})