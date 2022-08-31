package board;

import java.util.HashMap;
import java.util.List;

public interface ReviewBoardService {

	public List<ReviewBoardDTO> boardlist();

	public int saveBoard(ReviewBoardDTO dto);

	public ReviewBoardDTO oneBoard(int seq);

	public int deleteBoard(int seq);

	public int editBoard(ReviewBoardDTO dto);

	public List<ReviewBoardDTO> limitBoard(int page);

	public int limitPage();

	public boolean secretBoard(int seq);

	public void viewCount(int seq);

	public void likePlus(int seq);

	public void likeMinus(int seq);

	public int likeCheck(int seq);

	public int likeCheckCancel(int seq);

	public int likeCount(int seq);

	public int checkNum(int seq);

	public List<ReviewBoardDTO> searchList(HashMap searchType);
}
