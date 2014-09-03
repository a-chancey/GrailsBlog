require 'page-object'

class Post
  include PageObject

  div(:post, :id => '1')
  link(:comment_link, :href => '/BlogSite/comment/edit/1')

end