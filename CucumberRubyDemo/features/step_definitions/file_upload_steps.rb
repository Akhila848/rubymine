Given("I am on the file upload page") do
  $browser.goto('https://qavbox.github.io/demo/signup/') # Replace with your file upload page URL
  sleep(3)
end

When("I select a file to upload") do
  file_path = File.expand_path('C:\Users\aappilisetti\Documents\cypress.odt') # Replace with the actual file path
  $browser.input(name: 'datafile').set(file_path)
  sleep(3)
end