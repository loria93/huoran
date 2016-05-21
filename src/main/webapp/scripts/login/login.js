//初始化事件
jQuery(function($) {
	//添加前台表单验证
	formValidation();
	//添加页面切换事件
	$(document).on('click', '.toolbar a[data-target]', function(e) {
		e.preventDefault();
		var target = $(this).data('target');
		$('.widget-box.visible').removeClass('visible');//隐藏其他
		$(target).addClass('visible');//显示目标
	});
});

//表单验证方法
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

//登录事件方法
function login() {
	if ($("#loginForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		$.post(basePath + "/user/test",function(data) {
		});
		return true;
	}
}

//忘记密码事件方法
function forgot() {
	if ($("#forgotForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		$.post(basePath + "/user/test",function(data) {
		});
		return true;
	}
}

//注册事件方法
function regist() {
	if ($("#registForm").valid('填写信息不完整。') == false) {
        return false;
    }
	else {
		if(repeatSame == false) {
			return false;
		}
		else {
			$.post(basePath + "/user/test",function(data) {
			});
			return true;
		}	
	}
}