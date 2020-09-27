require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/buttons"
button = driver.find_element(xpath: '//button[.="Primary"]')
#get tag text
button_text = button.text

#get tag name
button_tagname = button.tag_name

#print
puts "BUTTON TEXT: #{button_text}"
puts "BUTTON TAG: #{button_tagname}" 

#het current url
puts driver.current_url
puts driver.title

#takes and stores the screenshot in specifield path
driver.save_screenshot('./form_itmscoaching.png')
sleep 2
driver.quit
