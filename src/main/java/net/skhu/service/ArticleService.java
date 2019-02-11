package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.model.ArticleModel;
import net.skhu.repository.ArticleRepository;

@Service
public class ArticleService {
	 @Autowired ArticleRepository articleRepository;

	 public void delete(int id) {
		 articleRepository.deleteById(id);
	    }
	 public int insertArticle(ArticleModel a, int boardId, int userId) {
	       /* Article last = articleRepository.findTopByBoardIdOrderByNoDesc(boardId);
	        int no = (last == null) ? 1 : last.getNo() + 1;

	        Article article = new Article();
	        article.setWriteTime(new Date());
	        article.setId(no);
	        article.setTitle(a.getTitle());
	        article.setBody(a.getBody());
	        articleRepository.insert(article);
	        return article.getId();*/
		 return 0;
	    }

}
