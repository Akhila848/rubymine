class Pagination
  def entries
    $browser.window.maximize
      $browser.select_list(:name => 'example_length').click
    sleep(1)
    $browser.option(:text => '25').click
    sleep(1)
  end
  def page_num
    # $browser.a(:xpath => "(//a[normalize-space()='2'])").click
    # sleep(1)
    # $ab = $browser.a(:xpath => "//*[@class='paginate_button ']").click
    $btn = $browser.a(:xpath => "//a[@id='example_next']")
    # puts $btn
    $btn.each { |j|
      $btn.click

      sleep(2)


    }
  end
  end