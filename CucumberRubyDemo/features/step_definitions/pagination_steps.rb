When(/^user selects number of entries$/) do
  $browser.goto("https://datatables.net/examples/advanced_init/dt_events.html")
  $page = Pagination.new()
  $page.entries
end

When(/^user selects page number$/) do
  $page.page_num
end

When(/^I modify an ingredient on first page$/) do |table|
  # table is a table.hashes.keys # => [:Name, :Position, :Office, :Age, :Start date, :Salary]
  pending
  When(/^I modify an ingredient on second page$/) do |ingredients_price|
    on_page(PriceListNA) do |page|
      page.page_size_element.click
      page.li(xpath: '//*[@id="menu-"]/div[3]/ul/li[4]').click
      2.times do
        page.next_page_element.click
      end
      sleep(1)
      page.modify_price_list(ingredients_price.symbolic_hashes.first)
    end
  end
end