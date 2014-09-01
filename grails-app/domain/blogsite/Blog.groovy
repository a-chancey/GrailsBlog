package blogsite

class Blog {
	String blog
	Date datePosted
	String author
	
    static constraints = {
		blog(maxSize:1000, nullable: false)
		datePosted(nullable: false)
		author(nullable: false)
    }
}
