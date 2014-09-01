Given(/^my favorite blogger has been very active$/) do

end

When /^I visit the blog for my favorite blogger$/ do
  visit_page Blog
end

Then  /^I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/ do
  on_page Blog do |page|
    #page.blog_post1.should match /random blog post text/
    #page.div(:id, 'list-blog').exists?.should be_true
    page.blog_list.should match /Blog List/
  end
end

#
# When(/^I choose a blog post$/) do
#
# end
#
# Then(/^I should see the blog post$/) do
#
# end
#
# When(/^I search for a blog post$/) do
#
# end
#
# Then(/^I should see posts with that value in the title$/) do
#
# end