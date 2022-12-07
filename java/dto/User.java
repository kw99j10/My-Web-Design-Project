package dto;
import java.io.Serializable;
public class User implements Serializable{
	
	private static final long serialVersionUID=-4274700572038677000L;

	private String userId;
	private String name;
	private Integer old;
	private Integer number;
	private String position;
	private String country;
	private String filename;
	
	public User() {
		super();
	}
	
	public User(String userId, String name, String position) {
		this.userId = userId;
		this.name = name;
		this.position=position;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getOld() {
		return old;
	}
	public void setOld(Integer old) {
		this.old = old;
	}
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
