*** Settings ***
Resource  Resources/Common.robot
Resource  Resources/Rediffmail.robot
*** Test Cases ***
TestLoginKywd
    [Tags]    LoginTest
    [Setup]    Log To Console    Test Case start
    Launch login page
    Login to Rediffmail
    [Teardown]    Log To Console    Test Case Tear Down
