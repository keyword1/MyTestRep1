trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {
    
    switch on trigger.operationType{
        when AFTER_INSERT{
            //ContactTriggerHandler.afterInsertContactHandler(trigger.new);
        }
        when AFTER_UPDATE{
          //ContactTriggerHandler.afterUpdateContactHandler(trigger.new, trigger.oldMap);
        }
        when AFTER_DELETE{
            //ContactTriggerHandler.afterDeleteContactHandler(trigger.old);
        }
    }
}