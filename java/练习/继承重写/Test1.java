class People2{            //定义People2类
	protected String name;      //name
	protected int age;           //age
	
	public  People2(){}             //无参构造方法
	public People2(String nmae,int age){      //两个参数的构造方法
		this.name=name;
		this.age=age;
	}
	
	public void introduceMyself(){            //定义一个introduceMyself()方法
		System.out.println("----------");
		System.out.println("我的名字：" +name);
		System.out.println("我的年龄："+age);
	}
}

class Student2 extends People2{                   //Student2继承People2
	   private     String stuNo;                      //子类Student2的属性 stuNo
	    private    int java;                          //子类Student2的属性 java
	public  Student2(String name,int age,String stuNo,int java){     //四个参数的构造方法，把继承属性的都初始化了
		this.name=name;
		this.age=age;
		this.stuNo=stuNo;
                this.java=java;
	}
	
	public void introduceMyself(){               //方法
		super.introduceMyself();
		System.out.println("我的学号是："+stuNo);
		System.out.println("我的java语言成绩是："+java);
	}
}



public class Test1 {
  public static void main(String[] ages){
	Student2 s1=new Student2("小明",21,"001",90);
	s1.introduceMyself();
  }
}
