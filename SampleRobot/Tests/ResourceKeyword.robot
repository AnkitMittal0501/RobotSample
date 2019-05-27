*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
&{login}          Username=ankitkrmittal    Password=vidhu

*** Keywords ***
login
    Input Text  id=login1  &{login}[Username]
    Input Text  id=password  &{login}[Password]
    ClickButton  name=proceed
