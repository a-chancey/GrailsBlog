Given /^I visit a blog for my favorite blogger$/ do
  visit_page Blog
end

When(/^I choose some blog post$/) do
  on_page Blog do |page|
    page.post2_link
  end
end

Then(/^the url should contain information about the post$/) do
  on_page Post do |page|
    expect(page.current_url).to include('First-Grails-Project')
  end
end