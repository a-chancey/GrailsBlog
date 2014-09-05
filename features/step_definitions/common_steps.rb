Given /^I visit the blog for my favorite blogger$/ do
  visit_page Blog
end

When(/^I choose a blog post$/) do
  on_page Blog do |page|
    page.post2_link
  end
end