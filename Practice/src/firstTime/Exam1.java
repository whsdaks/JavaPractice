package firstTime;

import java.util.Scanner;

public class Exam1 {
	public static double Compare(double a,double b) {
		return a<b?a:b;
	}
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("������һ��С��");
		double a = s.nextDouble();
		System.out.println("��������һ��С��");
		double b = s.nextDouble();
		System.out.println(Compare(a,b)+"��ֵ��С");
	}
}
