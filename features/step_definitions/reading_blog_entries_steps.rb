Given(/^my favorite blogger has been very active$/) do

end
#defined in common_steps
# When /^I visit the blog for my favorite blogger$/ do
#   visit_page Blog
# end

Then  /^I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/ do
  on_page Blog do |page|
    expect(page.all_posts).not_to be_empty
  end
end
#defined in common_steps
# When(/^I choose a blog post$/) do
#   on_page Blog do |page|
#     page.post2_link
#   end
# end

Then(/^I should see the blog post$/) do
  on_page Post do |page|
    expect(page.post).not_to be_empty
  end

end

When(/^I search for a blog post$/) do
  on_page Blog do |page|
    page.search = 'First'
  end
end

Then(/^I should see posts with that value in the title$/) do
  on_page Blog do |page|
    test_page_div = page.post1_element.html
    expect(test_page_div).to  include('display: block;')
  end
end

