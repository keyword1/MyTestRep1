trigger leadTriggerTest1 on Lead (after insert, before update) {
    switch on trigger.operationType{
        when AFTER_INSERT{
            LeadTriggerHandler.afterInsertHandler();
        }
    }
}