public class LeadAsynchronous {

    @future
    public static void updateRecords(list<Id> recordsId){
        list<Lead> recordList = [select Id, LeadSource from Lead where Id IN: recordsId];
        for(Lead a : recordList){
            a.LeadSource = 'web';
        }
        update recordList;
    }
    
    @future
    public static void createRecords(){
        
    }
}