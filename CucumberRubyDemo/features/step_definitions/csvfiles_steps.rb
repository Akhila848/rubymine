Given(/^I have a CSV file named "([^"]*)"$/) do |arg|

end

When(/^I read the CSV file$/) do
  @data = []
  file_path = 'C:\Users\C45688\Documents\CSV_Files\samples.csv'

  CSV.foreach(file_path, headers: true) do |row|
    @data << row.to_h
    puts @data
  end
end
#
# Then(/^I should see the following data:$/) do |table|
#   # table is a table.hashes.keys # => [:Name, :Age, :Gender]
#   expected_data = table.hashes
#   puts expected_data
# end