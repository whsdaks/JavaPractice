package firstTime;

import java.util.Scanner;

public class Exam2 {
	public static int Compare(int a,int b,int c) {
		int max = a>b?a:b;
		return max>c?max:c;
	}
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("������һ������");
		int a = s.nextInt();
		System.out.println("��������һ������");
		int b = s.nextInt();
		System.out.println("��������һ������");
		int c = s.nextInt();
		System.out.println(Compare(a,b,c)+"��ֵ���");
	}
}
