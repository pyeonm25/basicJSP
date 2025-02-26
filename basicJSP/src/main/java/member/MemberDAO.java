package member;

import java.util.ArrayList;

public class MemberDAO {

	private ArrayList<Member> list;
	private int log = -1;
	
	public MemberDAO() {
		list = new ArrayList<Member>();
		addDummyUser();
		//log = 1;
	}
	
	public int getLog() {
		return log;
	}
	public void setLog() {
		log = -1;
	}
	
	private void addDummyUser() {
		Member m1 = new Member("admin","admin","관리자",true);
		Member m2 = new Member("qwer","1111","홍길동",true);
		Member m3 = new Member("aaaa","2222","개똥이",true);
		Member m4 = new Member("abcd","3333","홍길순",false);
		Member m5 = new Member("test","4444","아이유",false);
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		System.out.println("[데이터 로드 완료]");
	}
	
	public int getListSize() {
		return list.size();
	}
	
	public Member getOneMember(int idx) {
		return list.get(idx);
	}
	
	public boolean isExistId(String id) {
	
		return list.stream().anyMatch(member -> member.getId().equals(id));
	}
	
	public Member getLoginMember() {
		return list.get(log);
	}
	
	public boolean isMatchPW(String password) {
		if(log == -1) return false;
		Member m = list.get(log);
		return m.getPw().equals(password);
	}
	
	public void updateAMember(String name, String gender) {
		Member m = list.get(log);
		list.set(log, new Member(m.getId(),m.getPw(),name,gender));
		
	}
	
	public void insertAMember(String id, String pw, String name , String gender) {
		list.add( new Member(id, pw, name ,gender));
		System.out.println("[회원가입 완료]");
	}
	
	public String getListAsTableData() {
		String data = "";
		
		
		for(int i =1 ; i < list.size();i+=1) {
			Member m = list.get(i);
			data+= String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
					m.getId(), m.getPw(), m.getName(), m.isGender()?"남성":"여성");
			
			data+="<td><button onClick='location.href=\""+"adminDeletePro.jsp?idx="+i+"\"' > 삭제 </button></td> </tr>";
			
		}
		
		return data;
	}
	
	public boolean isDeleteMember(int idx) {
		if(idx < 1 || idx>=list.size()) return false;
		list.remove(idx);
		return true;
	}
	
	public boolean isDeleteMember(String pw) {
		if(getLoginMember().getPw().equals(pw)) {
			list.remove(log);
			log = -1;
			return true;
		}
		
		return false;
	}
	
	public boolean isValidLogin(String id, String pw) {
		int idx =0;
		for(Member m : list) {
			if(m.getId().equals(id)&& m.getPw().equals(pw)) {
				log= idx;
				return true;
			}
			idx+=1;
		}
		
		return false;
	}
	
}
