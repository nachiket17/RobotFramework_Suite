*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/PHP_Keywords.robot

*** Test Cases ***
TC_001_LogIn to Application
    Application Login