# JSP_Weather_Fit
호스팅 주소 :  https://weatherfit.herokuapp.com/Component/Weather.jsp   
(서버 초기접속시 다수의 시간 소요)   
(호스팅 서버의 문제로 다국어처리, 업로드, 관리자 페이지등 문제가 다수 발생-로컬 실행시 정상작동)   
-서버 호스팅을 위해 maven project로 작업

## 프로젝트 계획이유
> JSP를 이용하여 서버를 구축함으로서 프론트엔드와 서버와의 통신에 대한 이해와,
서버의 동작 과정과 데이터베이스, API 등을 학습하기 위해 프로젝트를 구성하게 되었습니다.
“Weahter_Fit”사이트를 통해 날씨 정보와 날씨에 어울리는 옷차림 정보를 통해 어떤 옷을 입을까에 대한 불편함을 조금 덜어보고자 제작하게 되었습니다.
---------------------------------------

### [프로젝트 개발 동기 및 목적, 필요성]
1.개요
+  현재 위치한 지역의 날씨 정보와 옷차림 정보 제공 사이트
+  이용자들이 옷차림 정보 습득 및 공유 가능

2. 추진배경
+ 일교차가 큰 계절인 경우 옷차림의 어려움
+ 현재 위치한 지역의 날씨 정보 파악에 유용함
+ 사람들과 옷차림에 대해 공유가능
+ 마음에 드는 옷차림을 통해 패션 감각 향상

3. 프로젝트 목표
+ 계절에 제약 없이 사이트 이용가능
 * 계절과 기온에 따라 여러 옷차림에 대한 정보 습득 가능
+ 옷차림에 대한 정보 공유
 * 이용자들의 여러 옷차림의 정보 공유를 통해 시장성 확대

### [사용스택]

  Html, Css, BootStrap, Js, Jsp, Apache, MySql 등..
  
### [그외 사용한 정보들]
  OpenWeather Api, 스크립트 태그, 디렉티브 태그, 액션 태그, 내장 객체, 폼 태그<br/>
  파일 업로드, 유효성 검사, 다국어 처리, 시큐리티, 예외처리<br/>
  세션, 쿠키, 데이터베이스와 JSP 연동
  
 --------------------
 
 ## Weather_Fit Project 기능 설명

#### [일반 사용자]
1. Weather 페이지로 접속가능(자신이 위치한 도시의 실시간 날씨정보확인가능)<br/>
상세 정보와 그외의 기능을 사용하기 위해선 회원가입&로그인 필수 

#### [회원 사용자]
1. 일반사용자와 동일
2. 로그인시 MoreWeather페이지에서 자신이 위치한 도시의 날씨 정보에 대해 상세히 볼 수 있다.
3. Dress 페이지에서 날씨별 코디를 볼 수 있다.
4. DressUpload페이지에서 일반사용자도 좋은 정보가 있다면 Dress를 작성해서 올릴 수 있다.
5. 마음에 Dress가 있다면 찜 버튼을 통해 Cart 페이지에서 원하는 제품만 보아 볼 수 있다.
6. 로그아웃 이용시 세션이 종료된다.

#### [관리자]
1. 위의 사항과 동일
2. Admin페이지에서 admin계정으로 로그인시 회원 정보들을 한 눈에 볼 수 있다.

 --------------------
 
 ## Weather_Fit file 소개
 * dao, dto 폴더<br/>
 Dress.java : Dress정보들을 기입하기 위한 java파일 <br/>
 DressRepository.java : Dress 객체를 생성 및 저장 <br/>
 
 * bundle 폴더<br/>
   다국어 처리를 위한 파일들
  
 * Component<br/>
  AddCart.jsp :  찜목록을 처리하는 페이지 해당 item 정보를 받아와 리스트에 넣어준다.   <br/>
  Cart.jsp : 찜목록 페이지  AddCart에서 기입한 정보를 받아와 화면에 구성해준다.   <br/>
  Dbconn.jsp : DB연결을 위한 페이지 <br/>
  Dress.jsp :  Dress 정보들을 보여주는 페이지  <br/>
  DressUpload.jsp :  Dress를 추가하는 페이지  <br/>
  exceptionNoPage.jsp :  web.xml에서 적용한  시큐리티. 요청한 페이지가 없을때 나타나는 페이지 <br/>
  Footer.jsp :  Footer페이지  <br/>
  Logout.jsp :  로그아웃 페이지 세션 종료  <br/>
  Menu.jsp :  Component_Menubar  <br/>
  MoreWeather.jsp :  현재 위치한 도시날씨를 상세히 보여줌  <br/>
  ProcessAddProduct.jsp :  Dress추가 역할을 하는 페이지 사용자가 입력한 값을 받아와서 저장해줌  <br/>
  removeCart.jsp :  찜목록에있는 항목을 삭제해주는 페이지  <br/>
  Sign.jsp :  로그인,회원가입 페이지  <br/>
  Signin_db.jsp :  DB에 있는 값을 가져와 로그인 판단 여부를 수행시켜주는 페이지  <br/>
  Signup_db.jsp :  사용자가 입력한 폼을 DB에 넣고 회원가입을 시켜주는 페이지  <br/>
  Weather.jsp :  HomePage : 실시간 현재 위치의 날씨를 간략히 알려줌   <br/>
 
 * Component/Admin
  Admin.jsp :  Admin계정 로그인시 회원정보들을 볼 수 있다.  <br/>
  Login_failed.jsp :  Admin 로그인에 실패할 경우 에러메시지를 반환해주는 페이지  <br/>
  Login.jsp :  web.xml에서 적용한 시큐리티 처리에 의한 로그인페이지  Admin.jsp실행시 로그인 과정 거침  <br/>
  Menu.jsp : Admin_Menubar <br/>
  
 * JS
  clock.js : 현재 접속한 시간을 알려주는 js  <br/>
  alidation.js : 회원가입시 정규표현식으로 사용자의 입력을 검증 <br/>
  weather.js : 현재 위치를 받아와 openWeather APi를 사용하여 현재 위치를 넣어주고 위치에 해당하는 실시간 날씨 정보를 받아오는 js <br/>
  
 --------------------
 ## 페이지 구조
 <div>
  <img src="https://user-images.githubusercontent.com/52727782/101235423-dc974080-370b-11eb-8bfa-e0d238fae371.png">
 </div>
 
 ## 화면 구성
 <div>
    <p>Weather : 메인 홈페이지</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100700933-fec65100-33e1-11eb-987b-57006f0905fa.PNG">
 </div>
 <div>
    <p>SignUp : 회원가입</br>
    <img width="60%" height="50%" src="https://user-images.githubusercontent.com/52727782/100701772-9f694080-33e3-11eb-8603-155b5552118a.PNG">
 </div> 
  <div>
    <p>SignIp : 로그인</br>
    <img width="60%" height="50%" src="https://user-images.githubusercontent.com/52727782/100701775-a09a6d80-33e3-11eb-9e10-357915e7db11.PNG">
 </div>
  <div>
    <p>MoreWeather : 날씨 상세보기</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701175-6ed4d700-33e2-11eb-9d98-203adb48b709.PNG">
 </div>
 <div>
    <p>Dress : 코디 정보</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701351-d2f79b00-33e2-11eb-9667-c5941858d3cf.PNG">
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701405-fcb0c200-33e2-11eb-8243-c43589b4e5cb.PNG">
 </div>
 <div>
    <p>Upload : 코디 정보 올리기</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701589-4bf6f280-33e3-11eb-98e4-4afaae674ada.PNG">
 </div> 
 <div>
    <p> Cart : 찜 목록</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701685-7a74cd80-33e3-11eb-9cf9-8335850bcb46.PNG">
 </div> 
 <div>
    <p> Admin_Login : Admin 로그인페이지</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100701841-c45db380-33e3-11eb-99fd-10ba1d1fabb6.PNG">
 </div> 
 <div>
    <p> Admin : Admin페이지</br>
    <img width="60%" height="60%" src="https://user-images.githubusercontent.com/52727782/100705388-74ceb600-33ea-11eb-840d-d7f6d91bd1b3.PNG">
 </div>  
 
