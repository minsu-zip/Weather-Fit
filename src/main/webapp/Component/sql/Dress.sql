create table dress(
	dressid varchar(20) not null,
	title varchar(50),
	description varchar(50),
	image varchar(50),
	primary key(dressid)
);

insert into dress values("D1000","14°C","비가오는 14도에 어울리는 스타일입니다.","I1000.jpg");
insert into dress values("D1001","19°C","날이 흐린 19도에 어울리는 스타일입니다.","I1001.jpg");
insert into dress values("D1002","21°C","날이 흐린 21도에 어울리는 스타일입니다.","I1002.jpg");
insert into dress values("D1003","27°C 이상","날씨가 추워지니 또다시 그리워지는 여름. 올여름이 얼마나 더웠는지 벌써 잊은 건 아니죠?","I1003.jpg");
insert into dress values("D1004","23°C~26°C","맞아요! 반팔과 반바지가 적합한 온도입니다.","I1004.jpg");
insert into dress values("D1005","20°C~22°C","셔츠나 얇은 긴팔을 입어도 좋을 날씨에요!","I1005.jpg");
insert into dress values("D1006","6°C~9°C","아직 영하로 내려가지 않은 날씨지만 코트를 입어도 어색하지 않은 기온.","I1006.jpg");
insert into dress values("D1007","~5°C 이하","으악 춥다 추워!껴입을 수 있을 만큼 껴입으세요.","I1007.jpg");


select * from dress;

delete from dress where dressid="D1000";