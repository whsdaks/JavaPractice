package firstTime;

import java.util.Scanner;

public class Exam7 {
	
	public static int rounding(double num) {
		num *= 10;
		int t = (int)num%10;
		num /= 10;
		if(t>=5) {num++;}
		return (int)num;
	}
	
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		double num;
		System.out.println("������һ��С��:");
		num = s.nextDouble();
		System.out.println(num+"�����������Ϊ"+rounding(num));
	}

}
