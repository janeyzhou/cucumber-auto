Given(/^User go to amazon page$/) do
  amazon_home_page.visit
end

When(/^User click Your Amazon\.com button$/) do
  amazon_home_page.your_amazon_link.click
end

Then(/^Go to login page$/) do
  @browser.title(:"Amazon Sign In").wait_until_loaded

end

