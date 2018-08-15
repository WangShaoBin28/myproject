<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎登陆！</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/login/login.css">
</head>
<body>
<div class="authcenter-head"></div>
<div class='gcs-login'>
    <div class="gcs-login-panel">
        <div class="login-title">
            <h2>用户登陆</h2>
        </div>
        <div class="gcs-login-container">
            <input type="text" class="input" placeholder="请输入用户名"/>
        </div>
        <div class="gcs-login-container">
            <input type="password" class="input" placeholder="请输入密码"/>
        </div>
        <div class="gcs-login-container">
            <div class="gcs-login-validation">
                <input type="text" class="input validation-input" placeholder="请输入验证码"/>
                <img class="validation-img" src="/image/captcha.png" title="看不清楚？点击换一张">
            </div>
        </div>
        <br/>
        <br/>
        <div class="gcs-login-container">
            <input type="button" onclick="window.location.href='/user/list?id=1'" value="立即登录" class="btn-login"/>
        </div>
    </div>
</div>
</body>
</html>
<script src="/layui/layui.js"></script>