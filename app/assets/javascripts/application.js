// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require_tree .

$.datepicker.formatDate('yy-mm-dd');
$(function() {
	$( "#split_event_date" ).datepicker();
});

$(function() {
	$( ".date_picker" ).datepicker({ 
		dateFormat: 'dd-mm-yy',
		changeMonth: true,
		changeYear: true,
		minDate: -6935, 
		maxDate: "+6M +1Y",
		yearRange: 'c-100:c+10'
	});
});


// From: http://www.emanueleferonato.com/2006/06/04/javascript-chronometerstopwatch/

var timercount = 0;
var timestart  = null;
 
function showtimer() {
	if(timercount) {
		clearTimeout(timercount);
		clockID = 0;
	}
	if(!timestart){
		timestart = new Date();
	}
	var timeend = new Date();
	var timedifference = timeend.getTime() - timestart.getTime();
	timeend.setTime(timedifference);
	var minutes_passed = timeend.getMinutes();
	if(minutes_passed < 10){
		minutes_passed = "0" + minutes_passed;
	}
	var seconds_passed = timeend.getSeconds();
	if(seconds_passed < 10){
		seconds_passed = "0" + seconds_passed;
	}
	document.timeform.timetextarea.value = minutes_passed + ":" + seconds_passed;
	timercount = setTimeout("showtimer()", 1000);
}
 
function sw_start(){
	if(!timercount){
	timestart   = new Date();
	document.timeform.timetextarea.value = "00:00";
	document.timeform.laptime.value = "";
	timercount  = setTimeout("showtimer()", 1000);
	}
	else{
	var timeend = new Date();
		var timedifference = timeend.getTime() - timestart.getTime();
		timeend.setTime(timedifference);
		var minutes_passed = timeend.getMinutes();
		if(minutes_passed < 10){
			minutes_passed = "0" + minutes_passed;
		}
		var seconds_passed = timeend.getSeconds();
		if(seconds_passed < 10){
			seconds_passed = "0" + seconds_passed;
		}
		var milliseconds_passed = timeend.getMilliseconds();
		if(milliseconds_passed < 10){
			milliseconds_passed = "00" + milliseconds_passed;
		}
		else if(milliseconds_passed < 100){
			milliseconds_passed = "0" + milliseconds_passed;
		}
		document.timeform.laptime.value = minutes_passed + ":" + seconds_passed + "." + milliseconds_passed;
	}
}
 
function Stop() {
	if(timercount) {
		clearTimeout(timercount);
		timercount  = 0;
		var timeend = new Date();
		var timedifference = timeend.getTime() - timestart.getTime();
		timeend.setTime(timedifference);
		var minutes_passed = timeend.getMinutes();
		if(minutes_passed < 10){
			minutes_passed = "0" + minutes_passed;
		}
		var seconds_passed = timeend.getSeconds();
		if(seconds_passed < 10){
			seconds_passed = "0" + seconds_passed;
		}
		var milliseconds_passed = timeend.getMilliseconds();
		if(milliseconds_passed < 10){
			milliseconds_passed = "00" + milliseconds_passed;
		}
		else if(milliseconds_passed < 100){
			milliseconds_passed = "0" + milliseconds_passed;
		}
		document.timeform.timetextarea.value = minutes_passed + ":" + seconds_passed + "." + milliseconds_passed;
	}
	timestart = null;
}
 
function Reset() {
	timestart = null;
	document.timeform.timetextarea.value = "00:00";
	document.timeform.laptime.value = "";
}