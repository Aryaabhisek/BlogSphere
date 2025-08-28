package in.at.main.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataSourceConfig {

    @Bean
    public DriverManagerDataSource myDataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/spring_db?useSSL=false&serverTimezone=UTC");
        ds.setUsername("root");
        ds.setPassword("Arya@001");
        return ds;
    }

    @Bean
    public JdbcTemplate jdbcTemplate(DriverManagerDataSource ds) {
        return new JdbcTemplate(ds);
    }
}
