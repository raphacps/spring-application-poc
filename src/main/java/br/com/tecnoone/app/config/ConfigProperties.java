package br.com.tecnoone.app.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:/ApplicationResources_pt_BR.properties")
public class ConfigProperties {

	@Autowired
	private Environment environment;
	
	
	public String getProperty(String property){
		return environment.getProperty(property);
	}
}
