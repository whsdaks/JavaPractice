package firstTime;

import java.util.Scanner;

public class Exam3 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int row,column;
		System.out.println("请输入行数");
		row = s.nextInt();
		System.out.println("请输入列数");
		column = s.nextInt();
		for(int i=0;i<row;i++) {
			for(int j=0;j<column;j++) {
				System.out.print("@");
			}
			System.out.println();
		}
	}
	
}
