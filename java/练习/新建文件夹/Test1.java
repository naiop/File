class bank{
	String name;
	private float balance;
	

  	public bank(){
    	
  }
    public bank(String name,float balance){
    this.name=name;
    this.balance=balance;	
  }
  	
  	public void setName(String name){
  		this.name=name;
  	}
	public void setBalance(float balance){
  		this.balance=balance;
  	}
  	public String getName(){
  		return name;
  	}
  	public float getBalance(){
  		return balance;
  	}
  	public void display(){
 	System.out.println("�˻��û�"+name+"���"+balance);
 }
}


public class Test1{
	public static void main(String[] args){
		bank b1=new bank();
		bank b2=new bank("����",1000);
	
		b1.display();
		b2.display();
		b2.setName("����");
		b2.setBalance(2000);
	   	b2.display();
		
	}
	}