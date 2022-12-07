package dao;
import java.util.ArrayList;

import dto.User;

public class UserRepository {

	public ArrayList<User>listOfUsers=new ArrayList<User>();	
	private static UserRepository instance=new UserRepository();
	
	public static UserRepository getInstance() {
		return instance;
	}
	public void addUser(User user) {
		listOfUsers.add(user);
	}
	
	public UserRepository() {
		User user1=new User("T1","카를로 안첼로티","감독");
		user1.setOld(63);
		user1.setNumber(0);
		user1.setCountry("이탈리아");
		user1.setFilename("T1.png");
		
		User user2=new User("T2","다비데 안첼로티","수석 코치");	
		user2.setOld(33);
		user2.setNumber(0);
		user2.setCountry("이탈리아");
		user2.setFilename("T2.png");
		
		User user3=new User("T3","안토니오 핀투스","체력 코치");
		user3.setOld(60);
		user3.setNumber(0);
		user3.setCountry("이탈리아");
		user3.setFilename("T3.png");
		
		User user4=new User("T4","프란체스코 마우리","기술 보조 코치");
		user4.setOld(34);
		user4.setNumber(0);
		user4.setCountry("이탈리아");
		user4.setFilename("T4.png");
		
		User user5=new User("T5","루이스 요피스","골키퍼 코치");
		user5.setOld(58);
		user5.setNumber(0);
		user5.setCountry("스페인");
		user5.setFilename("T5.png");
		
		User user6=new User("T6","티보 쿠르투아","GK");
		user6.setOld(30);
		user6.setNumber(1);
		user6.setCountry("벨기에");
		user6.setFilename("T6.png");
		
		User user7=new User("T7","다니엘 카르바할","DF");
		user7.setOld(30);
		user7.setNumber(2);
		user7.setCountry("스페인");
		user7.setFilename("T7.png");
		
		User user8=new User("T8","에데르 밀리탕","DF");
		user8.setOld(24);
		user8.setNumber(3);
		user8.setCountry("브라질");
		user8.setFilename("T8.png");
		
		User user9=new User("T9","데이비드 알라바","DF");
		user9.setOld(30);
		user9.setNumber(4);
		user9.setCountry("오스트리아");
		user9.setFilename("T9.png");
		
		User user10=new User("T10","나초 페르난데스","DF");
		user10.setOld(32);
		user10.setNumber(6);
		user10.setCountry("스페인");
		user10.setFilename("T10.png");
		
		User user11=new User("T11","에덴 아자르","FW");
		user11.setOld(31);
		user11.setNumber(7);
		user11.setCountry("벨기에");
		user11.setFilename("T11.png");
		
		User user12=new User("T12","토니 크로스","MF");
		user12.setOld(32);
		user12.setNumber(8);
		user12.setCountry("독일");
		user12.setFilename("T12.png");
		
		User user13=new User("T13","카림 벤제마","FW");
		user13.setOld(34);
		user13.setNumber(9);
		user13.setCountry("프랑스");
		user13.setFilename("T13.png");
		
		User user14=new User("T14","루카 모드리치","MF");
		user14.setOld(37);
		user14.setNumber(10);
		user14.setCountry("크로아티아");
		user14.setFilename("T14.png");
		
		User user15=new User("T15","페데리코 발베르데","MF");
		user15.setOld(24);
		user15.setNumber(15);
		user15.setCountry("우루과이");
		user15.setFilename("T15.png");
		
		User user16=new User("T16","페를랑 멘디","DF");
		user16.setOld(27);
		user16.setNumber(23);
		user16.setCountry("프랑스");
		user16.setFilename("T16.png");
		
		User user17=new User("T17","비니시우스 주니오르","FW");
		user17.setOld(22);
		user17.setNumber(20);
		user17.setCountry("브라질");
		user17.setFilename("T17.png");
		
		User user18=new User("T18","호드리구","FW");
		user18.setOld(21);
		user18.setNumber(21);
		user18.setCountry("브라질");
		user18.setFilename("T18.png");
		
		User user19=new User("T19","안토니오 뤼디거","DF");
		user19.setOld(29);
		user19.setNumber(22);
		user19.setCountry("독일");
		user19.setFilename("T19.png");
		
		listOfUsers.add(user1);
		listOfUsers.add(user2);
		listOfUsers.add(user3);
		listOfUsers.add(user4);
		listOfUsers.add(user5);
		listOfUsers.add(user6);
		listOfUsers.add(user7);
		listOfUsers.add(user8);
		listOfUsers.add(user9);
		listOfUsers.add(user10);
		listOfUsers.add(user11);
		listOfUsers.add(user12);
		listOfUsers.add(user13);
		listOfUsers.add(user14);
		listOfUsers.add(user15);
		listOfUsers.add(user16);
		listOfUsers.add(user17);
		listOfUsers.add(user18);
		listOfUsers.add(user19);
	}
	
	public ArrayList<User> getAllUsers(){
		return listOfUsers;
	}
	
	public User getUserById(String userId) {
		User userById=null;
		
		for(int i=0;i<listOfUsers.size();i++) {
			User user=listOfUsers.get(i);
			if(user!=null&&user.getUserId()!=null&&
					user.getUserId().equals(userId)) {
				userById=user;
				break;
			}	
		}
		return userById;
	}
}
