*** Settings ***
Library     AppiumLibrary
Resource    ../Requirements.robot
Library     ../CommonUtils/GetAppUrl.py

*** Keywords ***
Testdroid App URL
     ${Testdroid_App}=  getAppUrlForTestdroid
     Set Global Variable    ${Testdroid_App}
     log to console         ${Testdroid_App}

*** Variables ***
#Capabilities for local Android Device

${REMOTE_URL_Local}                  http://localhost:4723/wd/hub
${PLATFORM_NAME_Android}             Android
${PLATFORM_VERSION_Android}          5.0.2
${DEVICE_NAME_Android}               CB5A25H10X
${APP}                              home/shiva/Downloads/wrd.apk
${Package}                           org.pervacio.pvadiag
${Activity}                          org.pervacio.pvadiag.aa
${Timeout}                           50000

#Capabilities for local Testdroid(Bitbar) Android Device


${REMOTE_URL_Testdroid}                       https://appium.bitbar.com/wd/hub
${PLATFORM_NAME_Testdroid}                    Android
${PLATFORM_VERSION_Testdroid}                 5.0.2
${DEVICE_NAME_Testdroid}                      CB5A25H10X
${TestDroid_API_Key}                          pDRwroaBc7QP58EHZXV9pvA5U8p5XFox
${Testdroid_Target}                           Android
${Testdroid_Project}                          WRD Automation
${Testdroid_App}
${Testdroid_TestRun}                          test
${Testdroid_Device}                           LG Google Nexus 5 6.0.1




#desired_caps['testdroid_app']='calculator'
#desired_caps['appPackage'] = 'com.android.calculator2'
#desired_caps['appActivity'] = 'com.android.calculator2.Calculator'
#desired_caps['testdroid_findDevice'] = True
#desired_caps['noReset'] = 'false'
#desired_caps['autoGrantPermissions'] = 'true'
#desired_caps['automationName'] = 'Appium'

#cb05b608-3a40-4b34-8322-c6055ab50fc6/app-debug.apk
