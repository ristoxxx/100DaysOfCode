*** Settings ***
Documentation  This is *** web page test suite
Library  SeleniumLibrary
Library  Collections
Test Setup          Start web test     ${BROWSER}
Test Teardown       End web test
# use the below line (without the # sign) to run the script
# robot -d results tests

*** Variables ***
${URL}                                  https://ristoxxx100daysofcode.tiiny.site
${BROWSER}                              firefox
${KEY_TAG_START_PAGE}                   Title


*** Test Cases ***
Validte start page
    [Documentation]                     Test
    [Tags]                              Smoke
    Validte start page 
    

*** Keywords ***
Start web test
    [Arguments]    ${BROWSER}
    open browser    about:blank     ${BROWSER}

End web test
    sleep    5 s
    close browser

Validte start page
    go to               ${URL}
    wait until page contains      ${KEY_TAG_START_PAGE}