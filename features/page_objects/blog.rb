require 'page-object'

class Blog
  include PageObject

  page_url 'http://localhost:8080/BlogSite/blog/index'

  div(:blog_list, :id => 'list-blog')
  text_field(:blog_post1, :id => 'Post1')
  text_field(:blog_post2, :id => 'Post2')
  text_field(:blog_post3, :id => 'Post3')
  text_field(:blog_post4, :id => 'Post4')
  text_field(:blog_post5, :id => 'Post5')
  text_field(:blog_post6, :id => 'Post6')
  text_field(:blog_post7, :id => 'Post7')
  text_field(:blog_post8, :id => 'Post8')
  text_field(:blog_post9, :id => 'Post9')
  text_field(:blog_post10, :id => 'Post10')
end