({
	myFunction : function(component, event, helper) {
		var action = component.get("c.createAcRecord");
        action.setParams({name:component.get("v.Name"), rating :component.find("aRating").get("v.value"), 
                          atype :component.find("Type").get("v.value"), industry:component.find("Industry").get("v.value"), 
                          phone:component.get("v.Phone"), ownership:component.find("Ownership").get("v.value")});
        action.setCallback(this, function(data){
           component.set("v.accountList", data.getReturnValue()) ;
            alert('this is js controller ' + component.get("v.Name") + ' and ' + component.find("aRating").get("v.value"));
        });
        $A.enqueueAction(action);
	}
})