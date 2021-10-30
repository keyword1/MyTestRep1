public class ContactTriggerHandler {
/*
    public static void afterInsertContactHandler(list<Contact> conList){
        list<Id> accIds = new list<Id>();
            for(Contact con : conList){
                if(string.isNotBlank(con.AccountId)){
                    accIds.add(con.AccountId);
                }
            }
            
            list<AggregateResult> aggList = [select AccountId, count(Id)cons from Contact where IsActive__c=true 
                                             and AccountId in : accIds group by AccountId ];
            list<Account> accList = new list<Account>();
            for(AggregateResult agg : aggList){
                Account ac = new Account(Id = string.valueOf(agg.get('AccountId')), Active_Contacts__c=string.valueOf(agg.get('cons')));
                accList.add(ac);
            }
            update accList;
    }
    public static void afterUpdateContactHandler(List<Contact> conList, Map<Id, Contact> conMap){
         list<Id> accIds = new list<Id>();
            for(Contact con : conList){
                if(string.isNotBlank(con.AccountId) && con.IsActive__c != conMap.get(con.Id).IsActive__c){
                    accIds.add(con.AccountId);
                }else if(string.isNotBlank(con.AccountId) && con.AccountId != conMap.get(con.Id).AccountId){
                    accIds.add(con.AccountId);
                    accIds.add(conMap.get(con.Id).AccountId);
                }
            }
            
            list<AggregateResult> aggList = [select AccountId, count(Id)cons from Contact where IsActive__c=true 
                                             and AccountId in : accIds group by AccountId];
            list<Account> accList = new list<Account>();
            for(AggregateResult agg : aggList){
                Account ac = new Account(Id=string.valueOf(agg.get('AccountId')), Active_Contacts__c=string.valueOf(agg.get('cons')));
                accList.add(ac);
            }
            update accList;
    }
    public static void afterDeleteContactHandler(list<Contact> conList){
        list<Id> accIds = new list<Id>();
            for(Contact con : conList){
                if(string.isNotBlank(con.AccountId)){
                    accIds.add(con.AccountId);
                }
            }
            list<AggregateResult> aggResult = [select AccountId, count(Id)cons from Contact where IsActive__c = true and
                                              AccountId in : accIds group by AccountId];
            list<Account> accList = new list<Account>();
            for(AggregateResult agg : aggResult){
                Account ac = new Account(Id=string.valueOf(agg.get('AccountId')), Active_Contacts__c = string.valueOf(agg.get('cons')));
                accList.add(ac);
            }
            update accList;
    }
*/
}