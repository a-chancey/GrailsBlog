require 'page-object'

class Post
  include PageObject
  div(:post, :id => 'content')
end