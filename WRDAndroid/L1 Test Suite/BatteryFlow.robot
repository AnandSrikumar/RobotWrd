*** Settings ***
Documentation       WRD WEB-Battery Flow
Library             AppiumLibrary
Library             Selenium2Library

Resource            ../CommonUtils/AppiumRequirements.robot
Resource            ../CommonUtils/Capabilities.robot
Resource            ../CommonUtils/CommonBase.robot
Resource            ../CommonUtils/CommonResources.robot

Resource            ../ProjectUtils/WEB/ProjBase.robot
Resource            ../ProjectUtils/Android/ProjBase.robot
Library            ../ProjectUtils/WEB/ProjUtil.py

Resource           ../Locators/WEB/Locator.robot
Resource           ../Locators/Android/Locator.robot

Resource            ../Requirements.robot
Resource           ../Resources/Resource.robot




*** Test Cases ***
Set Screenshot Directory Path
    Screenshots Directory Path
    logInfo    Set Screenshpts Directory Path
Launching Chrome Browser
    Launch Browser
    logInfo    Browser Launched
    Maximise The Browser
Entering User Name
    Enter User Name
    logInfo  Entered User Name
Entering Password
    Enter Password
Click Login Button
    Click On Login Button
Click Home Image
    Click Home Image On Welcome Page
Setup For Local Android Device
    Config For Android Device
Providing App Permissions
    App Permissions
Entering The Pin In The Device
    Enter Pin In The Local Android Device
Next Button Device Info Page
    Click Next In Device Info Page
Battery And Charging Flow Selection
    Select BatteryCharging Flow and Click Next
Wait For To Complete All Auto Tests
    Wait Until Auto Tests Run
Go To Manual Test Page
    Click Next In Auto Test Page
Go To Test Result Page
    Click Next In Manual Test Page
Go To Resolution Page
    Click StepByStep In Test Result Page
Go To Summary Page
    Go To Summary Page
Go To Home Page
    End Session
Uninstall App After Diagnosis
    Uninstall Application In The Device
Close The Browser
    Exit Browser



