package org.baek.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberTests {
	// sqlSession은 Mybatis를 사용하기 위해 사용, Mybatis에 대해서 회사가 물어봄
	// 여기서는 mybatis 사용하기 전 방식인 datasource를 가져올 것
	
	// datasource 객체, passwordencoder 객체
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	
	// 주석 처리를 안하면 또 실행 될 수 있으니까 주석 처리
	// 둘 다 동작한다. (nextval이 안먹혀서 책 처럼 idx 없이 했음)
//	@Test
//	public void testInsertMember() {
//		
//		String sql = "insert into membertable(mid, mpw, mchpw, mname, memail) "+
//						"values(?,?,?,?,?)";
//		for(int i=0; i<100; i++) {
//			
//			Connection con = null;
//			PreparedStatement ps = null;
//			
//			try {
//				con = ds.getConnection();
//				ps = con.prepareStatement(sql);
//				
//				//ps.setString(1, "member_seq.nextval"); ""속에 number 값을 줄 수 없기 때문에 위쪽에 적어야 된다.
//				// 비밀번호 인코딩(가려야 하기 때문에 인코딩 사용)
//				ps.setString(2, pwencoder.encode("pw" + i));
//				ps.setString(3, "pw"+ i);
//				
//				// id/이름
//				if(i<80) {
//					ps.setString(1, "user"+i);
//					ps.setString(4, "일반사용자"+i);
//					ps.setString(5, "user"+i+"@goot.com");
//				}else if(i<90) {
//					ps.setString(1, "manager"+i);
//					ps.setString(4, "운영자"+i);					
//					ps.setString(5, "manager"+i+"@goot.com");
//				}else {
//					ps.setString(1, "admin"+i);					
//					ps.setString(4, "관리자"+i);										
//					ps.setString(5, "admin"+i+"@goot.com");
//				}
//				
//				ps.executeUpdate();
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}finally {
//				
//				try {
//					if(ps !=null) {ps.close();}
//					if(con !=null) {con.close();}
//				} catch (Exception e2) {
//					e2.printStackTrace();
//				}
//			}
//			
//			
//		} // end for loop
//	}
	
	
	
	// constraintViolation 에러 말도안되게 뜨길래 껐다가 키니까 됨(원래 됬던거)
		@Test
		public void testInsertMembertable_auth(){
			String sql = "insert into membertable_auth(mid, auth)"+
					"values(?,?)";
			for(int i=0; i<100; i++) {
				
				Connection con = null;
				PreparedStatement ps = null;
				
				try {
					con = ds.getConnection();
					ps = con.prepareStatement(sql);
					
					
					// USERID(아이디) / AUTH(권한)에 삽입
					if(i<80) {
						ps.setString(1, "user"+i);
						ps.setString(2, "ROLE_USER");
					}else if(i<90) {
						ps.setString(1, "manager"+i);
						ps.setString(2, "ROLE_MEMBER");					
					}else {
						ps.setString(1, "admin"+i);					
						ps.setString(2, "ROLE_ADMIN");										
					}
					
					ps.executeUpdate();
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					
					try {
						if(ps !=null) {ps.close();}
						if(con !=null) {con.close();}
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
				
				
			} // end for loop
		}
	
	
}
