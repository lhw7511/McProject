package com.mc.p1.util;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class MailService {

	@Autowired
	public JavaMailSender emailSender;

	public String sendSimpleMessage(String email) {
		char upper =(char)((Math.random() * 26) + 65);
		char lower =(char) ((Math.random() * 26) + 97);
		Random r = new Random();
        int dice = r.nextInt(4589362) + 49311;
        String newPw= String.valueOf(upper)+String.valueOf(lower)+dice;
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(email);
		message.setSubject("맥딜리버리 임시 비밀번호 발급");
		message.setText(newPw);
		emailSender.send(message);

		return newPw;
	}

}
