package firstTime;

import java.util.Scanner;

public class Exam4 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("������һ��1-9֮�������:");
		int num = s.nextInt();
		System.out.println("�˷���");
		
		for(int i=1;i<=num;i++) {
			int j=1;
			while(j<=i) {
				System.out.print(j+"x"+i+"="+j*i+" ");
				j++;
			}
			System.out.println();

		}
	}
	
}
