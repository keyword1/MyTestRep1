trigger testContactTrigger on Contact (after insert, after update) {
    map<Id, Id> accIds = new map<Id, Id>();
    for(Contact c : trigger.new){
        accIds.put(c.AccountId, c.AccountId);
    }
    list<Id> accIdList = accIds.Values();
    
    
}