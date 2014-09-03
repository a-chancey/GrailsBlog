$LOAD_PATH << File.dirname(__FILE__)+'/../page_objects'
require 'rubygems'
require 'page-object'

HOST_AND_PORT = 'http://localhost:8080'

def blog_url
  "#{HOST_AND_PORT}/BlogSite/post/list"
end