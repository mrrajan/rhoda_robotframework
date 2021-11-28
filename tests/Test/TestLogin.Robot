*** Settings ***
Resource  ../../tests/Keywords/setup.robot
Resource  ../../tests/Keywords/OpenshiftLogin.robot
Suite Setup  Setup The Test Suite
Suite Teardown   Tear Down The Test Suite


*** Test Cases ***
Scenario: The User Creates A Openshift Project With Kubeadmin Credentials
    Log To Console  Nothing
