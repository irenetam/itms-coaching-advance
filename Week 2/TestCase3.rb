require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'https://google.com'
driver.manage.window.maximize
title = driver.title
puts title
sleep 2
driver.quit
