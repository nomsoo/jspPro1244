package user.dao;


import java.util.List;
import org.apache.ibatis.session.SqlSession;
import sqlmap.MybatisManager;
import user.dto.UserDTO;

public class UserDAO {
	
	public void insert(UserDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("user.insert", dto);
		session.commit();
		session.close();
	}//insert		
	
	public void login(UserDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.selectOne("user.login", dto);
		session.commit();
		session.close();
	}
	
	public String loginCheck(UserDTO dto) {
		String result ="";
		SqlSession session = null;
		try {
			session=MybatisManager.getInstance().openSession();
			result = session.selectOne("user.login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null ) session.close();
		}	
		return result;
	}	
	
	public UserDTO joinview(String userid) {
		SqlSession session=MybatisManager.getInstance().openSession();
		UserDTO dto=session.selectOne("user.joinview", userid);
		session.close();
		return dto;
	}

	public void update(UserDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("user.update", dto);
		session.commit();
		session.close();
	}
	

	public List<UserDTO> list() {
		SqlSession session=MybatisManager.getInstance().openSession();		
		List<UserDTO> list = null;	
		list = session.selectList("user.list");
		session.close();
		return list;
	}

	public void delete(String userid) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("user.delete", userid);
		System.out.println(userid);
		session.commit();
		session.close();
		
	}

}


	