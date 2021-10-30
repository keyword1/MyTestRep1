public class MyApexClass {
	
   @AuraEnabled
    public static List<Account> createAcRecord(string name, string rating, string atype, string industry, string phone, string ownership){
        Account ac = new Account();
        ac.Name = name;
       ac.Rating = rating;
        ac.Type = atype;
        ac.Industry = industry;
        ac.Phone = phone;
        ac.Ownership = ownership;       
        insert ac;
        
        List<Account> accList = [select Name, Rating, Type, Industry, Phone, Ownership from Account  limit 10 offset 10];
        return accList;
        
    }
}