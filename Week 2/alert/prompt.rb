require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR07KkNompZA3nb2oIWzCjTivevdl8QycaCa3jqGuTSjdoXj6oHUdPAQ3eQ"

alert_button = driver.find_element(xpath: '//*[@id="easycont"]/div/div[2]/div[3]/div[2]/button')
alert_button.click
sleep 2
# Store the alert reference in a variable
alert = driver.switch_to.alert

# Type a message
alert.send_keys("selenium")

# Press on Ok button
alert.accept

driver.quit