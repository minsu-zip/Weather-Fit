//현재 위치를 받아와 openWeather APi를 사용하여 현재 위치를 넣어주고
//위치에 해당하는 실시간 날씨 정보를 받아오는 js


var API_KEY = "bf33cd622a6f84f143c300c0757e43d3";


askForCoords();
// default 서울

// select_city(place);


var weather = document.getElementById("#weather");

//현재 위치 받아오기
function askForCoords() {
	navigator.geolocation.getCurrentPosition(handleGeoSucces, handleGeoError);
}

function handleGeoSucces(position) {
	const latitude = position.coords.latitude;
	const longitude = position.coords.longitude;
	const coordsObj = {
		latitude,
		longitude
	};
	//saveCoords(coordsObj);
	getWeather(latitude, longitude);
}

function handleGeoError(position) {
	alert('Cant get your position.');
}


function getWeather(lat, lon) {
	fetch(
		`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric`
	)
		.then(function(response) {
			return response.json();
		})
		.then(function(json) {
			const temparature = json.main.temp;  //온도
			const place = json.name;   // 사용자 위치
 			$("#weather").html( `현재온도: ${temparature}  장소: ${place}`);
			select_city(place);
		});
}


function select_city(city) {

	// api Current Weather Data
	//var ApiUrl = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=bf33cd622a6f84f143c300c0757e43d3";


	fetch(
		"https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=bf33cd622a6f84f143c300c0757e43d3"
	)
		.then(function(response) {
			return response.json();
		})
		.then(function(json) {
			Live_Weather(json);
		});

	fetch(
		"https://api.openweathermap.org/data/2.5/forecast?q=" + city + ",KR&appid=bf33cd622a6f84f143c300c0757e43d3"
	)
		.then(function(response) {
			return response.json();
		})
		.then(function(json) {
			Day_Weather(json);
		});
}


// 현재 도시의 실시간 날씨 스크립트
function Live_Weather(data) {
	var imaURL = "https://openweathermap.org/img/w/" + data.weather[0].icon + ".png";

	$("#Weather-main").append(data.name);
	$('#Weather-img').attr("src", imaURL);

	$("#city_weather").append(data.weather[0].main);
	$("#Temperature").append(Math.floor(data.main.temp - 273.15));
	$("#wind").append(data.wind.speed + "m/s");
	$("#cloud").append(data.clouds.all + "%");
		
}


// 오늘날짜 구하기
let today = new Date();
var year = today.getFullYear(); // 년도
var month = ("0" + (today.getMonth() + 1)).slice(-2); //월

//일
var date;
if (parseInt(today.getDate() / 10) == 0) {
	date = '0' + today.getDate();
}
else {
	date = today.getDate();
}


// 현재 도시의 5day / 3hour 정보
function Day_Weather(data) {
	console.log(data);
    var wf = "";
    wf += "<h5>오늘" + data.city.name + "의 3시간 간격 날씨 간격입니다. </h2>";

    var wf2 = "";
    wf2 += "<h5>" + data.city.name + "도시의 5일간 날씨 정보입니다. </h2>";

    $.each(data.list, function (index, val) {

        var str = val.dt_txt.split(" ");

        // 현재 날짜에 대한 3시간 간격 날씨
        if (str[0] == (year + '-' + month + '-' + date)) {
    
            wf += str[1];
            wf += "<img src='https://openweathermap.org/img/w/" + val.weather[0].icon + ".png'>";
            wf += ((val.main.temp) - 273.15).toFixed(1) + "'c ";
            wf += val.wind.speed + ("m/s <br>");
        }

        var str2 = val.dt_txt.split(" ");

        // 5일간의 날씨 중 12:00만 보고 싶을때 
        if (str[1] == "12:00:00") {
            wf2 += str[0];
            wf2 += "<img src='https://openweathermap.org/img/w/" + val.weather[0].icon + ".png'>";
            wf2 += ((val.main.temp) - 273.15).toFixed(1) + "'c ";
            wf2 += val.wind.speed + ("m/s <br>");
        }
    });

	console.log(wf);
    $("#demo").html(wf);
    $("#demo2").html(wf2);
}