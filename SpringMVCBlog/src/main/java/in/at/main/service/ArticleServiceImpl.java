package in.at.main.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import in.at.main.dao.ArticleDAO;
import in.at.main.model.Article;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDAO dao;

    @Override
    public void save(Article article) { dao.save(article); }

    @Override
    public List<Article> list() { return dao.list(); }

    @Override
    public Article get(int id) { return dao.get(id); }

    @Override
    public void update(Article article) { dao.update(article); }

    @Override
    public void delete(int id) { dao.delete(id); }
}
