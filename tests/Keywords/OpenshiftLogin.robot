*** Settings ***
Resource        setup.robot
Resource        ../Data/TestData.robot
Resource        ../OR/LoginOR.robot

*** Keywords ***
Login To Openshift
    Open Browser  ${AUT_URL}   browser=${browser}   options=${browser_options}
    Wait Until Page Contains Element     ${title_loginpage}  timeout=10s
    Page Should Contain Element     ${txtbx_username}
    Page Should Contain Element     ${txtbx_password}
    Page Should Contain Element     ${btn_login}
    Input Text  ${txtbx_username}   ${login_page_username}
    Input Text  ${txtbx_password}   ${KUBEADMIN_PASSWD}


