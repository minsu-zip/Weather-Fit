package dao;

import java.util.ArrayList;

import dto.Dress;

public class DressRepository {
	private ArrayList<Dress> listOfDress = new ArrayList<Dress>();
	
	private static DressRepository instance = new DressRepository(); 
	
	public static DressRepository getInstance() {
		return instance;
	}
	
	public void addDress(Dress dress) {
		listOfDress.add(dress);
	}
	
	
	public DressRepository () {
		Dress dress = new Dress("D1000", "14도"); 
		dress.setDescription("비가오는 14도에 어울리는 스타일입니다."); 
		dress.setImage("I1000.jpg");
		
		Dress dress1 = new Dress("D1001", "19°C"); 
		dress1.setDescription("날이 흐린 19도에 어울리는 스타일입니다."); 
		dress1.setImage("I1001.jpg");
		
		Dress dress2 = new Dress("D1002", "21°C"); 
		dress2.setDescription("날이 흐린 21도에 어울리는 스타일입니다."); 
		dress2.setImage("I1002.jpg");
		
		Dress dress3 = new Dress("D1003", "27°C 이상"); 
		dress3.setDescription("날씨가 추워지니 또다시 그리워지는 여름. 올여름이 얼마나 더웠는지 벌써 잊은 건 아니죠?"); 
		dress3.setImage("I1003.jpg");
		
		Dress dress4 = new Dress("D1004", "23°C~26°C"); 
		dress4.setDescription("맞아요! 반팔과 반바지가 적합한 온도입니다."); 
		dress4.setImage("I1004.jpg");
		
		Dress dress5 = new Dress("D1005", "20°C~22°C"); 
		dress5.setDescription("셔츠나 얇은 긴팔을 입어도 좋을 날씨에요!"); 
		dress5.setImage("I1005.jpg");
		
		Dress dress6 = new Dress("D1006", "6°C~9°C"); 
		dress6.setDescription("아직 영하로 내려가지 않은 날씨지만\r\n" + 
				"코트를 입어도 어색하지 않은 기온."); 
		dress6.setImage("I1006.jpg");
		
		Dress dress7 = new Dress("D1007", "~5°C 이하"); 
		dress7.setDescription("으악 춥다 추워!\r\n" + 
				"껴입을 수 있을 만큼 껴입으세요."); 
		dress7.setImage("I1007.jpg");
		
		listOfDress.add(dress6);
		listOfDress.add(dress7);
		listOfDress.add(dress3);
		listOfDress.add(dress4);
		listOfDress.add(dress5);
		listOfDress.add(dress); 
		listOfDress.add(dress1);
		listOfDress.add(dress2);
	}
	
	public ArrayList<Dress> getAllProducts() {
		return listOfDress;
	}
	
	
	//선택한 item이 무엇인지 찾아줌
	public Dress getDressById(String dressId) {
		Dress dressById = null;
		
		for(int i=0; i<listOfDress.size(); i++) {
			Dress dress = listOfDress.get(i);
			if(dress != null && dress.getDressId() != null && 
					dress.getDressId().equals(dressId)) {
				dressById = dress;
			}
		}
		return dressById;
	}
}
