package in.bank.cards.config;

import java.util.List;
import java.util.Map;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Configuration
@ConfigurationProperties(prefix ="cards")

public class CardsConfigService {

	private String msg;
	private String buildVersion;
	private Map<String, String> mailDetails;
	private List<String> activeBranchesList;
	public String getMsg() {
		// TODO Auto-generated method stub
		return null;
	}
	public String getBuildVersion() {
		// TODO Auto-generated method stub
		return null;
	}
	public Map<String, String> getMailDetails() {
		// TODO Auto-generated method stub
		return null;
	}
	public List<String> getActiveBranches() {
		// TODO Auto-generated method stub
		return null;
	}
}
	
	