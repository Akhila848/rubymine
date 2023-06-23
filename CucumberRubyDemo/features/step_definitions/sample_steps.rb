Given(/^user is on registration page$/) do
  $browser.goto("https://qavbox.github.io/demo/signup/?uname=dfcsxzv&datafile=&sgender=select&commit=Submit")
  $text=RegistrationPage.new()
end

Then(/^user enters full name$/) do

  $text.text_field
end

When(/^user enters email$/) do
  # email(RegistrationPage)
  on_page(RegistrationPage).email
  # $text.email
end

# When(/^user enter telephone number$/) do
#   $text.telephone
# end
#
#
#
# When(/^user selects gender$/) do
#   $text.gender
# end
#
# When(/^user selects years of experience$/) do
#   $text.YOE
# end
#
# When(/^user clicks skills$/) do
#   $text.skills
# end
#
# Then(/^user clicks on submit button$/) do
#   $text.submit
# end
#
# And(/^user able to view home button$/) do
#   $text.home
# end
