public class ACompany {
    public list<ACustomer> cus = new list<ACustomer>();
    
    public void addCustomer(string name, string website, string email, string phone){
        Acustomer a = new Acustomer(name, website, email, phone);
            cus.add(a);
    }
    public void getCustomers(){
        for(ACustomer k : cus){
            system.debug('Name :' + k.name + ' website: ' + k.website + ' email: ' + k.email + ' Phone: ' + k.Phone);
        }
    }
    
    private class ACustomer{
        string name;
        string website;
        string email;
        string phone;
        Acustomer(string name, string website, string email, string phone){
            this.name = name;
            this.website = website;
            this.email = email;
            this.phone = phone;
        }
    }
}