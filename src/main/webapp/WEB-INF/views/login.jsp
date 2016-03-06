<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>豁然 - 生活的态度</title>
		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${ctx}/css/bootstrap.css" />
		<link rel="stylesheet" href="${ctx}/css/font-awesome.css" />
		<link rel="stylesheet" href="${ctx}/css/ace-fonts.css" />
		<link rel="stylesheet" href="${ctx}/css/ace.css" />
		<script src="${ctx }/plugins/jquery/jquery.min.js"></script>
		<script src="${ctx }/plugins/bootstrap/bootstrap.min.js"></script>
		<script src="${ctx }/plugins/bootstrap/bootstrap-validation.js"></script>
		<script src="${ctx }/scripts/login/login.js"></script>
		
	</head>
	<body class="login-layout light-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="space-30"></div>

							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green" style="display:none;"></i>
									<span class="grey" style="font-size:55px;">豁然</span>
									<span class="white" style="font-size:55px;padding-left:10px;">Huoran</span>
								</h1>
								<h4 class="blue" id="id-company-text">生活的态度</h4>
							</div>

							<div class="space"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green" style="display:none;"></i>
												登录信息
											</h4>

											<div class="space"></div>

											<form action="${ctx }/user/login" id="loginForm" class="form-horizontal">
												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="text" id="loginUserName" value="${loginUserName}"
													class="form-control" placeholder="邮箱/名字"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-user" style="display:none;"></i>
												</div>
												<div class="space-6"></div>

												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="password" id="loginPassword" value="${loginPassword}"
													class="form-control" placeholder="密码"
													check-type="required" required-message="" AutoComplete="Off"/>													<i class="ace-icon fa fa-lock" style="display:none;"></i>
												</div>

												<div class="space"></div>

												<div class="clearfix">
													<div class="inline">
														<input type="checkbox" id="remindMe" class="ace" />
														<label class="lbl grey" for="remindMe"> 请你记得我</label>
													</div>

													<button type="button" onclick="login()" class="width-35 pull-right btn btn-sm btn-primary">
														<i class="ace-icon fa fa-key" style="display:none;"></i>
														<span class="bigger-110">登录</span>
													</button>
												</div>

												<div class="space-4"></div>
											</form>

											<div class="social-or-login center" style="display:none;">
												<span class="bigger-110">Or Login Using</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center" style="display:none;">
												<a class="btn btn-primary">
													<i class="ace-icon fa fa-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="ace-icon fa fa-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="ace-icon fa fa-google-plus"></i>
												</a>
											</div>
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left" style="display:none;"></i>
													密码忘了
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
													先去注册
													<i class="ace-icon fa fa-arrow-right" style="display:none;"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key" style="display:none;"></i>
												找回密码
											</h4>

											<div class="space-6"></div>
											<p>
												我用这个邮箱注册的
											</p>

											<form id="forgotForm">
												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="email" id="forgotEmail" value="${forgotEmail}"
													class="form-control" placeholder="注册邮箱"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-envelope" style="display:none;"></i>
												</div>
												<div class="clearfix">
													<button type="button" onclick="forgot()" class="width-35 pull-right btn btn-sm btn-danger">
														<i class="ace-icon fa fa-lightbulb-o" style="display:none;"></i>
														<span class="bigger-110">发送</span>
													</button>
												</div>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												返回登录
												<i class="ace-icon fa fa-arrow-right" style="display:none;"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue" style="display:none;"></i>
												注册
											</h4>

											<div class="space-6"></div>

											<form id="registForm">
												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="email" id="registEmail" value="${registEmail}"
													class="form-control" placeholder="邮箱"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-envelope" style="display:none;"></i>
												</div>

												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="text" id="registUserName" value="${registUserName}"
													class="form-control" placeholder="名字"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-user" style="display:none;"></i>
												</div>

												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="password" id="registPassword" value="${registPassword}"
													class="form-control" placeholder="密码" onblur="passwordRepeat();"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-lock" style="display:none;"></i>
												</div>

												<div class="form-group" style="margin-left:auto; margin-right:auto;">
													<input type="password" id="registPasswordRepeat" value="${registPasswordRepeat}"
													class="form-control" placeholder="再次填写密码" onblur="passwordRepeat();"
													check-type="required" required-message="" AutoComplete="Off"/>
													<i class="ace-icon fa fa-retweet" style="display:none;"></i>
												</div>

												<div class="block">
													<input type="checkbox" id="iAgree" class="ace" />
													<label class="lbl grey" for="iAgree"> 我同意</label>
													<a href="#">豁然er的三观</a>
												</div>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="ace-icon fa fa-refresh" style="display:none;"></i>
														<span class="bigger-110">重写</span>
													</button>

													<button type="button" onclick="regist()" class="width-65 pull-right btn btn-sm btn-success">
														<span class="bigger-110">注册</span>
														<i class="ace-icon fa fa-arrow-right icon-on-right" style="display:none;"></i>
													</button>
												</div>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left" style="display:none;"></i>
												返回登录
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->
	</body>
</html>