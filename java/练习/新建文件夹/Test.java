class Employee{
  String numb;
  String name;
  int xinshui;
  String bumen;
  public Employee(String numb){
  	this.numb=numb;
  	this.name="������";
  	this.xinshui=0;
  	this.bumen="δ��"; 	
  }
  public Employee(String numb,String name){
  	this.numb=numb;
  	this.name=name;
  	this.xinshui=1000;
  	this.bumen="����"; 
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
 	System.out.println("Ա����:"+numb+ "Ա������:"+name+"нˮ:"+xinshui+ "����:"+bumen);
 }
}


public class Test{
	public static void main(String[] args){
		Employee e1=new Employee("01");
		Employee e2=new Employee("02","����");
	    Employee e3=new Employee("03","����",2000,"������");
	    Employee e4=new Employee();
		e1.display();
		e2.display();
		e3.display();
		e4.display();
	}

}