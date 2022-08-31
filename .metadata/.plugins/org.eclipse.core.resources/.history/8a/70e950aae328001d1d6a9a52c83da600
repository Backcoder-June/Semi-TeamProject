package board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberservice")
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO dao;
	
	//회원가입
	@Override
	public void insertMember(MemberDTO dto) {
		 dao.insertMember(dto);
	}
	@Override
	public int idChk(MemberDTO dto) {
		int result = dao.idChk(dto);
		return result;
	}
	
	//회원탈퇴
	@Override
	public void deleteMember(String id) {
		dao.deleteMember(id);
	}

	//회원정보수정
	@Override
	public void updateMember(MemberDTO dto) {
		dao.updateMember(dto);
	}
	//회원정보조회
	@Override
	public MemberDTO selectOneMember(String id) {
		return dao.selectOneMember(id);
	}
	
	//다시확인
	@Override
	public List<MemberDTO> onemember(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	//로그인확인
	@Override
	public String loginCheck(MemberDTO dto, HttpSession session) {
	String name = dao.loginCheck(dto);
	 if (name != null) { // 세션 변수 저장
	  session.setAttribute("id", dto.getId());
	  session.setAttribute("name", name);
	}
	 return name; 
	}
	
	//로그아웃
	@Override
	public void logout(HttpSession session) {
	 session.invalidate(); // 세션 초기화
	 }
	
	}


	
	
	
	

