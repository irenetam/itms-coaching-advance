require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR07KkNompZA3nb2oIWzCjTivevdl8QycaCa3jqGuTSjdoXj6oHUdPAQ3eQ"

alert_button = driver.find_element(css: ".btn.btn-default.btn-lg")
alert_button.click
sleep 2
# Store the alert reference in a variable
alert = driver.switch_to.alert

# Store the alert text in a variable
alert_text = alert.text

# Press on Cancel button
alert.dismiss

driver.quit