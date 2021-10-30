public class PIzzaClass {
	final integer ONE_SLICE = 8;
    final integer TWO_THREE = 7;
    final integer MORE_THAN_THREE=6;
    integer bill;
    public integer payTheBill(integer a){
        if(a==1){
            bill = a*ONE_SLICE;
        }else if(a>1 && a<4){
            bill = a*TWO_THREE;
		}else if(a>3){
            bill = a*MORE_THAN_THREE;      
        }
        return bill;
    }
}