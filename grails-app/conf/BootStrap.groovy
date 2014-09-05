import blogsite.Post
import blogsite.User

class BootStrap {

	def init = { servletContext ->

		new Post(title:"First Grails Project",
		teaser:"Clearing out the clutter",
		content:"The full content of the article",
		published:true).save()

		new Post(title:"Getting Ready for Go Live",
		teaser:"The follow up on some real world issues.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Yet another post",
		teaser:"had to generate this",
		content:"The full content of the article",
		published:true).save()

		new Post(title:"A post again?",
		teaser:"well at least this will go quick",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Time management",
		teaser:"how to save time writing",
		content:"The full content of the article",
		published:true).save()

		new Post(title:"Who is the target",
		teaser:"targets of your business",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Bob Funland's arcade",
		teaser:"come to bob's for fun",
		content:"The full content of the article",
		published:true).save()

		new Post(title:"The other guys",
		teaser:"do they have the answers",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Friends and enemies",
		teaser:"some guy wrote all this",
		content:"The full content of the article",
		published:true).save()

		new Post(title:"last test post of the millenium",
		teaser:"it's all over man.",
		content:"The full content of the article",
		published:false).save()
		
		new Post(title:"Ignore that last guy, this is the last post",
			teaser:"it's finally over man",
			content:"The full content of the article is a lot cooler",
			published:false).save()

		new User(username:"me",
		password:"password",
		firstName:"A",
		lastName:"Developer").save()
	}
	def destroy = {
	}
}
