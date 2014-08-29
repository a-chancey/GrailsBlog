Feature: Blog Comments
  In order to show the rest of the world I'm even smarter than the blogger
  As a Reader
  I want to be able to comment on a blog entry

  Scenario: View Blog Comments
    Given I visit the blog for my favorite blogger
    When I choose a blog post
    Then I should see comments left by other readers

  # Use AJAX for this
  # do not want the page to refresh
  Scenario: Leave a comment (AJAX)
    Given I am reading a blog post from my favorite blogger
    When I add my genius comment to the blog post
    Then my genius comment is at the top of the blog post comments



