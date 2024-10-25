*** Settings ***
# General documentation for this test case
Documentation    This test case is to validate the Login feature of the webpage against valid and invalid datasets.

# Libraries used in this test case
Library          SeleniumLibrary
Library          DataDriver    file=../Resources/Upload/data.csv    encoding=utf_8    dialect=unix

# Setup actions before the test
Test Setup       Open Webpage URL    ${browser_name}    ${webpage_url}

# Template keyword used for the test case
Test Template    Validate User Login

# Teardown actions after the test
Test Teardown    Close The Browser

# Variables files for locators and test data
Variables        ../Resources/PageObject/Locators/test_locators.py
Variables        ../Resources/PageObject/TestData/test_data.py

# Resource files for additional keyword definitions
Resource         ../Resources/PageObject/KeywordDefinitionFiles/generic.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/loginpage.robot

*** Test Cases ***
# Test case using DataDriver to run the test with multiple datasets
Login with the username ${username} and the password ${password}    ${placebo_username}    ${placebo_password}

*** Keywords ***
# Keyword to validate user login
Validate User Login
    [Tags]    SMOKE
    [Arguments]    ${username}    ${password}
    # Enter user credentials and login
    Enter User Credentials And Login   ${username}    ${password}
    # Verify if the home page is successfully logged in
    Verify HomePage Login
