require 'page-object'

class Blog
  include PageObject

  page_url 'http://localhost:8080/BlogSite/'

  div(:all_posts, :id => 'allposts')
  div(:post1, :id => '1')
  link(:post1_link, :id => '1')
  div(:post2, :id => '2')
  link(:post2_link, :id => '2')
  div(:post3, :id => '3')
  link(:post3_link, :id => '3')
  div(:post4, :id => '4')
  link(:post4_link, :id => '4')
  div(:post5, :id => '5')
  link(:post5_link, :id => '5')
  div(:post6, :id => '6')
  link(:post6_link, :id => '6')
  div(:post7, :id => '7')
  link(:post7_link, :id => '7')
  div(:post8, :id => '8')
  link(:post8_link, :id => '8')
  div(:post9, :id => '9')
  link(:post9_link, :id => '9')
  div(:post10, :id => '10')
  link(:post10_link, :id => '10')
  div(:post11, :id => '11')
  link(:post11_link, :id => '11')
  div(:post12, :id => '12')
  link(:post12_link, :id => '12')

  text_field(:search, :id => 'search')

  #link(:login, :href => '/BlogSite/user/login')

end