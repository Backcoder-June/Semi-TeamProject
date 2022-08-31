package board;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentController {
	@Autowired
	@Qualifier("commentService")
	CommentService commentService;

	@ResponseBody
	@PostMapping(value = "/board/{boardSeq}/getAllComment", produces = { "application/json;charset=utf-8" })
	public Object getAllComment(@PathVariable("boardSeq") int seq, CommentDTO dto) {
		dto.setSeq(seq);
		List<CommentDTO> commentList = commentService.getAllComment(seq);

		HashMap<String, Object> list = new HashMap<String, Object>();
		list.put("commentList", commentList);
		return list;
	}

	@ResponseBody
	@PostMapping(value = "/board/{boardSeq}/insertComment", produces = { "application/json;charset=utf-8" })
	public CommentDTO insertComment(@PathVariable("boardSeq") int seq, CommentDTO dto, String writer) {
		dto.setSeq(seq);
		dto.setWriter(writer);
		return commentService.insertComment(dto);
	}

	@ResponseBody
	@PostMapping(value = "/board/{boardSeq}/updateComment", produces = { "application/json;charset=utf-8" })
	public CommentDTO updateComment(CommentDTO dto, String updateContents, int updateSecret, String commentSeq) {
		int commentSeqInt = Integer.parseInt(commentSeq);
		dto.setContents(updateContents);
		dto.setSecret(updateSecret);
		dto.setCommentSeq(commentSeqInt);

		return commentService.updateComment(dto);
	}

	@ResponseBody
	@PostMapping(value = "/board/{boardSeq}/deleteComment", produces = { "application/json;charset=utf-8" })
	public void deleteComment(int commentSeq) {
		commentService.deleteComment(commentSeq);
	}
}
