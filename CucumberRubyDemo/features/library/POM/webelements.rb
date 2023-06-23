class WebElements

  def name
    $browser.text_field(:id => 'name').send_keys'Akhila'
    sleep(1)
  end
  def email
    $browser.text_field(:id => 'email').send_keys'akhila@gmail.com'
    sleep(1)
  end
  def phone
    $browser.text_field(:id => 'phone').send_keys'564654545'
    sleep(1)
  end
  def address
    $browser.textarea(:id => 'textarea').send_keys '3-1-35, Sarada Nagar, Narsipatnam'
    sleep(1)
  end
  def gender

    $browser.radio(:id => 'male').click
    sleep(1)
  end
  def days
    $browser.checkbox(:xpath => "//input[@id='tuesday']").click
    sleep(1)
  end
  def country
    # $browser.select_list(:id => 'country').click
    # sleep(1)
    $browser.option(:text => 'Germany').click
    sleep(1)
  end
  def color
    $browser.option(:text=> 'Green').click
    sleep(1)
  end
  def date
    $browser.text_field(:xpath => "//input[@id='datepicker']").click
    sleep(1)

    i= $browser.a(:class => "ui-datepicker-next ui-corner-all")
    for a in 1..2 do
      i.click
      sleep(2)
    end
    $browser.a(:xpath => "//a[normalize-space()='30']").click
  end
  # def tabs
  #   $browser.text_field(:class => "wikipedia-search-input").send_keys 'Greece'
  #   $browser.button(:class => "wikipedia-search-button").click
  #   $browser.button(:class => "wikipedia-search-button").click
  #   $browser.button(:class => "wikipedia-search-button").click
  #
  #   $browser.button(:class => "wikipedia-search-button").click
  #
  #
  #   hyperlink=$browser.a(:href => "https://en.wikipedia.org/wiki/Greece").text
  #   puts hyperlink
  #   sleep(1)
  #     if hyperlink.eql('Greece')
  #       puts "hello i'm"
  #       hyperlink.click
  #     end
  #     sleep(2)
  #   end

  def new_browser_window
    $browser.button(:onclick => "myFunction()").click
    puts "hey I'm on new page"
    sleep(1)
    windows_to_close = $browser.windows.drop(1)
    windows_to_close.each(&:close)
    sleep(2)

  end
  def alert
    $browser.button(:text => "Alert").click
    sleep(1)
    # $browser.switch.alert.accept
    $browser.alert.ok
  end
  def confirm_box
    $browser.button(:text => "Confirm Box").click
    $browser.alert.close
    # $browser.alert.ok
    sleep(1)
  end
  def prompt_box
    $browser.button(:text => "Prompt").click
    #
    # $browser.switch.send_keys("hello")
    $browser.alert.close

    sleep(1)
  end



  end
