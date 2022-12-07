package dto;
import java.io.Serializable;
public class News implements Serializable{
	
	private static final long serialVersionUID=-4274700572038677000L;

	private String newsId;
	private String title;
	private String description;
	private String filename;
	
	public News() {
		super();
	}
	
	public News (String newsId, String title, String description) {
		this.newsId = newsId;
		this.title=title;
		this.description=description;
	}
	
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	

	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
