package blogsite

class Comment implements Comparable{
	static belongsTo = Post
	Post post
	String comment
	Commentator who = new Commentator()
	Date dateCreated

	
    public int compareTo(Object o) {
		return o.dateCreated.compareTo(dateCreated)
	}
	
	static constraints = {
    }
}
