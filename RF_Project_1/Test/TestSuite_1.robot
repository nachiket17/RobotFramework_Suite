*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside the Test Suite Setup
Suite Teardown    Log    I am inside the Test Suite Teardown
Test Setup    Log    I am inside the Test Setup
Test Teardown    Log    I am outside the Test Testdown

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{Credentials}    Admin    admin123
${USRID}    Admin
${PSWD}    admin123


*** Test Cases ***

TC_001
    Log    Hello World...    
    
TC_002_SeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    robotframework
    Click Button    name=btnK   
    Set Browser Implicit Wait    5   
    Close Browser
    Log    Test Completed
    
TC_003_LoginTest
    [Documentation]    this is asample Login Test
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Login_KW            
    Click Element    id=welcome    
    Set Browser Implicit Wait    5
    Click Link    //*[@id="welcome-menu"]/ul/li[3]/a
    Close Browser
    Log    Test Completed    
    
TC_004_LoginTest_Variable
    [Documentation]    this is a sample Login Test using variables
    Open Browser    ${URL}    chrome
    Login_KW           
    Click Element    id=welcome    
    Set Browser Implicit Wait    5
    Click Link    //*[@id="welcome-menu"]/ul/li[3]/a
    Close Browser
    Log    Test Completed
    Log    This was executed by %{username} on %{os} system
    
TC_005
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    robotframework
    Click Button    name=btnK   
    Set Browser Implicit Wait    5   
    Close Browser
    Log    Test Completed
    
*** Keywords ***
Login_KW
    Input Text    id=txtUsername    ${USRID}
    Input Text    id=txtPassword    ${PSWD}
    Click Button    id=btnLogin            