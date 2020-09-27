require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/switch-window"

alert_button = driver.find_element(id: "alert-button")
alert_button.click
sleep 2
driver.switch_to.alert.accept

driver.quit