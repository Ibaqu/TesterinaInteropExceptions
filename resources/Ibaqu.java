public class Ibaqu {
    
    public static void main(String[] args) {
        
    }

    public static void divideInt() {
        System.out.println("~ [Ibaqu] Divide Int called");
        divide(0);
    }

    public static int divide(int i) {
        System.out.println("~ [Ibaqu] Divide called. Dividing by Zero");
        return 5/i;
    }







    public static void call() {
        System.out.println("~ [Ibaqu] call called. Throwning exception");
        throw new NullPointerException();
    }





    public static void addInt() {
        System.out.println("~ [Ibaqu] Add Int called");
        int a = Aquib.add(4, 6);
        
        
        System.out.println("Ans : " + a);
    }

    public static int returnAddInt() {
        System.out.println("~ [Ibaqu] Return Add Int called");
        int a = Aquib.add(1, 6);
        
        
        
        return a;
    }
    
}