package firstTime;

import java.util.Scanner;

public class Exam3 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int row,column;
		System.out.println("����������");
		row = s.nextInt();
		System.out.println("����������");
		column = s.nextInt();
		for(int i=0;i<row;i++) {
			for(int j=0;j<column;j++) {
				System.out.print("@");
			}
			System.out.println();
		}
	}
	
}
