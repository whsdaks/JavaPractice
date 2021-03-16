package day02;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class CarLease {

	static boolean checkLogin = false;
	public static void showBanner(){
		File banner = new File("G:\\lxy\\workspace\\JavaBasics\\bin\\day02\\banner.txt");
		try {
			FileReader read = new FileReader(banner);
			BufferedReader bRead = new BufferedReader(read);
			String line = bRead.readLine();
			while(line != null) {
				System.out.println(line);
				line = bRead.readLine();
			}
			bRead.close();
			read.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static boolean checkUser() {
		System.out.println("\n");
		System.out.println("============请先登录===========");
		System.out.println("\n");
		Scanner uname = new Scanner(System.in);
		Scanner pwd = new Scanner(System.in);
		int errTimes = 0;
		while(errTimes<3) {
			System.out.println("请输入用户名：");
			String username = uname.nextLine();
			System.out.println("请输入密码：");
			int password = pwd.nextInt();
			if(!username.equals("keke")||password != 123456) {
				errTimes++;
				System.out.println("用户名或密码错误,第"+errTimes+"次");
				if(errTimes==3) {
					System.out.println("密码错误次数过多");
					return false;
				}
			}else {
				System.out.println("登陆成功");
				return true;
			}
		}
		return false;
	}
	
	
	public static void showMenu() {
		if(checkLogin || checkUser()) {
			checkLogin = true;
			System.out.println("1-租车     2-还车      0-退出");
			Scanner s = new Scanner(System.in);
			System.out.println("请选择功能：");
			int num = s.nextInt();
			s.close();
			switch(num) {
			case 0:
				System.out.println("万水千山总是情，下次还来行不行~");
				return;
			case 1:
				System.out.println("欢迎租车，祝您旅途平安");
				showCar();
				break;
			case 2:
				System.out.println("还车成功，费用将自动扣除！");
				showMenu();
				break;
			default:
				showMenu();
				break;
			}
		}
	}
	
	public static void showCar() {
		String[] cars = {"比亚迪汉-300","吉利星瑞-200","五菱凯捷-250","五菱宏光mini-100","比亚迪秦-180"};
		for(int i=0;i<cars.length;i++) {
			System.out.println("("+(i+1)+")"+cars[i]);
		}
		Scanner s = new Scanner(System.in);
		System.out.println("请选择您要租的车型：");
		String carName = "";int price = 0;
		int type = s.nextInt();
		s.close();
		if(type>cars.length||type<1) {
			System.out.println("暂无该车型,请重新选择");
			showCar();
			
			return;
			}
		String cCar[];
		cCar = cars[type-1].split("-");
		carName = cCar[0];
		price = Integer.parseInt(cCar[1]);
		
//		switch(type) {
//			case 1:
//				carName = "比亚迪汉";
//				price = 300;
//				break;
//			case 2:
//				carName = "吉利星瑞";
//				price = 200;
//				break;
//			case 3:
//				carName = "五菱凯捷";
//				price = 250;
//				break;
//			case 4:
//				carName = "五菱宏光mini";
//				price = 100;
//				break;
//			case 5:
//				carName = "比亚迪秦";
//				price = 180;
//				break;
//			default:
//				System.out.println("暂无该车型");
//				showMenu();
//				break;
//		}
		System.out.println("您需要租用多少天？");
		int day = s.nextInt();
		System.out.println("您选择的车型是"+carName+"共需交费"+day*price+"元！");
		System.out.println("==============================");
		showMenu();
	}
	
	
	public static void main(String[] args) {
		showBanner();
		showMenu();
	}
	
}
