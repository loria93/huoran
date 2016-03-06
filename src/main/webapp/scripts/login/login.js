$(document.body).ready(function() {
	formValidation();
});

jQuery(function($) {
	$(document).on('click', '.toolbar a[data-target]', function(e) {
		e.preventDefault();
		var target = $(this).data('target');
		$('.widget-box.visible').removeClass('visible');//hide others
		$(target).addClass('visible');//show target
	});
});

var repeatSame = false;
function formValidation() {
    $("#registForm").validation(function(){
    	var password = $("#registPassword").val();
    	var passwordRepeat = $("#registPasswordRepeat").val();
    	if(password != passwordRepeat) {
    		$("#registPasswordRepeat").css({"border-color":"#F2A696"});
    		$("#registPasswordRepeat").css({"color":"#F2A696"});
    		repeatSame = false;
    	}
    	else {
    		$("#registPasswordRepeat").css({"border-color":"#9CC573"});
    		$("#registPasswordRepeat").css({"color":"#9CC573"});
    		repeatSame = true;
    	}
    },{reqmark:false});
    
    $("#loginForm").validation(function(){
    },{reqmark:false});
    
    $("#forgotForm").validation(function(){
    },{reqmark:false});
}



function login() {
	if ($("#loginForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		$.post(postPath+"/user/test",function(data) {
		});
		return true;
	}
}

function forgot() {
	if ($("#forgotForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		$.post(postPath+"/user/test",function(data) {
		});
		return true;
	}
}

function regist() {
	if ($("#registForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		if(repeatSame == false) {
			return false;
		}
		else {
			$.post(postPath+"/user/test",function(data) {
			});
			return true;
		}	
	}
}