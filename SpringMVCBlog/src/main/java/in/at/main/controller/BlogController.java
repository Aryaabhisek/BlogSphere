package in.at.main.controller;

import in.at.main.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private ArticleService service;

    @GetMapping
    public String showAll(Model model) {
        model.addAttribute("articles", service.list());
        return "blog-list";
    }

    @GetMapping("/{id}")
    public String showOne(@PathVariable int id, Model model) {
        model.addAttribute("article", service.get(id));
        return "blog-details";
    }
}
