window.onload = function(){
if(localStorage.getItem("flag"))
{
var firstname = document.getElementById("Firstname").innerHTML=localStorage.getItem("Firstname");
var lastname = document.getElementById("Lastname").innerHTML=localStorage.getItem("Lastname");
var milo = document.getElementById("Milo").innerHTML=localStorage.getItem("Milo");
var password = document.getElementById("Password").innerHTML=localStorage.getItem("Password");
var birthday = document.getElementById("Birthday").innerHTML=localStorage.getItem("Birthday");
var country = document.getElementById("Country").innerHTML=localStorage.getItem("Country");
var partsBirthday = birthday.split("-");
var day = partsBirthday[0];
var month = partsBirthday[1]; 
var d = new Date();
var currentDate = d.getDate(); 
var currentMonth = d.getMonth(); 
var countCurrentDay = currentDate + (currentMonth+1)*30; 
month= ~~month; //Преобразования типов
day= ~~day;
var countDayForBirth = day + month*30; 
document.writeln("Hello:"+firstname);
var answer;
    if (countCurrentDay <=countDayForBirth) 
{
    answer = countDayForBirth - countCurrentDay;
    document.write("<br> How many days left before the birthday:" + answer);
}
else
{
    answer = countDayForBirth - countCurrentDay;
    answer = answer*(-1);
	answer = answer - 365;
	answer = answer*(-1);
    document.write("<br> How many days left before the birthday:" + answer);
}
document.write("<br>lastname:"+lastname);
document.write("<br>email:"+milo);
document.write("<br>password:"+password);
document.write("<br>birthday:"+birthday);
document.write("<br>country:"+country);
}
}
	