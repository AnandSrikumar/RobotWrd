*** Settings ***
Resource        ./Locators/WEB/Locator.robot


*** Keywords ***
Click Home Image On Welcome Page
    log to console  >>>>Clicked on Home image
    Selenium2Library.Click Element   ${HOME_IMAGE}
    sleep       3s
    log to console  >>>>Clicked on Next button
    Selenium2Library.Click Element   ${NEXT_BUTTON}
    sleep       3s
    log to console  >>>>Clicked on Next button
    Selenium2Library.Click Element   ${NEXT_BUTTON}
    sleep       3s

Get Pin To Authenticate The Device
    ${val}=     Get Element Attribute    ${Pin}  ng-reflect-value
    log to console  ${val}
    accessPin   ${val}  ${ROOT}
    sleep       3s
Click Next In Device Info Page
    sleep  7s
    Selenium2Library.Click Element   ${NEXT_BUTTON}
    sleep  7s

Select BatteryCharging Flow and Click Next
     Selenium2Library.Click Element   ${BATTERY}
     sleep      3s
     Selenium2Library.Click Element   ${NEXT_BUTTON}
     sleep  3s

Select FreezeAndCrash Flow and Click Next
     Click Element   ${FREEZE_CRASH}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select Connectivity Flow and Click Next
     Click Element   ${CONNECTIVITY}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select AudioVibrate Flow and Click Next
     Click Element   ${AUDIO_VIBRATE}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select Camera Flow and Click Next
     Click Element   ${CAMERA}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select DisplayTouch and Click Next
     Click Element   ${DISPLAY_TOUCH}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select Apps Flow and Click Next
     Click Element   ${APPS}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select Hardware and Click Next
     Click Element   ${HARDWARE}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Select Run All Flow and Click Next
     Click Element   ${RUN_ALL}
     sleep      3s
     Click Element   ${NEXT_BUTTON}
     sleep  3s

Wait Until Auto Tests Run
    Selenium2Library.wait until element is visible      ${NEXT_BUTTON}       500s
    sleep  3s

Click Next In Auto Test Page
    Selenium2Library.Click Element   ${NEXT_BUTTON}
    sleep   3s

Click Next In Manual Test Page
    @{buttons}=     Selenium2Library.get web elements    xpath=//button
    ${btnCount}=    returnOccurence     @{buttons}
    Run Keyword If  ${btnCount} ==2     Selenium2Library.Click Element   ${NEXT_IN_MANUAL_TEST}
    sleep   3s

Click StepByStep In Test Result Page
    Selenium2Library.Click Element   ${STEP_BY_STEP}
    sleep   3s

Go To Summary Page
    Selenium2Library.Click Element   ${SUMMARY_BUTTON}
    sleep   3s

End Session
    Selenium2Library.Click Element   ${END_SESSION}
    sleep   5s
    Selenium2Library.wait until element is visible      ${HOME_IMAGE}

Close The Device Connection
    connectionClose

