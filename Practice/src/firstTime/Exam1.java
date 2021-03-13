package firstTime;

import java.util.Scanner;

public class Exam1 {
	public static double Compare(double a,double b) {
		return a<b?a:b;
	}
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("请输入一个小数");
		double a = s.nextDouble();
		System.out.println("请再输入一个小数");
		double b = s.nextDouble();
		System.out.println(Compare(a,b)+"的值最小");
	}
}
