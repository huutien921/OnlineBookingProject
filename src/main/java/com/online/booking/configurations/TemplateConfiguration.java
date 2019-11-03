package com.online.booking.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class TemplateConfiguration implements WebMvcConfigurer {
	
	//---------cau hinh cho template--------------------------------
	@Bean
	public UrlBasedViewResolver viewResolver() {
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setViewClass(TilesView.class);
		return resolver;
	}
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[] {
				"/WEB-INF/tiles/tiles.xml",
				"/WEB-INF/tiles/tiles_home.xml",
				"/WEB-INF/tiles/tiles_aboutus.xml",
				"/WEB-INF/tiles/tiles_news.xml",
				"/WEB-INF/tiles/tiles_hotels.xml",
				"/WEB-INF/tiles/tiles_promotions.xml",
				"/WEB-INF/tiles/tiles_saved.xml",
				"/WEB-INF/tiles/tiles_myinbox.xml",
				"/WEB-INF/tiles/tiles_blog.xml",
				"/WEB-INF/tiles/tiles_login.xml",
				"/WEB-INF/tiles/tiles_admin_home.xml",
				"/WEB-INF/tiles/tiles_admin_service.xml",
				"/WEB-INF/tiles/tiles_admin_statistical.xml",
				"/WEB-INF/tiles/tiles_admin_employee.xml",
				"/WEB-INF/tiles/tiles_employee_blog.xml",
				"/WEB-INF/tiles/tiles_employee_feedback.xml",
				"/WEB-INF/tiles/tiles_employee_user.xml",
				"/WEB-INF/tiles/tiles_employee_partner.xml",
				"/WEB-INF/tiles/tiles_employee_promotion.xml",
				"/WEB-INF/tiles/tiles_superadmin_account.xml",
				"/WEB-INF/tiles/tiles_superadmin_template.xml",
				
		});
		return configurer;
	}
	//--------------------------------------------------------------
}	
