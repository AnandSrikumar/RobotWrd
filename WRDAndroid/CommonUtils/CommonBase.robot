*** Settings ***
Library             Selenium2Library
Resource           ../Resources/Resource.robot
Resource           ../CommonUtils/CommonResources.robot
Resource           ../Locators/WEB/Locator.robot
Resource            ../ProjectUtils/WEB/ProjBase.robot
Library            ../ProjectUtils/WEB/ProjUtil.py
Library             ../L1TestSuite/LogInitializer.Log



*** Keywords ***
Launch Browser
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    ${options}=     Call Method     ${chrome_options}    to_capabilities
    #Open browser  ${ROOT}  ${BROWSER}   desired_capabilities=${options}
    Open browser  ${ROOT}  ${BROWSER}
    log to console  >>>>Launching Chrome browser
    Selenium2Library.wait until element is visible      ${login}
    sleep  2s
Maximise The Browser
    log to console  >>>>Maximizing the window
    maximize browser window
    sleep  2s
Enter User Name
    Selenium2Library.input text  ${UName}    pervacio
    log to console  >>>>Entered User name
    sleep  2s
Enter Password
    Selenium2Library.input text  ${pwd}      pervacio
    log to console  >>>>Entered Password
    sleep  2s
Click On Login Button
    Selenium2Library.Click Element   ${login}
    log to console  >>>>Clicked on Login button
    Selenium2Library.wait until element is visible      ${HOME_IMAGE}    60s
    sleep  2s
Exit Browser
   Close browser
   log to console   >>>>Closing the browsers
Screenshots Directory Path
    Set Screenshot Directory        ${ScreenshotDirectory}




