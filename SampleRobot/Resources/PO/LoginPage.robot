*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  ExcelLibrary
*** Variables ***
&{login}          Username=ankitkrmittal    Password=vidhu

*** Keywords ***
Enter Username
    Input Text  id=login1  &{login}[Username]
Enter Password
    Input Text  id=password  &{login}[Password]
Click Login
    ClickButton  name=proceed


