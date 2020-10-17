Feature: Login functionality
    In order to ensure login functionality works,
    I want to run the cucumber test to verify it is working
    Background:
        Given the login page is opnened successfull

    Scenario: login valid
        Given the login page is opnened successfull
        When user input "tomsmith" and password "SuperSecretPassword!"
        Then the message "You logged into a secure area!" should be displayed

    Scenario Outline: login invalid
        When user input "<username>" and password "<password>"
        Then the message "<message>" should be displayed

        Examples:
            | username | password             | message                   |
            | tamphan  | wrong_pass           | Your username is invalid! |
            |          | SuperSecretPassword! | Your username is invalid! |
            | tomsmith |                      | Your password is invalid! |
            | tomsmith | wrong_pass           | Your password is invalid! |


