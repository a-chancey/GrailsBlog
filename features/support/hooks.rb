require 'watir-webdriver'
require 'watir-webdriver/extensions/alerts'
require 'page-object'

include PageObject::PageFactory

Before do
  @browser = Watir::Browser.new :firefox
end

After do
  #@browser.close
end