package br.com.casadocodigo.loja.conf;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{AppWebConfiguration.class, JPAConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"}; //indica o caminho (endereco no navegador) que será mapeado pelo spring
	}
	
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter encoding = new CharacterEncodingFilter();
		encoding.setEncoding("ISO-8859-1");
		
		return new Filter[] {encoding};
	}

}
