*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Test to perform google com
    [Documentation]  This is first file
    open browser  http://www.google.com  chrome
*** Keywords ***
Provided precondition
    Setup system under test