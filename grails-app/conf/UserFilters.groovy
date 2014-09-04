
class UserFilters {
	def filters = {
		authenticated(controller: "post", action: "edit") {
		  before = {
			if (!session.user) {
			  redirect(controller: "user", action: "login")
			  return false
			}
		  }
		}
	  }
}
