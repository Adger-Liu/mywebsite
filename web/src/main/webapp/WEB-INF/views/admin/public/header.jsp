<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>AdgerBlog后台</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="shortcut icon" href="../../../../static/images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/fonts.googleapis.com.css" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/ace-part2.min.css"
          class="ace-main-stylesheet"/>
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="../../../../static/admin/ace-master/assets/css/ace-ie.min.css"/>
    <script src="../../../../static/admin/ace-master/assets/js/ace-extra.min.js"></script>
    <script src="../../../../static/admin/ace-master/assets/js/html5shiv.min.js"></script>
    <script src="../../../../static/admin/ace-master/assets/js/respond.min.js"></script>
</head>
<body class="no-skin">
<!-- 顶部菜单的 -->
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a href="" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Adger
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <span class="user-info" style="line-height:33px">欢迎 Adger</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="../../../../static/admin/ace-master/profile.html">
                                <i class="ace-icon fa fa-user"></i>
                                修改密码
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>