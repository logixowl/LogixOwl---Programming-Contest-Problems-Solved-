import java.util.Scanner;

public class howmanyevens{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int size = Integer.parseInt(scanner.nextLine());
        String[] sarr = scanner.nextLine().trim().split(" ");

        int total = 0;
        for (String s : sarr) {
            int num = Integer.parseInt(s);
            if ( num %2 == 0){
                total++;
            }
        }

        System.out.println(total);

        scanner.close();
    }
}