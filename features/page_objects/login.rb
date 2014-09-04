require 'page-object'

class Login
  include PageObject

  page_url 'http://localhost:8080/BlogSite/user/login'

  text_field(:username, :id => 'username')
  text_field(:password, :id => 'password')
  button(:submit, :id => 'login')
end