package blogsite

class UserController {

  def userService

  def login = {
    render(view: "login")
  }

  def authenticate = {
    def user = userService.authenticate(params.username, params.password)
    if (user) {
      session.user = user
      redirect(controller: 'post', action: 'list')
    } else {
      flash.errorMessage = "Login failed"
      redirect(action: 'login')
    }
  }

  def logout = {
    session.invalidate()
    redirect(controller: 'post', action: 'list')
  } 
}
