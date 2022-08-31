package board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	@Autowired
	CommentDAO commentDAO;

	@Override
	public CommentDTO insertComment(CommentDTO dto) {
		int commentSeq = commentDAO.insertComment(dto);
		return commentDAO.getComment(commentSeq);
	}

	@Override
	public CommentDTO getComment(int commentSeq) {
		return commentDAO.getComment(commentSeq);
	}

	@Override
	public List<CommentDTO> getAllComment(int seq) {
		return commentDAO.getAllComment(seq);
	}

	@Override
	public CommentDTO updateComment(CommentDTO dto) {
		int commentSeq = dto.getCommentSeq();
		commentDAO.updateComment(dto);

		return commentDAO.getComment(commentSeq);
	}

	@Override
	public void deleteComment(int commentSeq) {
		commentDAO.deleteComment(commentSeq);
	}
}
