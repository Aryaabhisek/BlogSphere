package in.at.main.dao;

import java.util.List;
import in.at.main.model.Article;

public interface ArticleDAO {
    void save(Article article);
    List<Article> list();
    Article get(int id);
    void update(Article article);
    void delete(int id);
}
