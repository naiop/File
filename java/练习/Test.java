class Employee{
  String numb;
  String name;
  int xinshui;
  String bumen;
  public Employee(String numb){
  	this.numb=numb;
  	this.name="无名氏";
  	this.xinshui=0;
  	this.bumen="未定"; 	
  }
  public Employee(String numb,String name){
  	this.numb=numb;
  	this.name=name;
  	this.xinshui=1000;
  	this.bumen="后勤"; 
  }
     
  public Employee(String numb,String name,int xinshui,String bumen){ 
    this.numb=numb;
  	this.name=name;
  	this.xinshui=xinshui;
  	this.bumen=bumen; 
  }
  public Employee(){
  	
  }
  
  
 public void display(){
 	System.out.println("员工号:"+numb+ "员工姓名:"+name+"薪水:"+xinshui+ "部门:"+bumen);
 }
}


public class Test{
	public static void main(String[] args){
		Employee e1=new Employee("01");
		Employee e2=new Employee("02","张三");
	    Employee e3=new Employee("03","李四",2000,"人力部");
	    Employee e4=new Employee();
		e1.display();
		e2.display();
		e3.display();
		e4.display();
	}

}