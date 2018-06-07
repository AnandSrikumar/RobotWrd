*** Settings ***
Library     AppiumLibrary
Resource    ../CommonUtils/AppiumRequirements.robot
Resource    ../Requirements.robot
Library     ../CommonUtils/GetAppUrl.py


*** Keywords ***
Config For Android Device
     Run Keyword if  '${testBase}'=='Android_Local'   Android Local Device Setup
Config For Testdroid Device
     Run Keyword if  '${testBase}'=='Testdroid_Android_Client'   Testdroid Device Setup
Android Local Device Setup
    log to console  If condition is matched...Appium server started...
    Open Application  ${REMOTE_URL_Local}   platformName=${PLATFORM_NAME_Android}    platformVersion=${PLATFORM_VERSION_Android}   deviceName=${DEVICE_NAME_Android}   appPackage=${Package}  appActivity=${Activity}  newCommandTimeout=${Timeout}
Testdroid Device Setup
    Open Application  ${REMOTE_URL_Testdroid}   platformName=${PLATFORM_NAME_Testdroid}    platformVersion=${PLATFORM_VERSION_Testdroid}   deviceName=${DEVICE_NAME_Testdroid}   testdroid_apiKey=${TestDroid_API_Key}  testdroid_target=${Testdroid_Target}  testdroid_project=${Testdroid_Project}  testdroid_app=${Testdroid_App}  testdroid_testrun=${Testdroid_TestRun}  testdroid_device=${Testdroid_Device}
