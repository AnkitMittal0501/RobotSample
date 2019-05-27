*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary

*** Variables ***
${URL}            http://www.rediffmail.com
@{CREDENTIAL}     ankitkrmittal    vidhu
&{login}          Username=ankitkrmittal    Password=vidhu

*** Test Cases ***
LoginTest
    [Tags]    Test2
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    ClickElement  class=mailicon
    InputText  id=login1  @{CREDENTIAL}[0]
    InputPassword    id=password    &{login}[Password]
    ClickButton    name=proceed
    

TestLoginKywd
    [Tags]    LoginTest
    [Setup]    Log To Console    Test Case start
    sleep  5s
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    ClickElement  class=mailicon
    login
    [Teardown]    Log To Console    Test Case Tear Down

TestTags
    [Tags]    Sanity
    Log To Console    TestTags Started
    Open Browser    http://www.google.com    chrome
    Close All Browsers
    Log To Console    Test Terminated
    Set Tags        Smoke
    Remove Tags     Smoke

*** Keywords ***
login
    Input Text  id=login1  &{login}[Username]
    Input Text  id=password  &{login}[Password]
    ClickButton  name=proceed




