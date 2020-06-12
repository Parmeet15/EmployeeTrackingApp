package com.cal.helper;

import java.util.Properties;
import javax.mail.Message.RecipientType;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail
{
   public static boolean mail(String to,String rpwd)
   {
       
        String HOST = "smtp.gmail.com";
        String USER = "anupreet.kaur444@gmail.com";
        String PASSWORD = "Welcome@@18";
        String PORT = "465";// 567
        //String FROM = req.getParameter("saddr");
        String TO = to;

        String STARTTLS = "true";
        String AUTH = "true";
        String DEBUG = "true";
        String SOCKET_FACTORY = "javax.net.ssl.SSLSocketFactory";
        String SUBJECT ="Password of Your Pizza profile";
        String TEXT = "\nYour password is "+rpwd;


        Properties props = new Properties();
        props.put("mail.smtp.host", HOST);
        props.put("mail.smtp.port", PORT);
        //props.put("mail.smtp.user", USER);

        //props.put("mail.smtp.auth", AUTH);
       // props.put("mail.smtp.starttls.enable", STARTTLS);
        props.put("mail.smtp.debug", DEBUG);

        props.put("mail.smtp.socketFactory.port", PORT);
        props.put("mail.smtp.socketFactory.class", SOCKET_FACTORY);
        props.put("mail.smtp.socketFactory.fallback", "false");

        try
        {

            //Obtain the default mail session
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
            //PrintWriter out = res.getWriter();
            //Construct the mail message
            MimeMessage message = new MimeMessage(session);
            message.setText(TEXT);
            message.setSubject(SUBJECT);
            InternetAddress ia = new InternetAddress();
            ia.setPersonal("no-reply");
            message.setFrom(ia);
            message.addRecipient(RecipientType.TO, new InternetAddress(TO));
            message.saveChanges();

            //Use Transport to deliver the message
            Transport transport = session.getTransport("smtp");

            transport.connect(HOST,465, USER.toString().trim(), PASSWORD.toString().trim());
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
           // out.println("<title>Mail Sent </title>");
            //out.println("<h3>Mail Sent Succesfully</h3>");

            return true;
        }
        catch (Exception e)
        {
           return false;
        }
  
   }

}
