({
	addTextFunction : function(component, event, helper) {
		var action = component.get("c.myMethod");
        action.setCallback(this, function(data){
            component.set("v.addText", data.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    
    getRecordsApex : function(component, event, helper){
        var action = component.get("c.accList");
        action.setParams({myId : component.get("v.recordId")});
        action.setCallback(this, function(data){
            component.set("v.accountList", data.getReturnValue());
        });
        $A.enqueueAction(action);
        
        var action2 = component.get("c.conList");
        action2.setParams({myId : component.get("v.recordId")});
        action2.setCallback(this, function(data){
            component.set("v.conList", data.getReturnValue());
        });
        $A.enqueueAction(action2);
        
        var action3 = component.get("c.oppoList");
        action3.setParams({myId:component.get("v.recordId")});
        action3.setCallback(this, function(data){
            component.set("v.oppoList", data.getReturnValue());            
        });
        $A.enqueueAction(action3);
    },
    
    
})