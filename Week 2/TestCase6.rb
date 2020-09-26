require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox #chrome
driver.get 'https://google.com'
driver.manage.window.maximize
search = driver.find_element(name:"q")
search.send_keys "iTMS Coaching"
search.send_keys(:enter)
puts driver.title
sleep 2
driver.quit
