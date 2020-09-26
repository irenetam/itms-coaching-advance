require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'https://google.com'
driver.quit
