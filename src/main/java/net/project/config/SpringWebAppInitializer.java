package net.project.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.filter.CharacterEncodingFilter;

public class SpringWebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) {
        FilterRegistration charsetEncodingFilter = servletContext.addFilter("CharsetEncodingFilter", CharacterEncodingFilter.class);
        charsetEncodingFilter.setInitParameter("encoding", "UTF-8");
        charsetEncodingFilter.setInitParameter("forceEncoding", "true");
        charsetEncodingFilter.addMappingForUrlPatterns(null, false, "/*");

    }
}