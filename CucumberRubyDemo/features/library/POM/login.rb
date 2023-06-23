class Login
  def full_name(username)
    $browser.text_field(:id => 'name').set username
    sleep(1)
  end
  def password(password)
    $browser.text_field(:id => 'password').set password
    sleep(1)
  end
  def login_btn
    $browser.button(:text => 'Login').click
    sleep(1)

  end


end