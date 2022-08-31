package board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO {

	@Autowired
	SqlSession session;

//전체게시판 조회 	
	public List<BoardDTO> boardlist() {
		return session.selectList("boardlist");
	}

//게시물 저장 	
	public int saveBoard(BoardDTO dto) {
		int saveResult = session.insert("saveBoard", dto);
		return saveResult;
	}

//Seq 로 게시물 조회
	public BoardDTO oneBoard(int seq) {
		return session.selectOne("oneBoard", seq);
	}

//게시물 삭제 
	public int deleteBoard(int seq) {
		return session.delete("deleteBoard", seq);
	}

//게시물 수정 	
	public int editBoard(BoardDTO dto) {
		return session.update("editBoard", dto);
	}

// 최대 페이지수
	public int limitPage() {
		int countBoard = session.selectOne("b.countBoard");
		int limitPage = 0;
		if (countBoard % 10 == 0) {
			limitPage = countBoard / 10;
		} else {
			limitPage = countBoard / 10 + 1;
		}
		return limitPage;
	}

// 페이징
	public List<BoardDTO> limitBoard(int page) {
		int limit = (page - 1) * 10;
		return session.selectList("b.limitBoard", limit);
	}

// 비밀글 여부
	public int secretBoard(int seq) {
		return session.selectOne("b.secretBoard", seq);
	}

// 조회수 업데이트
	public void viewCount(int seq) {
		session.update("b.viewCount", seq);
	}

	// 추천수 plus
	public void likePlus(int seq) {
		session.update("likePlus", seq);
	}

	// 추천수 minus
	public void likeMinus(int seq) {
		session.update("likeMinus", seq);
	}

	// 추천수 check
	public int likeCheck(int seq) {
		return session.update("likeCheck", seq);
	}

	// 추천수 check Cancel
	public int likeCheckCancel(int seq) {
		return session.update("likeCheckCancel", seq);
	}

	// 추천 checkNum 조회
	public int checkNum(int seq) {
		return session.selectOne("checkNum", seq);
	}

	// 추천수 조회
	public int likeCount(int seq) {
		return session.selectOne("likeCount", seq);
	}

	// 검색
	public List<BoardDTO> searchList(HashMap searchType) {
		return session.selectList("searchList", searchType);
	}
	
	///////// 좋아요 
	
	public void updateLike(int bno) throws Exception{
	 session.update("updateLike", bno);
	}
	
	public void updateLikeCancel(int bno) throws Exception{
		session.update("updateLikeCancel", bno);

	}

	
	
	public int maxlike() {
		
		return session.selectOne("maxlike");
	}
	
	
	
	public void insertLike(int boardseq,String memberid) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memberid", memberid);
		map.put("boardseq", boardseq);
		map.put("maxlike", session.selectOne("maxlike"));
		session.insert("insertLike", map);
	}
	
	
	public void deleteLike(int bno,String memberId)throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memberId", memberId);
		map.put("bno", bno);
		session.delete("deleteLike", map);
	}
	
	public int likeCheck(int bno,String memberId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memberId", memberId);
		map.put("bno", bno);
		return session.selectOne("like.likeCheck", map);
	}
	
	public void updateLikeCheck(int bno,String memberId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memberId", memberId);
		map.put("bno", bno);
		session.update("updateLikeCheck", map);
		
	}
			
	public void updateLikeCheckCancel(int bno,String memberId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memberId", memberId);
		map.put("bno", bno);
		session.update("updateLikeCheckCancel", map);
	}
	
	
	
}