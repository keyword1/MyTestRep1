public class AccountController {
    
    Public static List<Account> insertRecords(List<Account> accounts){
        insert accounts;
        return accounts;
    }
    Public static Account insertRecord(Account account){
        insert account;
        return account;
        
    }
    public static Account updateRecord(Account account){
        return null;
    }
    public static List<Account> getAllRecords(){
        List<Account> acc = [SELECT Name, Phone, Rating FROM Account];
        return acc;
    }
    public static void printAllRecords(){
        for(Account acc:getAllRecords()){
            system.debug('AC Name: '+acc.Name+' AC Phone: '+acc.Phone+' AC Rating: '+acc.Rating);
        }
    }

}