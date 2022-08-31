package board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewBoardDAO")
public class ReviewBoardDAO {

	@Autowired
	SqlSession session;

//전체게시판 조회 	
	public List<ReviewBoardDTO> boardlist() {
		return session.selectList("boardlist2");
	}

//게시물 저장 	
	public int saveBoard(ReviewBoardDTO dto) {
		int saveResult = session.insert("saveBoard2", dto);
		return saveResult;
	}

//Seq 로 게시물 조회
	public ReviewBoardDTO oneBoard(int seq) {
		return session.selectOne("oneBoard2", seq);
	}

//게시물 삭제 
	public int deleteBoard(int seq) {
		return session.delete("deleteBoard2", seq);
	}

//게시물 수정 	
	public int editBoard(ReviewBoardDTO dto) {
		return session.update("editBoard2", dto);
	}

// 최대 페이지수
	public int limitPage() {
		int countBoard = session.selectOne("countBoard2");
		int limitPage = 0;
		if (countBoard % 10 == 0) {
			limitPage = countBoard / 10;
		} else {
			limitPage = countBoard / 10 + 1;
		}
		return limitPage;
	}

// 페이징
	public List<ReviewBoardDTO> limitBoard(int page) {
		int limit = (page - 1) * 10;
		return session.selectList("limitBoard2", limit);
	}

// 비밀글 여부
	public int secretBoard(int seq) {
		return session.selectOne("secretBoard2", seq);
	}

// 조회수 업데이트
	public void viewCount(int seq) {
		session.update("viewCount2", seq);
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
	public List<ReviewBoardDTO> searchList(HashMap searchType) {
		return session.selectList("searchList2", searchType);
	}
}