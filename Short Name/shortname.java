import java.util.Scanner;

public class shortname{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int tc = Integer.parseInt(scanner.nextLine().trim());
        for(int t =0 ; t<tc; t++){
            String words[]=scanner.nextLine().trim().toUpperCase().split(" ");
            int wordLen = words.length;
            String letters[] = new String[wordLen];
            for(int i=0;i<wordLen; i++){
                letters[i]=words[i].charAt(0)+"";
            }
            System.out.println(String.join(".", letters));
        }
        scanner.close();
    }
}