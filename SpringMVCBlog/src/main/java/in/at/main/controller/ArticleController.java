package in.at.main.controller;

import in.at.main.model.Article;
import in.at.main.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/articles")
public class ArticleController {

    @Autowired
    private ArticleService service;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("articles", service.list());
        return "article-list";
    }

    @GetMapping("/new")
    public String showForm(Model model) {
        model.addAttribute("article", new Article());
        return "article-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("article") Article article) {
        if (article.getId() == 0) service.save(article);
        else service.update(article);
        return "redirect:/articles";
    }
    
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        model.addAttribute("article", service.get(id));
        return "article-form";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/articles";
    }

}
