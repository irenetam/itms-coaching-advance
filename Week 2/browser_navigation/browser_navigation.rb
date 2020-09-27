require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
############ Navigate to ############
# Convenient way
driver.get 'http://google.com'
# Longer Way
# driver.navigate.to 'https://selenium.dev'
####################################

############ Refresh ############
# Refresh the current page:
driver.navigate.refresh
####################################