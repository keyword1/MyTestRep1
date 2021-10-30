public class TestSyncs {
    public void activateMethods(){
        brushTeeth();
        eatBreakfast();
        dotheLaundry();
        studySalesForce();
    }
    public static void brushTeeth(){
        system.debug('brushing teeth');
    }
    public static void eatBreakfast(){
        system.debug('eating breakfast');
    }
    @future
    public static void dotheLaundry(){
        system.debug('doing the laundry');
    }
    @future
    public static void studySalesForce(){
        system.debug('studying salesforce');
    }
}