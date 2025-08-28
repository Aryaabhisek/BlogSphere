package in.at.main.service;

import java.util.List;
import in.at.main.model.Article;

public interface ArticleService {
    void save(Article article);
    List<Article> list();
    Article get(int id);
    void update(Article article);
    void delete(int id);
}
