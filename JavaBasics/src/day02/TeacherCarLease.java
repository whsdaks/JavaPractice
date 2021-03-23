package car;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TeacherCarLease {
	static boolean firstLogin = true;//是否第一次登录
	static List<String> CarList = new ArrayList<String>();//现有车列表
	static List<String> rentCarList = new ArrayList<String>();//借出车列表
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		showBanner();
		
		if(login()) {
			while(true) {
				int choose = chooseMenu();
				
				if (choose == 1) {
					System.out.println("欢迎租车，祝您旅途平安！");
					rentCar();
					continue;
				}else if (choose == 2) {
					RerurnCar();
					System.out.println("还车成功，费用将自动扣除！");
					continue;
				}else if (choose == 0) {
					System.out.println("万水千山总是情，下次还来行不行~");
					break;
				}else{
					continue;
				}
			}
		}
	}
	
	public static void rentCar() {
		String[] cars = {"比亚迪汉-300","吉利星瑞-200","五菱凯捷-250","五菱宏光mini-100","比亚迪秦-180"};
		
		if(firstLogin) {
			firstLogin = false;
		for(int i=0; i<5; i++) {
			CarList.add(cars[i]);
			
		}
		}
		if(CarList.size()==0) {
			System.out.println("暂无车");
			return;
		}
		for(int i=0; i<CarList.size(); i++) {
		System.out.println("("+ (i+1) +")" + CarList.get(i));
		}
		System.out.println("请选择您要租的车型：");
		int carno = sc.nextInt();
		sc.nextLine();
		
		
		System.out.println("您需要租用多少天？");
		int days = sc.nextInt();
		sc.nextLine();
		
		String car = CarList.get(carno-1);
		String[] info = car.split("-");
		int price = Integer.parseInt(info[1]); //单日租金
		int total = price * days;  //交费总金额
		System.out.println("您选择的车型是"+info[0]+", 共需交费"+total+"元！");
		rentCarList.add(CarList.get(carno-1));
		CarList.remove(carno-1);
	}
	
	public static void RerurnCar() {
		if(rentCarList.size()!=0) {
		System.out.println("您已租用的车辆有：");}
		for(int i=0; i<rentCarList.size(); i++) {
			System.out.println("("+ (i+1) +")" + rentCarList.get(i));
			}
		if(rentCarList.size()==0) {
			System.out.println("您无需还车");
			return;
		}
		System.out.println("请选择您要还的车型：");
		int returnCar = sc.nextInt();
		sc.nextLine();
		CarList.add(rentCarList.get(returnCar-1));
		rentCarList.remove(returnCar-1);
	}
	
	public static int chooseMenu() {
		System.out.println("=================================");
		System.out.println("请选择功能： 1-租车     2-还车      0-退出");
		System.out.println("=================================");
		int choose = sc.nextInt();
		sc.nextLine();
		return choose;
	}
	
	public static void showBanner() {
		System.out.println("                              _.-=\"_-         _");
		System.out.println("                         _.-=\"   _-          | ||\"\"\"\"\"\"\"---._______     __..");
		System.out.println("             ___.===\"\"\"\"-.______-,,,,,,,,,,,,`-''----\" \"\"\"\"\"       \"\"\"\"\"  __'");
		System.out.println("      __.--\"\"     __        ,'                   o \\           __        [__|");
		System.out.println(" __-\"\"=======.--\"\"  \"\"--.=================================.--\"\"  \"\"--.=======:");
		System.out.println("]       [w] : /        \\ : |========================|    : /        \\ :  [w] :");
		System.out.println("V___________:|          |: |========================|    :|          |:   _-\"");
		System.out.println(" V__________: \\        / :_|=======================/_____: \\        / :__-\"");
		System.out.println(" -----------'  \"-____-\"  `-------------------------------'  \"-____-\"");
		System.out.println();
	}
	
	public static boolean login() {
		System.out.println("+=========================================================+");
		System.out.println("+                  欢迎使用小蝌蚪租车！请先登录！");
		System.out.println("+=========================================================+");
		
		int times = 0;
		while(times < 3) {
			System.out.println("请输入用户名：");
			String username = sc.nextLine();
			System.out.println("请输入密码：");
			String password = sc.nextLine();
			if(username.equals("keke") && password.equals("123456")) {
				System.out.println("登录成功");
				break;
			}else {
				System.out.println("用户名或密码错误");
			}
			times++;
		}
		
		if(times >= 3) {
			System.out.println("密码错误次数过多");
			return false;
		}else {
			return true;
		}
	}
}
