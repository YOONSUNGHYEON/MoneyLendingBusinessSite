package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.domain.Article;
import net.skhu.domain.Board;
import net.skhu.model.Pagination;
import net.skhu.repository.ArticleRepository;
import net.skhu.repository.BoardRepository;

@Controller
public class GuestController {

	@Autowired
	ArticleRepository articleRepository;
	@Autowired
	BoardRepository boardRepository;

    @RequestMapping("guest/greeting")
    public String greeting() {
        return "guest/greeting";
    }

    @RequestMapping({"/", "guest/index"})
    public String index() {
        return "guest/index";
    }

    @RequestMapping("guest/list")
	public String list(Pagination pagination, Model model) {
		Board board = boardRepository.findById(pagination.getBd()).get();
		List<Article> list = articleRepository.findAll(pagination);
		model.addAttribute("board", board);
		model.addAttribute("list", list);
		model.addAttribute("orderBy", ArticleRepository.orderBy);
		model.addAttribute("searchBy", ArticleRepository.searchBy);
		return "guest/list";
	}

    @RequestMapping("guest/login")
    public String login() {
        return "guest/login";
    }


    @RequestMapping("guest/map")
    public String map() {
        return "guest/map";
    }

    @RequestMapping("guest/office")
    public String office() {
        return "guest/office";
    }

	@RequestMapping("guest/registration")
    public String registration() {
        return "guest/registration";
    }

	@RequestMapping("guest/view")
	public String view(@RequestParam("id") int id, Pagination pagination, Model model) {
		Article article = articleRepository.findById(id).get();
		model.addAttribute("article", article);
		return "guest/view";
	}
}

