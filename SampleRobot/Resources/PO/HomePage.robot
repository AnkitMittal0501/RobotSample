*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${URL}            http://www.rediffmail.com
*** Keywords ***
Launch Browser and Open URL
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Open Login Page
    ClickElement  class=mailicon




