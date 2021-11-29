*** Settings ***
Resource        setup.robot
Resource        ../Data/TestData.robot
Resource        ../OR/ProjectsOR.robot

*** Keywords ***
The User Clicks On Create Project Button
    Wait Until Page Contains Element     ${lnk_nav_Projects}
    Click Element  ${lnk_nav_Projects}
    Page Should Contain Element     ${lbl_projects_title}
    Page Should Contain Element     ${btn_create_project}
    Click Element  ${btn_create_project}

Create Project Window Appears
    Page Should Contain Element  ${frm_create_project}
    Page Should Contain Element  ${txtbx_create_prj_name}
    Page Should Contain Element  ${txtbx_create_prj_display}
    Page Should Contain Element  ${txtbx_create_prj_desc}
    Page Should Contain Element  ${btn_create_prj_create}
    Page Should Contain Element  ${btn_create_prj_cancel}
