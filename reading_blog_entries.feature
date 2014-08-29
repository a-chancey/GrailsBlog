Feature: View Blog Entries
  In order to stay up todate
  As a Reader
  I want to be able to view blog posts of my favorite blogger

  Scenario: View Recent Blog Posts
    Given my favorite blogger has been very active
    When I visit the blog for my favorite blogger
    Then then I should see a summary of my favorite blogger's 10 most recent posts in reverse order

  Scenario: View a Blog Post
    Given I visit the blog for my favorite blogger
    When I choose a blog post
    Then I should see the blog post

  Scenario: Search for Blog Post
    Given I visit the blog for my favorite blogger
    When I search for a blog post
    Then I should see posts with that value in the title