class People2{            //����People2��
	protected String name;      //name
	protected int age;           //age
	
	public  People2(){}             //�޲ι��췽��
	public People2(String nmae,int age){      //���������Ĺ��췽��
		this.name=name;
		this.age=age;
	}
	
	public void introduceMyself(){            //����һ��introduceMyself()����
		System.out.println("----------");
		System.out.println("�ҵ����֣�" +name);
		System.out.println("�ҵ����䣺"+age);
	}
}

class Student2 extends People2{                   //Student2�̳�People2
	   private     String stuNo;                      //����Student2������ stuNo
	    private    int java;                          //����Student2������ java
	public  Student2(String name,int age,String stuNo,int java){     //�ĸ������Ĺ��췽�����Ѽ̳����ԵĶ���ʼ����
		this.name=name;
		this.age=age;
		this.stuNo=stuNo;
                this.java=java;
	}
	
	public void introduceMyself(){               //����
		super.introduceMyself();
		System.out.println("�ҵ�ѧ���ǣ�"+stuNo);
		System.out.println("�ҵ�java���Գɼ��ǣ�"+java);
	}
}



public class Test1 {
  public static void main(String[] ages){
	Student2 s1=new Student2("С��",21,"001",90);
	s1.introduceMyself();
  }
}
