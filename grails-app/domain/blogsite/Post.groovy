package blogsite

import java.util.Date;
import java.util.SortedSet;

class Post {
	static hasMany = [comments:Comment]
	
	String title
	String teaser
	String content
	Date lastUpdated
	Boolean published = false
	SortedSet comments

	
	static constraints = {
		title(nullable:false, blank:false, length:1..50)
		teaser(length:0..100)
		content(nullable:false, blank:false)
		lastUpdated(nullable:true)
		published(nullable:false)
	}
    
}
