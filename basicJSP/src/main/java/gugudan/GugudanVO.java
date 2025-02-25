package gugudan;

// 데이터를 저장하는애
public class GugudanVO {

	public GugudanVO(int num1, int num2) {
		super();
		this.num1 = num1;
		this.num2 = num2;
	}
	private int num1;
	private int num2;

	@Override
	public String toString() {
		return num1 + " X " + num2;
	}
	
	public int getAnswer() {
		
		System.out.println(num1*num2);
		return num1*num2;
	}
	
}
