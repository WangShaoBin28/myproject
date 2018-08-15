package com.app.controller.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
/**
 * 发送邮件
 */
public class MailController {

    @Autowired
    private JavaMailSender jms;

    @GetMapping("/send")
    public String send() {
        //建立邮件消息
        SimpleMailMessage mainMessage = new SimpleMailMessage();
        //发送者
        mainMessage.setFrom("wsbsmile@163.com");
        //接收者
        mainMessage.setTo("18210423261@163.com");
        //发送的标题
        mainMessage.setSubject("您好？");
        //发送的内容
        mainMessage.setText("您的动态代码为1548151");
        jms.send(mainMessage);
        return "1";
    }

}
