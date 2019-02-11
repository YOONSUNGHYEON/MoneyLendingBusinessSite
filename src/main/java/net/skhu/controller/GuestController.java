package net.skhu.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.domain.Article;
import net.skhu.domain.Board;
import net.skhu.model.ArticleModel;
import net.skhu.model.Pagination;
import net.skhu.repository.ArticleRepository;
import net.skhu.repository.BoardRepository;
import net.skhu.service.ArticleService;

@Controller
@RequestMapping("guest")
public class GuestController {

	@Autowired
	ArticleRepository articleRepository;
	@Autowired
	ArticleService articleService;
	@Autowired
	BoardRepository boardRepository;

    @Transactional
    @RequestMapping(value="create", method=RequestMethod.POST)
    public String create(@Valid ArticleModel a, BindingResult bindingResult,
            Pagination pagination, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("board", boardRepository.findById(pagination.getBd()));
            return "article/edit";
        }
        int id = articleService.insertArticle(a, pagination.getBd(), 1);
        return "redirect:view?id=" + id + "&" + pagination.getQueryString();
    }

    @RequestMapping(value="create", method=RequestMethod.GET)
    public String create(Pagination pagination, Model model) {
    	Board board = boardRepository.findById(pagination.getBd()).get();
    	model.addAttribute("board", board);
        model.addAttribute("articleModel", new ArticleModel());
        return "guest/edit";
    }

    @RequestMapping(value="delete", method=RequestMethod.GET)
    public String delete(@RequestParam("id") int id, Pagination pagination, Model model) {
        articleService.delete(id);
        return "redirect:list?" + pagination.getQueryString();
    }

    @RequestMapping("greeting")
    public String greeting() {
        return "guest/greeting";
    }


    @RequestMapping({"/", "index"})
    public String index() {
        return "guest/index";
    }

    @RequestMapping("list")
	public String list(Pagination pagination, Model model) {
		Board board = boardRepository.findById(pagination.getBd()).get();
		List<Article> list = articleRepository.findAll(pagination);
		model.addAttribute("board", board);
		model.addAttribute("list", list);
		model.addAttribute("orderBy", ArticleRepository.orderBy);
		model.addAttribute("searchBy", ArticleRepository.searchBy);
		return "guest/list";
	}

	@RequestMapping("login")
    public String login() {
        return "guest/login";
    }

	@RequestMapping("map")
    public String map() {
        return "guest/map";
    }

    @RequestMapping("office")
    public String office() {
        return "guest/office";
    }

    @RequestMapping("registration")
    public String registration() {
        return "guest/registration";
    }

    @RequestMapping("view")
	public String view(@RequestParam("id") int id, Pagination pagination, Model model) {
		Article article = articleRepository.findById(id).get();
		model.addAttribute("article", article);
		return "guest/view";
	}
}

