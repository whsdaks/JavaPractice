package firstTime;

import java.util.Scanner;

public class Exam5 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int a,b,c,temp;int[] num = new int[3];
		System.out.print("请输入第一个整数:");
		a = s.nextInt();
		System.out.print("请输入第二个整数:");
		b = s.nextInt();
		System.out.print("请输入第三个整数:");
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
		System.out.print("从大到小的顺序是:");
		for(int i=0;i<num.length;i++) {
			System.out.print(num[i]+" ");
		}
	}
	
}
