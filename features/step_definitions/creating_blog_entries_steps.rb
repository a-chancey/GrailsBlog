Given(/^I am logged in as a blogger$/) do
  visit_page Login

  on_page Login do |page|
    page.username = 'me'
    page.password = 'password'
    page.submit
  end
end

When(/^I publish a new blog post$/) do
  visit_page CreatePost
  on_page CreatePost do |page|
    page.title = 'RubyMade Blog Post'
    page.teaser = 'Secret blog made from a ruby test'
    page.post = 'This is a sample blog entry made by a ruby test. Who knows what black magic it employed to do this'
    page.submit
  end
end

Then(/^I am notified that the blog post was successfully added$/) do
  expect(true)
  #####################################
  #####################################
  #####################################
  ###############FIX THIS##############
end

And(/^the newly added blog post is at the top of the recent posts list$/) do
  on_page Blog do |page|
    expect(page.post11).not_to be_empty
  end
end