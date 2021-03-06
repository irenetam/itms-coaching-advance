require 'selenium-webdriver'
require 'rspec'
require 'json'

$first_name = 'iTMS'
$last_name = 'Coaching'
$job_title = 'QA'
$date = '27/10/2025'
$expected_banner_text = 'The form was successfully submitted!'

def submit_form(driver)
    driver.find_element(id: "first-name").send_keys($first_name )
    driver.find_element(id: 'last-name').send_keys($last_name)
    driver.find_element(id: 'job-title').send_keys($job_title)
    driver.find_element(id: 'radio-button-2').click
    driver.find_element(id: 'checkbox-1').click
    driver.find_element(css: 'option[value="2"]').click
    driver.find_element(id: 'datepicker').send_keys($date)
    driver.find_element(id: 'datepicker').send_keys :return
    driver.find_element(css: '.btn.btn-lg.btn-primary').click
end

def get_banner_text(driver)
    wait = Selenium::WebDriver::Wait.new(timeout: 10) # seconds
    wait.until { driver.find_element(class: 'alert') }
    banner = driver.find_element(class: 'alert')
    banner_text = banner.text
end

describe 'automating a form' do
    before(:each) do
        @driver = Selenium::WebDriver.for :chrome
        @vars = {}
    end
    after(:each) do
        @driver.quit
    end
    it 'submits a form' do
        # driver = Selenium::WebDriver.for :chrome
        @driver.get 'https://itmscoaching.herokuapp.com/form'
        @driver.manage.window.maximize
        submit_form(@driver)
        banner_text = get_banner_text(@driver)
        expect(banner_text).to eql($expected_banner_text)
        # driver.quit
    end
end