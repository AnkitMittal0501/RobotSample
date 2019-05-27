*** Settings ***
Documentation  This is some basic info about Robot
Library  SeleniumLibrary





*** Variables ***
${Browser}  chrome
${Url}  https://www.flipkart.com
*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  ${Url}  chrome
    maximize browser window
    Sleep  3s
    wait until page contains  Flipkart.com
    #@{list}  Get Window Handles
    #select window  @{list}
    click button  css=body > div.mCRfo9 > div > div > button
    input text  name=q  Shoes
    click button  xpath=//button[@class='vh79eN']
    sleep  5s
    click image  Flipkart
    sleep  5s
    click link  xpath=//a[@class='_3wkiBG']
    Close Browser
*** Keywords ***
