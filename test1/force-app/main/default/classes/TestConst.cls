public class TestConst {
    public TestConst(){
        system.debug('this is a blank constructor');
    }
     public TestConst(string name){
         this();
        system.debug('this is a named constructor' + name);
    }
    public TestConst(string name, string name2){        
        this(name);
        system.debug('this is TWO named constructor ' + name + ' and ' + name2);                
    }
}