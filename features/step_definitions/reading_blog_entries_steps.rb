Given(/^my favorite blogger has been very active$/) do

end

When /^I visit the blog for my favorite blogger$/ do
  visit_page Blog
end

Then  /^I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/ do
  on_page Blog do |page|
    expect(page.post1).not_to be_empty
    expect(page.post2).not_to be_empty
    expect(page.post3).not_to be_empty
    expect(page.post4).not_to be_empty
    expect(page.post5).not_to be_empty
    expect(page.post6).not_to be_empty
    expect(page.post7).not_to be_empty
    expect(page.post8).not_to be_empty
    expect(page.post9).not_to be_empty
    expect(page.post10).not_to be_empty
  end
end

When(/^I choose a blog post$/) do
  on_page Blog do |page|
    page.post10_link
  end
end

Then(/^I should see the blog post$/) do
  on_page Post do |page|
    expect(page.post).not_to be_empty
  end

end
#
# When(/^I search for a blog post$/) do
#
# end
#
# Then(/^I should see posts with that value in the title$/) do
#
# end

