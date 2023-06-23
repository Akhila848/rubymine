Given(/^user is on login page$/) do
  $browser.goto("https://example.testproject.io/web/")
  $login = Login.new()
end
#
When(/^user enters username"([^"]*)"$/) do |username|
  $login.full_name(username)
end

When(/^user enters password "([^"]*)"$/) do |password|
  $login.password(password)
end

Then(/^click on login button$/) do
  $login.login_btn
end


