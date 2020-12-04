create table dress(
	dressid varchar(20) not null,
	title varchar(50),
	description varchar(50),
	image varchar(50),
	primary key(dressid)
);

insert into dress values("D1000","14��C","�񰡿��� 14���� ��︮�� ��Ÿ���Դϴ�.","I1000.jpg");
insert into dress values("D1001","19��C","���� �帰 19���� ��︮�� ��Ÿ���Դϴ�.","I1001.jpg");
insert into dress values("D1002","21��C","���� �帰 21���� ��︮�� ��Ÿ���Դϴ�.","I1002.jpg");
insert into dress values("D1003","27��C �̻�","������ �߿����� �Ǵٽ� �׸������� ����. �ÿ����� �󸶳� �������� ���� ���� �� �ƴ���?","I1003.jpg");
insert into dress values("D1004","23��C~26��C","�¾ƿ�! ���Ȱ� �ݹ����� ������ �µ��Դϴ�.","I1004.jpg");
insert into dress values("D1005","20��C~22��C","������ ���� ������ �Ծ ���� ��������!","I1005.jpg");
insert into dress values("D1006","6��C~9��C","���� ���Ϸ� �������� ���� �������� ��Ʈ�� �Ծ ������� ���� ���.","I1006.jpg");
insert into dress values("D1007","~5��C ����","���� ��� �߿�!������ �� ���� ��ŭ ����������.","I1007.jpg");


select * from dress;

delete from dress where dressid="D1000";