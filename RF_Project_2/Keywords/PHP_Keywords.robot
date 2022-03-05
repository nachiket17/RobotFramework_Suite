*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/PHP_Variables.robot        

*** Keywords ***

Application Login
    Open Browser    ${PHP_URL}    chrome
    Maximize Browser Window
    Input Text    name=email    ${USRID}
    Input Password    name=password    ${PWD}
    Sleep    5    
    Click Button    /html/body/div[1]/div/div[2]/div[2]/div/form/div[3]/button
    Close Browser            
    
    





