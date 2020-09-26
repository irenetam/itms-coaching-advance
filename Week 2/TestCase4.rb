require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'https://google.com'
driver.manage.window.maximize
puts driver.current_url 
sleep 2
driver.quit
