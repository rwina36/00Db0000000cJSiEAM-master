public class p2 {
  public static Integer var1 = 0;
  
  public static void methodA() {
    var1 = 1;
  }

  public static void methodB() {
    p1.MethodA();
  }
}