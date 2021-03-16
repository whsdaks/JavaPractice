package day01;

public class exam2 {
	public static void main(String[] args) {
		int arr[] = {0,0,0,0,0,1,1,1,1,1};
		/*
		 * 定义另一个数组left和right分别存放奇数偶数*/
//		int brr[] = new int[arr.length],left=0,right=arr.length-1;
//		for(int i=0;i<arr.length;i++) {
//			if(arr[i]%2==0) {
//				brr[right] = arr[i];
//				right--;
//			}
//			else {
//				brr[left] = arr[i];
//				left++;
//			}
//		}
		
		
		/*
		 * 冒泡排序直接在arr数组内排序*/
		int temp;
		for(int i=0;i<arr.length;i++) {
			for(int j=0;j<arr.length-1;j++) {
				if(arr[j]%2==0&&arr[j+1]%2==1) {
					temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
		}
		for(int i=0;i<arr.length;i++) {
			System.out.println(arr[i]);
		}
		
		
		
	}
	
}
