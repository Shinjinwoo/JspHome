
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.annotation.WebListener;

public class Loginlmpl2 implements HttpSessionListener{
	String user_id;
	String user_pw;
	static int total_user = 0;
	
	public Loginlmpl2() {
		
	}
	
	public Loginlmpl2(String user_id, String user_pw) {
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println("사용자 접속");
		++total_user;
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("사용자 접속 해제");
		total_user--;
	}

}
