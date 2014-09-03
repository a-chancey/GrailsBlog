require 'page-object'

class Blog
  include PageObject

  page_url 'http://localhost:8080/BlogSite/'

  div(:post1, :id => '1')
  link(:post1_link, :href => '/BlogSite/post/view/1')
  div(:post2, :id => '2')
  div(:post3, :id => '3')
  div(:post4, :id => '4')
  div(:post5, :id => '5')
  div(:post6, :id => '6')
  div(:post7, :id => '7')
  div(:post8, :id => '8')
  div(:post9, :id => '9')
  div(:post10, :id => '10')


end