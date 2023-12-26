package util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	Properties props; 
	Session session;
	InternetAddress from; 
	
	public SendMail() throws FileNotFoundException, IOException {
		String propPath = getClass().getResource("mail.properties").getPath();
		
		props = new Properties(); 
		props.load(new FileInputStream(propPath));
		
		String sender = props.getProperty("mail.smtp.sender");
		String username = props.getProperty("mail.smtp.user");
		String password = props.getProperty("mail.smtp.password");
		
		session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		
		from = new InternetAddress(username, sender, "utf-8");
	}
	
	public boolean send(String mailTo, String title, String content) {
		Message msg = new MimeMessage(session);
		boolean ret = true; 
		try {
			msg.setFrom(from);
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(mailTo));
			msg.setSubject(title);
			msg.setContent(content, "text/html; charset=utf-8");
			Transport.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
			ret = false;
		}	
		return ret; 
	}
}
