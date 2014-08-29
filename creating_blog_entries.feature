Feature: Post a Blog Entry
  In order to show the rest of the world how smart I am
  As a Blogger
  I want to be able to post a blog entry

  Scenario: New Blog Post
    Given I am logged in as a blogger
    When I publish a new blog post
    Then I am notified that the blog post was successfully added
    And the newly added blog post is at the top of the recent posts list
