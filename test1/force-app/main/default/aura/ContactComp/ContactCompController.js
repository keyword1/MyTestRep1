({
	
    loadAccs : function(component, event, helper){
        
       var action = component.get('c.accList');
        action.setCallback(this, function(data){
            var contactarrayList = [];
            var a = data.getReturnValue();
            for(var i=0; i<a.length; i++){
                var item = {
                    "value" : a[i].Id,
                    "label" : a[i].Name
                };
                contactarrayList.push(item);
            }
            component.set('v.conList', contactarrayList );
        }, 'SUCCESS');
        $A.enqueueAction(action);
    },
    callContact : function(component, event, helper){
        component.set('v.columns', [
            {label: 'Name', fieldName:'FirstName', type:'text'},
            {label: 'Last Name', fieldName:'lasttName', type:'text'},
        ]);
     var action = component.get('c.conList');
        action.setParams({'accountId' : component.get('v.display_option')});
        action.setCallback(this, function(data){
            component.set('v.childList', data.getReturnValue());
        }, 'SUCCESS');
        $A.enqueueAction(action);
    }
})