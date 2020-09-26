require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'http://www.practiceselenium.com/check-out.html'
driver.manage.window.maximize
selectOptions = driver.find_element(id: 'card_type')
selectObject = Selenium::WebDriver::Support::Select.new(selectOptions)
selectObject.select_by(:text, "Visa")
sleep 2
driver.quit

