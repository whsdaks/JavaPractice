package day01;

public class exam1 {
	public static void main(String[] args) {
		double[] arr = {10.4,-3,-6.2,1.2,-6.1,-19,-3.8,0.9,-4.5,5.5};
		int win=0,lose=0;
		for(int i=0;i<arr.length;i++)
		{
			if(arr[i]>0) 
				win++;
			else
				lose++;
		}
		System.out.println("赚钱的股票一共有："+win+"只");
		System.out.println("赔钱的股票一共有："+lose+"只");
	}
	
}
