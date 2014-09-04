require 'page-object'

class Blog
  include PageObject

  page_url 'http://localhost:8080/BlogSite/'

  div(:post1, :id => '1')
  link(:post1_link, :href => '/BlogSite/post/view/1')
  div(:post2, :id => '2')
  link(:post2_link, :href => '/BlogSite/post/view/2')
  div(:post3, :id => '3')
  link(:post3_link, :href => '/BlogSite/post/view/3')
  div(:post4, :id => '4')
  link(:post4_link, :href => '/BlogSite/post/view/4')
  div(:post5, :id => '5')
  link(:post5_link, :href => '/BlogSite/post/view/5')
  div(:post6, :id => '6')
  link(:post6_link, :href => '/BlogSite/post/view/6')
  div(:post7, :id => '7')
  link(:post7_link, :href => '/BlogSite/post/view/7')
  div(:post8, :id => '8')
  link(:post8_link, :href => '/BlogSite/post/view/8')
  div(:post9, :id => '9')
  link(:post9_link, :href => '/BlogSite/post/view/9')
  div(:post10, :id => '10')
  link(:post10_link, :href => '/BlogSite/post/view/10')


end