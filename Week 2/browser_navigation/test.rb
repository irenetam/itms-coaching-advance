require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :firefox
html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/test.html"
browser.get "file:///" + html_file
 
browser.quit