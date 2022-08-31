package board;

import java.util.List;

import javax.servlet.http.HttpSession;


public interface MemberService {

	public void insertMember(MemberDTO dto);
	public void deleteMember(String id) ;
	public void updateMember(MemberDTO dto);
	public MemberDTO selectOneMember(String id);
	public int idChk(MemberDTO dto);
	public List<MemberDTO> onemember(String id);
	public String loginCheck(MemberDTO dto, HttpSession session);
	public void logout(HttpSession session);
	

	
}
