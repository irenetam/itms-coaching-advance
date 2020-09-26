require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize
firstName = driver.find_element(id: "first-name")
firstName.send_keys("iTMS")
lastName = driver.find_element(id: 'last-name')
lastName.send_keys('Coaching')
title = driver.find_element(id: 'job-title')
title.send_keys('QA')
level = driver.find_element(id: 'radio-button-2')
level.click
gender = driver.find_element(id: 'checkbox-1')
gender.click
experienceOptions = driver.find_element(id: 'select-menu')
experienceObject = Selenium::WebDriver::Support::Select.new(experienceOptions)
experienceObject.select_by(:value, "2")
datePicker = driver.find_element(id: 'datepicker')
datePicker.send_keys('27/10/2025')
submitButton = driver.find_element(css: '.btn.btn-lg.btn-primary')
submitButton.click
sleep 2
driver.quit
