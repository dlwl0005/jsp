package chap08;

public class Car {
	private String name;
	private int speed;
	
	//stop이라는 프로퍼티가 생긴다
	public boolean isStop() {
		return speed == 0;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
}
