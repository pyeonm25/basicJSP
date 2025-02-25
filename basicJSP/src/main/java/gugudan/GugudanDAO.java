package gugudan;

import java.util.ArrayList;
import java.util.Random;


// 데이터를 조작하는애 (CURD)
public class GugudanDAO {
	private int score;
	private int cnt;
	
	private ArrayList<GugudanVO> quiz;
	
	public GugudanDAO() {
		quiz = new ArrayList();
		makeQuiz();
	}

	// 게임 생성 
	private void makeQuiz() {
		Random rd = new Random();
		
		for(int i =0; i < 5;i+=1) {
			GugudanVO vo = new GugudanVO(rd.nextInt(8)+2, rd.nextInt(9)+1);
			quiz.add(vo);
		}
		System.out.println(quiz);
		
	}
	
	public boolean isCorrectAnswer(String answer) {
		int num = Integer.parseInt(answer);
	    
		
		if(num == quiz.get(cnt++).getAnswer()) {
			score+=20;
			return true;
		}
	
		return false;
	}

	public GugudanVO getQuiz() {
		return quiz.get(cnt);
	}
	
	public int getCnt() {
		return cnt;
	}

	public int getScore() {
		return score;
	}
	
}
