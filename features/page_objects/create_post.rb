require 'page-object'

class CreatePost
  include PageObject

  page_url 'http://localhost:8080/BlogSite/post/edit'

  text_field(:title, :id => 'title')
  text_field(:teaser, :id => 'teaser')
  text_field(:post, :id => 'content')
  button(:submit, :id => 'submit')
end