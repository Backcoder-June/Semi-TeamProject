package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDAO")
public class CommentDAO {
	@Autowired
	SqlSession session;

	public int insertComment(CommentDTO dto) {
		session.insert("insertComment", dto);
		return dto.getCommentSeq();
	}

	public CommentDTO getComment(int commentSeq) {
		return session.selectOne("getComment", commentSeq);
	}

	public List<CommentDTO> getAllComment(int seq) {
		return session.selectList("getAllComment", seq);
	}

	public void updateComment(CommentDTO dto) {
		session.update("updateComment", dto);
	}

	public void deleteComment(int commentSeq) {
		session.delete("deleteComment", commentSeq);
	}
}
