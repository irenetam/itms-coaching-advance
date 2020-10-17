Given("the login page is opnened successfull") do
    $driver.get('http://the-internet.herokuapp.com/login')
    $driver.manage.window.maximize
end

When("user input {string} and password {string}") do |string, string2|
    $driver.find_element(id: 'username').send_keys(string)
    $driver.find_element(id: 'password').send_keys(string2)
    $driver.find_element(css: ".radius").click
end

Then("the message {string} should be displayed") do |string| 
    warning_message = $driver.find_element(id: 'flash').text.delete("\n×")
    expect(warning_message).to eql(string)
end