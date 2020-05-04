<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 这个login 界面不能随便乱改不是是自己自定义的 --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog后台登录</title>
    <link rel="shortcut icon" href="../../../static/images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../../../static/admin/css/login.css">
    <script src="../../../static/bootstrap-3.3.7-dist/js/jquery-2.1.4.min.js"></script>
    <script src="../../../static/admin/js/login.js"></script>
    <style>
        /* 外层阴影 */
        .modal{
            display: none;
            width: 100%;
            height: 100%;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 1000;
            background-color: rgba(0,0,0,0.5);
        }
        .modal-content{
            width: 250px;
            height: 79px;
            max-width: 700px;
            max-height: 500px;
            margin: 200px auto;
            border-radius:10px;
            background-color:#fff;
            -webkit-animation: zoom 0.6s;
            animation: zoom 0.6s;
            overflow: auto;
        }
        @-webkit-keyframes zoom{
            from {-webkit-transform: scale(0)}
            to {-webkit-transform: scale(1)}
        }
        @keyframes zoom{
            from {transform: scale(0)}
            to {transform: scale(1)}
        }

        .close{
            color: #b7b7b7;
            font-size: 30px;
            font-weight: bold;
            margin-right: 20px;
            transition: all 0.3s;
            cursor: pointer;
        }
        .content{
            display: block;
            width: 139px;
            height: 20px;
            position: relative;
            top: -1px;
            left: 76px;
            text-align: center;
        }
    </style>
</head>
<body>
<!-- 登录注册界面  -->
<div class="containe">
    <h1>登录</h1>
        <div class="input-groupp">
            <input type="text" name="username" id="username" required/>
            <label for="username">用户名</label>
        </div>
        <div class="input-groupp">
            <input type="password" name="pwd" id="pwd" required/>
            <label for="pwd">密码</label>
        </div>
        <div class="input-groupp" id="verifcode">
            <input type="text" name="verificationCode" id="verificationCode" required/>
            <img id="cpacha-img" src="/login/get_cpacha?vl=4&w=110&h=30&type=loginCpacha" alt="我是验证码" title="点击切换验证码"
                 style="cursor:pointer;" onclick="changeCpacha()">
            <label for="verificationCode" id="verificationCodeLable">验证码</label>
        </div>
        <input type="button" value="登录" id="sub" onclick="login()"/>
</div>

<%-- 模态框区域--%>
<div id="modal" class="modal">
    <div class="modal-content">
        <span class="close">×</span>
        <font class="content" id="con"></font>
    </div>
</div>

<script>
    <%-- 验证码的交互 --%>
    function changeCpacha() {
        $("#cpacha-img").attr("src", '/login/get_cpacha?vl=4&w=110&h=30&type=loginCpacha&t=' + new Date().getTime());
    }

    //模态框区域
    var btn = document.getElementById('showModel');
    var close = document.getElementsByClassName('close')[0];
    var modal = document.getElementById('modal');
    close.addEventListener('click', function(){
        modal.style.display = "none";
    });
    /* 登录 方法的 异步 ajax*/
    function login() {
        var username = $("#username").val();
        var password = $("#pwd").val();
        var cpacha = $("#verificationCode").val();

        if(username == '' || username == 'undefined'){
            modal.style.display = "block";
            $(".content").html("请输入用户名");
            return;
        }
        if(password == '' || password == 'undefined'){
            modal.style.display = "block";
            $(".content").html("请输入密码");
            return;
        }
        if(cpacha == '' || cpacha == 'undefined'){
            modal.style.display = "block";
            $(".content").html("请输入验证码");
            return;
        }

        $.ajax({
            url:'login/adminLogin',
            data:{"username":username,"password":password,"cpacha":cpacha},
            type:'POST',
            dataType:"json",
            success:function(data){
                if(data.success == true){
                    window.location.href="login/home"
                }else{
                    modal.style.display = "block";
                    $(".content").html(data.message);
                    changeCpacha();
                }
            }
        });
    }
</script>
</div>
</body>
</html>