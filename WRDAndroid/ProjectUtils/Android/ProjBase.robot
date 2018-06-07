*** Settings ***
Resource        ./Locators/Android/Locator.robot

*** Keywords ***
Enter Pin In The Local Android Device
    ${val}=     Selenium2Library.Get Element Attribute    ${Pin}  ng-reflect-value
    log to console  ${val}
    AppiumLibrary.input text    ${PinLocator}      ${val}
    sleep   4s
    AppiumLibrary.click Text      Submit
    sleep  7s
App Permissions
    sleep  3s
    AppiumLibrary.Click Element     ${PermissionOK}
    sleep   3s
    AppiumLibrary.Click Text     ${WRDAppName}
    sleep   3s
    AppiumLibrary.Click Text     ${AllowAccessOK}
    sleep  3s
Uninstall Application In The Device
     AppiumLibrary.Click Element     ${UninstallApp}
     sleep  4s
