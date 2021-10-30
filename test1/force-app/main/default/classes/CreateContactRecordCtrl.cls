public class CreateContactRecordCtrl {

    @Auraenabled
    public static list<Contact> conList(string accountId){
        return [select Id, FirstName, LastName, Phone from Contact where AccountId =: accountId ];
    }
    @Auraenabled
    public static list<Account> accList(){
        
        return[select Id, Name, Rating, Phone from Account ];
    }
    
    
}