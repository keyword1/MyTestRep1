trigger LeadTrigger on Lead (before insert, before update, after insert) {
    
    for(Lead leObj:trigger.new){
        if(leObj.LeadSource == null){
            leObj.LeadSource = 'Other';
            
        }  
        
        //if((ledObj.Status == 'Closed - Converted' || ledObj.Status == 'Closed - Not Converted'))
    }
    
    if(trigger.isUpdate && trigger.isBefore){
        
        for(Lead ledObj : trigger.new){
            if((ledObj.Status == 'Closed - Converted' || ledObj.Status == 'Closed - Not Converted') && trigger.oldMap.get(ledObj.Id).Status == 'Open - Not Contacted'){
                ledObj.Status.addError('can not close directly from open status');
                
            }
        }
    }
    if(trigger.isInsert && trigger.isAfter){
        list<Task> taskList = new list<Task>();
        for(Lead ledObj:trigger.new){
            system.debug('checking task creation code 0');
            Task aTask = new Task();
            system.debug('checking task creation code 1');
            aTask.Subject = 'A new Lead record is being created';
            aTask.WhoId = ledObj.Id;
            aTask.OwnerId = ledObj.OwnerId;
            system.debug('checking task creation code 2');
            taskList.add(aTask);
          //insert aTask;  
            
        }
        insert taskList;
    }
    if(trigger.isInsert && trigger.isBefore){
        
        for(Lead ledObj:trigger.new){
            if(ledObj.Industry == null){
                ledObj.Industry.addError('can\'t be left blank');
            }
        }
    }
    
}