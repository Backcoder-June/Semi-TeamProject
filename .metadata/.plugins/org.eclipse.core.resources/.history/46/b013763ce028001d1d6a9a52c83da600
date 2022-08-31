package board;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("reviewBoardServiceImp")
public class ReviewBoardServiceImp implements ReviewBoardService {

	@Autowired
	ReviewBoardDAO reviewBoardDAO;

//전체 게시판 조회	
	@Override
	public List<ReviewBoardDTO> boardlist() {
		return reviewBoardDAO.boardlist();
	}

// 게시물 저장 
	@Override
	public int saveBoard(ReviewBoardDTO dto) {
		int saveResult = reviewBoardDAO.saveBoard(dto);
		return saveResult;
	}

// seq로 게시물 조회 	
	@Override
	public ReviewBoardDTO oneBoard(int seq) {
		return reviewBoardDAO.oneBoard(seq);
	}

// 게시물 삭제 	
	@Override
	public int deleteBoard(int seq) {
		return reviewBoardDAO.deleteBoard(seq);
	}

// 게시물 수정
	@Override
	public int editBoard(ReviewBoardDTO dto) {
		return reviewBoardDAO.editBoard(dto);
	}

//페이징
	@Override
	public List<ReviewBoardDTO> limitBoard(int page) {
		return reviewBoardDAO.limitBoard(page);
	}

//최대 페이지수
	@Override
	public int limitPage() {
		return reviewBoardDAO.limitPage();
	}

//비밀글여부	
	@Override
	public boolean secretBoard(int seq) {
		int secret = reviewBoardDAO.secretBoard(seq);
		if (secret == 1) {
			return true;
		} else {
			return false;
		}
	}

//조회수 업데이트
	@Override
	public void viewCount(int seq) {
		reviewBoardDAO.viewCount(seq);
	}

	// 추천 플러스
	@Override
	public void likePlus(int seq) {
		reviewBoardDAO.likePlus(seq);
	}

// 추천 마이너스 
	@Override
	public void likeMinus(int seq) {
		reviewBoardDAO.likeMinus(seq);
	}

// 추천 중복 check 1 	
	@Override
	public int likeCheck(int seq) {
		return reviewBoardDAO.likeCheck(seq);
	}

// 추천 중복 check cancel 0  	
	@Override
	public int likeCheckCancel(int seq) {
		return reviewBoardDAO.likeCheckCancel(seq);
	}

// 추천수 조회 	
	@Override
	public int likeCount(int seq) {
		return reviewBoardDAO.likeCount(seq);
	}

	// check 조회
	@Override
	public int checkNum(int seq) {
		return reviewBoardDAO.checkNum(seq);
	}

	// 검색
	public List<ReviewBoardDTO> searchList(HashMap searchType) {
		return reviewBoardDAO.searchList(searchType);
	}
}
