package blogsite


class PostController {
	static defaultAction = 'list'

	def edit = {
		def post = Post.get(params.id)
		if(!post) {
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}

	def postList = {
		[posts: Post.list(params), postCount: Post.count()]
	}
	
	def list = {
		render(
				view:'list',
				model:[posts:Post.list(sort:'lastUpdated',
					order:'desc'), postCount:Post.count(), offset:'0'])
	}

	def save = {
		//hack job here, may get refactored - necessary to get the post to save on edit
		def editPost = params
		def post = loadPost(params.id)
		post.title = editPost.title
		post.content = editPost.content
		post.teaser = editPost.teaser

		if(post.save(true)) {
			redirect(action:'list')
		} else {
			render(view:'edit', model:[post:post])
		}
	}
	
	def view = {
		render(view:'view', model:[post:Post.get(params.id)])
	}
	
	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
		}
		return post
	}
}
