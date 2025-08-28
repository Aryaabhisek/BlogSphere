package in.at.main.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import in.at.main.model.Article;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void save(Article article) {
        String sql = "INSERT INTO article (title, content, author) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, article.getTitle(), article.getContent(), article.getAuthor());
    }

    @Override
    public List<Article> list() {
        String sql = "SELECT id, title, content, author, created_at AS createdAt FROM article ORDER BY created_at DESC";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Article.class));
    }

    @Override
    public Article get(int id) {
        String sql = "SELECT id, title, content, author, created_at AS createdAt FROM article WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Article.class), id);
    }

    @Override
    public void update(Article article) {
        String sql = "UPDATE article SET title = ?, content = ?, author = ? WHERE id = ?";
        jdbcTemplate.update(sql, article.getTitle(), article.getContent(), article.getAuthor(), article.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM article WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }
}
