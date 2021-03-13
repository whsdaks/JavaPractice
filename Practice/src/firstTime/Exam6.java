package firstTime;

import java.util.Scanner;

public class Exam6 {
	
	public static double abs(double num) {
		if(num<0) {
			num = -num;
		}
		return num;
	}
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		double num;
		System.out.println("请输入一个小数:");
		num = s.nextDouble();
		System.out.println(num+"的绝对值为"+abs(num));
	}
	
}
