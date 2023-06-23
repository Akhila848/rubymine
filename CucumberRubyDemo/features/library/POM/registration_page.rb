class RegistrationPage
  include PageObject

  def text_field
    $browser.text_field(:name => 'uname').send_keys 'Akhila'
    sleep(1)

  end

  def email
    $browser.text_field(:id => 'email').send_keys 'akhila@gmail.com'
    sleep(1)
  end
  def telephone
    $browser.text_field(:id => 'tel').send_keys '8096973341'
    sleep(1)
  end

  def gender
    $browser.select_list(:name => 'sgender').click
    sleep(1)
    $browser.option(:text => 'Male').click
    sleep(1)
  end
  def YOE
    # $browser.radio(:value => 'two').click
    $browser.radio(:xpath =>"//input[@type='radio'][1]").click
    sleep(1)
  end
  def skills
    $browser.checkbox(:value => 'manualtesting').click
    # $browser.radio(:xpath =>"//input[@id='ip'][2]").click
    sleep(1)
  end
  def submit
    $browser.button(:class => 'btn').click
    sleep(1)
  end

  def be(i)
    # code here
  end


  def home
    home = $browser.button(:name => 'home').text
    $one_btn = home
    puts($one_btn)
    expect($one_btn).to eql('Home')
    # expect($one_btn).to eql('Home')
  end
end