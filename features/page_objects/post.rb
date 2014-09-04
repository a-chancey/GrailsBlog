require 'page-object'

class Post
  include PageObject
  div(:post, :id => '10')
end