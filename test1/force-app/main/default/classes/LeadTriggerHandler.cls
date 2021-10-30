public class LeadTriggerHandler {
	public static boolean isExecuted = false;
    public static void afterInsertHandler(){
        if(LeadTriggerHandler.isExecuted == false){
            LeadTriggerHandler.isExecuted = true;
			Lead le = new Lead(LastName='recursive1', Status='Open-Not Contacted', Company='Recurse Company', Industry='Finance');
			insert le;
            
        }
        
    }
}