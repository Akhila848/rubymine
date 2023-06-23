Given(/^I am on the homepage$/) do
  $browser.goto('https://datatables.net/examples/advanced_init/dt_events.html')
  $browser.window.maximize
end

When(/^I click on the Next button for n number of times$/) do
  # $browser.a(xpath: "//*[@class='paginate_button ']").click
  i = $browser.a(class: "paginate_button next")
  for a in 1..5 do
    i.click
    sleep(2)
  end
  end