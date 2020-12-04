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
		Dress dress = new Dress("D1000", "14��"); 
		dress.setDescription("�񰡿��� 14���� ��︮�� ��Ÿ���Դϴ�."); 
		dress.setImage("I1000.jpg");
		
		Dress dress1 = new Dress("D1001", "19��C"); 
		dress1.setDescription("���� �帰 19���� ��︮�� ��Ÿ���Դϴ�."); 
		dress1.setImage("I1001.jpg");
		
		Dress dress2 = new Dress("D1002", "21��C"); 
		dress2.setDescription("���� �帰 21���� ��︮�� ��Ÿ���Դϴ�."); 
		dress2.setImage("I1002.jpg");
		
		Dress dress3 = new Dress("D1003", "27��C �̻�"); 
		dress3.setDescription("������ �߿����� �Ǵٽ� �׸������� ����. �ÿ����� �󸶳� �������� ���� ���� �� �ƴ���?"); 
		dress3.setImage("I1003.jpg");
		
		Dress dress4 = new Dress("D1004", "23��C~26��C"); 
		dress4.setDescription("�¾ƿ�! ���Ȱ� �ݹ����� ������ �µ��Դϴ�."); 
		dress4.setImage("I1004.jpg");
		
		Dress dress5 = new Dress("D1005", "20��C~22��C"); 
		dress5.setDescription("������ ���� ������ �Ծ ���� ��������!"); 
		dress5.setImage("I1005.jpg");
		
		Dress dress6 = new Dress("D1006", "6��C~9��C"); 
		dress6.setDescription("���� ���Ϸ� �������� ���� ��������\r\n" + 
				"��Ʈ�� �Ծ ������� ���� ���."); 
		dress6.setImage("I1006.jpg");
		
		Dress dress7 = new Dress("D1007", "~5��C ����"); 
		dress7.setDescription("���� ��� �߿�!\r\n" + 
				"������ �� ���� ��ŭ ����������."); 
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
	
	
	//������ item�� �������� ã����
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
