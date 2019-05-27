*** Settings ***
Library  SeleniumLibrary
Resource  PO/LoginPage.robot

*** Keywords ***
Login to Rediffmail
    Enter Username
    Enter Password
    Click Login
