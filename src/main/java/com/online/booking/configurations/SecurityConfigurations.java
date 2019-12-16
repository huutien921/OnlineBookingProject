package com.online.booking.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter;

import com.online.booking.services.AccountService;

@Configuration
@EnableWebSecurity
public class SecurityConfigurations extends WebSecurityConfigurerAdapter {

	@Autowired
	private AccountService accountService;

	// chan link super admin, admin va employee
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.cors().and().csrf().disable();

		http.authorizeRequests().antMatchers("/superadmin/**").access("hasRole('ROLE_SUPER_ADMIN')")
				.antMatchers("/admin/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
				.antMatchers("/employee/**")
				.access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN') or hasRole('ROLE_EMPLOYEE')")

				.antMatchers("/superuser/**").access("hasRole('ROLE_SUPER_USER') or hasRole('ROLE_USER')").antMatchers("/"
						+ "/**")
				.access("hasRole('ROLE_SUPER_USER')or hasRole('ROLE_ADMIN') or hasRole('ROLE_EMPLOYEE') or hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_USER')")
				.antMatchers("/user/superuser/**")
				.access("hasRole('ROLE_SUPER_USER') or hasRole('ROLE_USER')")
				.antMatchers("/booking/**")
				.access("hasRole('ROLE_SUPER_USER') or hasRole('ROLE_USER')")
				.antMatchers("/user/account/**")
				.access("hasRole('ROLE_SUPER_USER')or hasRole('ROLE_ADMIN') or hasRole('ROLE_EMPLOYEE') or hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_USER')")
				.and().formLogin().loginPage("/login").loginProcessingUrl("/login/process") /*
																							 * url tu khai bao, giong
																							 * voi action trong form
																							 * login
																							 */
				.defaultSuccessUrl("/home/index").failureUrl("/login/index?error").usernameParameter("username") /*
																													 * name
																													 * trong
																													 * form
																													 * login
																													 */
				.passwordParameter("password").and().logout().logoutUrl("/login/logout")
				.logoutSuccessUrl("/login/index?logout").and().exceptionHandling().accessDeniedPage("/home/index");

	}

	@Autowired
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(accountService);
	}

	// ma hoa bcrypt
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityContextHolderAwareRequestFilter awareRequestFilter() {
		return new SecurityContextHolderAwareRequestFilter();
	}

	@Bean
	public SecurityContextPersistenceFilter persistenceFilter() {
		return new SecurityContextPersistenceFilter();
	}
}
