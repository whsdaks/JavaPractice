package firstTime;

import java.util.Scanner;

public class Exam5 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int a,b,c,temp;int[] num = new int[3];
		System.out.print("�������һ������:");
		a = s.nextInt();
		System.out.print("������ڶ�������:");
		b = s.nextInt();
		System.out.print("���������������:");
		c = s.nextInt();
		num[0] = a; num[1] = b; num[2] = c;
		temp = num[0];
		for(int i=0;i<num.length-1;i++) {
			if(num[i]<num[i+1]) {
				temp = num[i];
				num[i] = num[i+1];
				num[i+1] = temp;
			}
		}
		System.out.print("�Ӵ�С��˳����:");
		for(int i=0;i<num.length;i++) {
			System.out.print(num[i]+" ");
		}
	}
	
}
