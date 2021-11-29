*** Settings ***
Resource  ../../tests/Keywords/setup.robot
Resource  ../../tests/Keywords/OpenshiftLogin.robot
Resource  ../../tests/Keywords/OpenshiftProjects.robot
Suite Setup  Setup The Test Suite
Suite Teardown  Tear Down The Test Suite
Test Setup  Given Login To Openshift
Test Teardown  Close Browser

*** Test Cases ***
Scenario: The User Successfully Selects Create Project Button
    When The User Clicks On Create Project Button
    Then Create Project Window Appears