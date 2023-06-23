
Given(/^user is on web page$/) do
  $browser.goto("https://testautomationpractice.blogspot.com/")
  $webelement=WebElements.new()
  # $browser.execute_script("window.scrollBy(0, window.innerHeight);")

end

When(/^user enters Name$/) do
  $webelement.name
end

When(/^user enters Email$/) do
  $webelement.email
end

When(/^user enters Phone$/) do
  $webelement.phone
end

When(/^user enters Address$/) do
  $webelement.address
end

When(/^user selects gender$/) do
  $webelement.gender
end

When(/^user checks days$/) do
  $webelement.days
end

When(/^user selects countries$/) do
  $webelement.country
end

When(/^user selects colors$/) do
  $webelement.color
end

When(/^user selects date$/) do
  $webelement.date
end


When(/^user clicks new browser window$/) do
  # $webelement.new_browser_window
  $webelement.new_browser_window
  new_browser_window if $browser.windows.count > 1
  puts "hey, I'm get back to original window"
  sleep(2)
end

When(/^user clicks alert$/) do
  $webelement.alert
end

When(/^user clicks confirm box$/) do
  $webelement.confirm_box
end

When(/^user cancels prompt message$/) do
  $webelement.prompt_box
end

When("I resize the element with ID {string} to width {int} and height {int}") do |resizable, width, height|
  $browser.execute_script("window.scrollBy(0, window.innerHeight);")
  element = $browser.div(:id => resizable)
  $browser.execute_script("arguments[0].style.width = '#{width}px'; arguments[0].style.height = '#{height}px';", element)
  sleep(3)
end
When(/^I drag and drop the element$/) do
  source_element =  $browser.div(:id => 'draggable')

  puts source_element.text
  target_element = $browser.div(:id => 'droppable')
  # puts target_element.text
  source_element.drag_and_drop_on target_element
  sleep(1)
end


When(/^user double clicks for copy text$/) do
  copy_text = $browser.button(:xpath => "//button[normalize-space()='Copy Text']")
  copy_text.double_click
  sleep(2)
end


When('user validates title') do
  title=$browser.h1(:class => "title").text
  puts title
  assert = "Automationtjfgjfgjf Testing Practice"

  if title == assert
    puts "true"
  else
    puts "false"
  end

end

When('user slides the slider') do
  slider = $browser.div(:id => "slider")
  value=50
  slider.scroll.to(50)
end

When(/^user retrieves the table data$/) do
  # @table_data = $browser.table(:name => 'BookTable').rows.map do |row|
  #   row.cells.map(&:text)
  table_data= $browser.table(:name => 'BookTable').text
    puts table_data
    # end
end

When(/^user selects the particular page table data$/) do
  $browser.a(:xpath => "//a[normalize-space()='3']").click
  sleep(1)
end