*** Settings ***
Documentation     Initial Setup and Validation for Login page
...               Variables and Credentials loaded from config files
Library     BuiltIn
Library     Collections
Library     SeleniumLibrary
Library    ../../scripts/config_setup.py
Library     ../../scripts/credentials.py


*** Keywords ***
Setup The Test Suite
    Log     Setting up the Test Suite
    Set Library Search Order    SeleniumLibrary
    Load Config Variables
    Log To Console  ${AUT_URL}
    Set Kubeadmin Password

Tear Down The Test Suite
    Log     Tearing Down the Test Suite

