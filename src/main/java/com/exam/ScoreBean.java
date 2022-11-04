package com.exam;

public class ScoreBean {
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		int total = kor + eng + math;
		return total;
	}
	
	public float getAvg() {
		float avg =  (kor + eng + math)/3 ;
		return avg;
	}
	public String getGrade() {
		//float avg =  (kor + eng + math)/3;
		
		
		getAvg();
		String grade = "";
		if(getAvg() >= 90) {
			grade = "A";
		}
		else if(getAvg() >= 80) {
			grade = "B";
		}
		else if(getAvg() >= 70) {
			grade = "C";
		}
		return grade;
	}
	
	//Æò±Õ
	
	//ÇÐÁ¡
	

	
}

