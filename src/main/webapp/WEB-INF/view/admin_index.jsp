<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<meta name="keywords" content="纵横国漫网">
    <meta name="description" content="纵横国漫网致力于为广大国漫爱好者提供一个交流分享平台">
    <title>纵横国漫网后台管理页面</title>
    <link rel="stylesheet" href="<c:url value='/resources/layuicms/layui/css/layui.css'></c:url>">
    <link rel="stylesheet" href="<c:url value='/resources/layuicms/css/index.css'></c:url>">
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main mag0">
				<a href="/guomanwang/common/index" class="logo">纵横国漫网</a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="seraph hideMenu icon-caidan"></a>
				<!-- 顶级菜单 -->
				<ul class="layui-nav mobileTopLevelMenus" mobile>
					<li class="layui-nav-item" data-menu="contentManagement">
						<a href="javascript:;"><i class="seraph icon-caidan"></i><cite>纵横国漫网</cite></a>
						<dl class="layui-nav-child">
							<dd class="layui-this" data-menu="contentManagement"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a></dd>
							<dd data-menu="memberCenter"><a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>用户中心</cite></a></dd>
							<dd data-menu="systemeSttings"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a></dd>
							<dd data-menu="seraphApi"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a></dd>
						</dl>
					</li>
				</ul>
				<ul class="layui-nav topLevelMenus" pc>
					<li class="layui-nav-item layui-this" data-menu="contentManagement">
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a>
					</li>
					<li class="layui-nav-item" data-menu="memberCenter" pc>
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe770;">&#xe770;</i><cite>用户中心</cite></a>
					</li>
					<li class="layui-nav-item" data-menu="systemeSttings" pc>
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a>
					</li>
					<!-- <li class="layui-nav-item" data-menu="seraphApi" pc>
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a>
					</li> -->
				</ul>
			    <!-- 顶部右侧菜单 -->
			    <ul class="layui-nav top_menu">
					<li class="layui-nav-item" id="userInfo">
						<a href="javascript:;"><img src="<c:url value='${user.getHeadurl()}'></c:url>" class="layui-nav-img userAvatar" width="35" height="35"><cite class="adminName">${user.getUsername()}</cite></a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;" data-url="/guomanwang/user/user_home" target="_blank"><i class="seraph icon-ziliao" data-icon="icon-ziliao"></i><cite>个人中心</cite></a></dd>
							<dd><a href="javascript:;" data-url="page/user/changePwd.html"><i class="seraph icon-xiugai" data-icon="icon-xiugai"></i><cite>修改密码</cite></a></dd>
							<!--<dd><a href="javascript:;" class="showNotice"><i class="layui-icon">&#xe645;</i><cite>系统公告</cite><span class="layui-badge-dot"></span></a></dd>-->
							<dd pc><a href="javascript:;" class="functionSetting"><i class="layui-icon">&#xe620;</i><cite>功能设定</cite><span class="layui-badge-dot"></span></a></dd>
							<dd pc><a href="javascript:;" class="changeSkin"><i class="layui-icon">&#xe61b;</i><cite>更换皮肤</cite></a></dd>
							<dd><a href="/guomanwang/user/logout/" class="signOut"><i class="seraph icon-tuichu"></i><cite>退出</cite></a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像" ><img src="<c:url value='${user.getHeadurl()}'></c:url>" class="userAvatar"></a>
				<p>你好！<span class="userName">${user.getUsername()}</span>, 欢迎登录</p>
			</div>
			<!-- 搜索 -->
			<div class="layui-form component">
				<select name="search" id="search" lay-search lay-filter="searchPage">
					<option value="">搜索页面或功能</option>
					<option value="1">资讯</option>
					<option value="2">番剧</option>
				</select>
				<i class="layui-icon">&#xe615;</i>
			</div>
			<div class="navBar layui-side-scroll" id="navBar">
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this">
						<a href="javascript:;" data-url="main_index"><i class="layui-icon" data-icon=""></i><cite>后台首页</cite></a>
							<dd><a href="javascript:;" data-url="page/user/userInfo.html"><i class="seraph icon-ziliao" data-icon="icon-ziliao"></i><cite>个人资料</cite></a></dd>
							<dd><a href="javascript:;" data-url="page/user/changePwd.html"><i class="seraph icon-xiugai" data-icon="icon-xiugai"></i><cite>修改密码</cite></a></dd>
							<dd><a href="javascript:;" class="showNotice"><i class="layui-icon">&#xe645;</i><cite>系统公告</cite><span class="layui-badge-dot"></span></a></dd>
							<dd pc><a href="javascript:;" class="functionSetting"><i class="layui-icon">&#xe620;</i><cite>功能设定</cite><span class="layui-badge-dot"></span></a></dd>
							<dd pc><a href="javascript:;" class="changeSkin"><i class="layui-icon">&#xe61b;</i><cite>更换皮肤</cite></a></dd>
							<dd><a href="page/login/login.html" class="signOut"><i class="seraph icon-tuichu"></i><cite>退出</cite></a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像" ><img src="<c:url value='${user.getHeadurl()}'></c:url>" class="userAvatar"></a>
				<p>你好！<span class="userName">${user.getUsername()}</span>, 欢迎登录</p>
			</div>
			<!-- 搜索 -->
			<div class="layui-form component">
				<select name="search" id="search" lay-search lay-filter="searchPage">
					<option value="">搜索页面或功能</option>
					<option value="1">资讯</option>
					<option value="2">番剧</option>
				</select>
				<i class="layui-icon">&#xe615;</i>
			</div>
			<div class="navBar layui-side-scroll" id="navBar">
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this">
						<a href="javascript:;" data-url="admin_index"><i class="layui-icon" data-icon=""></i><cite>后台首页</cite></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i class="layui-icon">&#xe68e;</i> <cite>后台首页</cite></li>
				</ul>
				<ul class="layui-nav closeBox">
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="layui-icon caozuo">&#xe643;</i> 页面操作</a>
				    <dl class="layui-nav-child">
					  <dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i> 刷新当前</a></dd>
				      <dd><a href="javascript:;" class="closePageOther"><i class="seraph icon-prohibit"></i> 关闭其他</a></dd>
				      <dd><a href="javascript:;" class="closePageAll"><i class="seraph icon-guanbi"></i> 关闭全部</a></dd>
				    </dl>
				  </li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<iframe name="mainbody" src='<c:url value="/admin/main"></c:url>'></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<div class="layui-footer footer">
			<p><span>copyright @2018 纵横国漫网</span>　　
			<a onclick="donation()" class="layui-btn layui-btn-danger layui-btn-sm">联系我们</a></p>
		</div>
	</div>

	<!-- 移动导航 -->
	<div class="site-tree-mobile"><i class="layui-icon">&#xe602;</i></div>
	<div class="site-mobile-shade"></div>
	
	<script type="text/javascript" src="<c:url value='/resources/layuicms/layui/layui.js'></c:url>"></script>
	<script type="text/javascript" src="<c:url value='/resources/layuicms/js/cache.js'></c:url>"></script>
	<script>
	 var $,tab,dataStr,layer;
	 layui.config({
	 	base : '<c:url value="/resources/layuicms/js/"></c:url>'
	 }).extend({
	 	"bodyTab" : '<c:url value="bodyTab"></c:url>'
	 });
	 layui.use(['bodyTab','form','element','layer','jquery'],function(){
	 	var form = layui.form,
	 		element = layui.element;
	 		$ = layui.$;
	     	layer = parent.layer === undefined ? layui.layer : top.layer;
	 		tab = layui.bodyTab({
	 			openTabNum : "50",  //最大可打开窗口数量
	 			url :"<c:url value='/resources/layuicms/json/navs.json'></c:url>" //获取菜单json地址
	 		});

	 	//通过顶部菜单获取左侧二三级菜单   注：此处只做演示之用，实际开发中通过接口传参的方式获取导航数据
	 	function getData(json){
	 		$.getJSON(tab.tabConfig.url,function(data){
	 			if(json == "contentManagement"){
	 				dataStr = data.contentManagement;
	 				//重新渲染左侧菜单
	 				tab.render();
	 			}else if(json == "memberCenter"){
	 				dataStr = data.memberCenter;
	 				//重新渲染左侧菜单
	 				tab.render();
	 			}else if(json == "systemeSttings"){
	 				dataStr = data.systemeSttings;
	 				//重新渲染左侧菜单
	 				tab.render();
	 			}else if(json == "seraphApi"){
	                 dataStr = data.seraphApi;
	                 //重新渲染左侧菜单
	                 tab.render();
	             }
	 		})
	 	}
	 	//页面加载时判断左侧菜单是否显示
	 	//通过顶部菜单获取左侧菜单
	 	$(".topLevelMenus li,.mobileTopLevelMenus dd").click(function(){
	 		if($(this).parents(".mobileTopLevelMenus").length != "0"){
	 			$(".topLevelMenus li").eq($(this).index()).addClass("layui-this").siblings().removeClass("layui-this");
	 		}else{
	 			$(".mobileTopLevelMenus dd").eq($(this).index()).addClass("layui-this").siblings().removeClass("layui-this");
	 		}
	 		$(".layui-layout-admin").removeClass("showMenu");
	 		$("body").addClass("site-mobile");
	 		getData($(this).data("menu"));
	 		//渲染顶部窗口
	 		tab.tabMove();
	 	})

	 	//隐藏左侧导航
	 	$(".hideMenu").click(function(){
	 		if($(".topLevelMenus li.layui-this a").data("url")){
	 			layer.msg("此栏目状态下左侧菜单不可展开");  //主要为了避免左侧显示的内容与顶部菜单不匹配
	 			return false;
	 		}
	 		$(".layui-layout-admin").toggleClass("showMenu");
	 		//渲染顶部窗口
	 		tab.tabMove();
	 	})

	 	//通过顶部菜单获取左侧二三级菜单   注：此处只做演示之用，实际开发中通过接口传参的方式获取导航数据
	 	getData("contentManagement");

	 	//手机设备的简单适配
	     $('.site-tree-mobile').on('click', function(){
	 		$('body').addClass('site-mobile');
	 	});
	     $('.site-mobile-shade').on('click', function(){
	 		$('body').removeClass('site-mobile');
	 	});

	 	// 添加新窗口
	 	$("body").on("click",".layui-nav .layui-nav-item a:not('.mobileTopLevelMenus .layui-nav-item a')",function(){
	 		//如果不存在子级
	 		if($(this).siblings().length == 0){
	 			addTab($(this));
	 			$('body').removeClass('site-mobile');  //移动端点击菜单关闭菜单层
	 		}
	 		$(this).parent("li").siblings().removeClass("layui-nav-itemed");
	 	})
	 	//刷新后还原打开的窗口
	     if(cacheStr == "true") {
	         if (window.sessionStorage.getItem("menu") != null) {
	             menu = JSON.parse(window.sessionStorage.getItem("menu"));
	             curmenu = window.sessionStorage.getItem("curmenu");
	             var openTitle = '';
	             for (var i = 0; i < menu.length; i++) {
	                 openTitle = '';
	                 if (menu[i].icon) {
	                     if (menu[i].icon.split("-")[0] == 'icon') {
	                         openTitle += '<i class="seraph ' + menu[i].icon + '"></i>';
	                     } else {
	                         openTitle += '<i class="layui-icon">' + menu[i].icon + '</i>';
	                     }
	                 }
	                 openTitle += '<cite>' + menu[i].title + '</cite>';
	                 openTitle += '<i class="layui-icon layui-unselect layui-tab-close" data-id="' + menu[i].layId + '">&#x1006;</i>';
	                 element.tabAdd("bodyTab", {
	                     title: openTitle,
	                     content: "<iframe src='" + menu[i].href + "' data-id='" + menu[i].layId + "'></frame>",
	                     id: menu[i].layId
	                 })
	                 //定位到刷新前的窗口
	                 if (curmenu != "undefined") {
	                     if (curmenu == '' || curmenu == "null") {  //定位到后台首页
	                         element.tabChange("bodyTab", '');
	                     } else if (JSON.parse(curmenu).title == menu[i].title) {  //定位到刷新前的页面
	                         element.tabChange("bodyTab", menu[i].layId);
	                     }
	                 } else {
	                     element.tabChange("bodyTab", menu[menu.length - 1].layId);
	                 }
	             }
	             //渲染顶部窗口
	             tab.tabMove();
	         }
	     }else{
	 		window.sessionStorage.removeItem("menu");
	 		window.sessionStorage.removeItem("curmenu");
	 	}
	 })

	 //打开新窗口
	 function addTab(_this){
	 	tab.tabAdd(_this);
	 }

	 //联系弹窗
	 function donation(){
	 	layer.tab({
	 		area : ['260px', '367px'],
	 		tab : [{
	 			title : "微信",
	 			content : "<div style='padding:30px;overflow:hidden;background:#d2d0d0;'><img src='images/wechat.jpg'></div>"
	 		},{
	 			title : "QQ",
	 			content : "<div style='padding:30px;overflow:hidden;background:#d2d0d0;'><img src='images/alipay.jpg'></div>"
	 		}]
	 	})
	 }

	 //图片管理弹窗
	 function showImg(){
	     $.getJSON('/admin/getalldefaultimages', function(json){
	         var res = json;
	         layer.photos({
	             photos: res,
	             anim: 5
	         });
	     });
	 }
	</script>
</body>
</html>