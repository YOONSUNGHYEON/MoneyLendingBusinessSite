package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Article;
import net.skhu.model.Option;
import net.skhu.model.Pagination;

public interface ArticleRepository extends JpaRepository<Article, Integer> {
	Option[] searchBy = { new Option(0, "검색 없음"), new Option(1, "글쓴이"), new Option(2, "제목"), new Option(3, "본문") };
	Option[] orderBy = { new Option(0, "최근 글"), new Option(1, "오래된 글"), new Option(2, "글쓴이") };
	Sort[] sort = { new Sort(Sort.Direction.DESC, "id"), new Sort(Sort.Direction.ASC, "id"),
			new Sort(Sort.Direction.ASC, "name") };


	default List<Article> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(), sort[pagination.getOb()]);
		Page<Article> page;
		int boardId = pagination.getBd();
		String searchText = pagination.getSt();
		System.out.println();
		System.out.println();
		System.out.println(pageable);
		System.out.println();
		switch (pagination.getSb()) {
		case 1:
			page = this.findByBoardIdAndNameLike(boardId, searchText, pageable);
			break;
		case 2:
			page = this.findByBoardIdAndTitleContains(boardId, searchText, pageable);
			break;
		case 3:
			page = this.findByBoardIdAndBodyContains(boardId, searchText, pageable);
			break;
		default:
			page = this.findByBoardId(boardId, pageable);
			break;
		}
		pagination.setRecordCount((int) page.getTotalElements());
		System.out.println(page.getContent());
		return page.getContent();
	}

	Page<Article> findByBoardId(int boardId, Pageable pageable);

	Page<Article> findByBoardIdAndBodyContains(int boardId, String body, Pageable pageable);

	Page<Article> findByBoardIdAndNameLike(int boardId, String name, Pageable pageable);

	Page<Article> findByBoardIdAndTitleContains(int boardId, String title, Pageable pageable);
}