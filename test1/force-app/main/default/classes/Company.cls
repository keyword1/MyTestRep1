public class Company {
    
    public Company(){
        system.debug('Hello, BLANK');
    }
    public Company(string name){
        system.debug('Hello, ' + name);
    }
    public Company(string name, string age){
        system.debug('Hello, ' + name + ', your age: ' + age);
    }
    public Company(string name, integer marks){
        system.debug('Hello, ' + name + ', The marks you have scrored: ' + marks);
    }
}