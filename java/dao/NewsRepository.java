package dao;
import java.util.ArrayList;

import dto.News;

public class NewsRepository {
	
	public ArrayList<News>listOfNews=new ArrayList<News>();
	
	private static NewsRepository instance=new NewsRepository();
	
	public static NewsRepository getInstance() {
		return instance;
	}
	public void addNews(News news) {
		listOfNews.add(news);
	}

	public NewsRepository() {
		
	}
	
	public ArrayList<News> getAllNews(){
		return listOfNews;
	}
	
	public News getNewsById(String newsId) {
		News newsById=null;
		
		for(int i=0;i<listOfNews.size();i++) {
			News news=listOfNews.get(i);
			if(news!=null&&news.getNewsId()!=null&&
					news.getNewsId().equals(newsId)) {
				newsById=news;
				break;
			}	
		}
		return newsById;
	}
}
