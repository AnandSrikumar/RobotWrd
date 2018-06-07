*** Variables ***
${UName}        username
${pwd}          password
${login}        login_button
${pass}         pass
${improve}      improves
${fail}         fail

#xpath for flows
${BATTERY}                     //div[@class='issueIcon ic_batteryCharging']
${FREEZE_CRASH}                //div[@class='issueIcon ic_screenFreeze']
${CONNECTIVITY}                //div[@class='issueIcon ic_connectivity']
${AUDIO_VIBRATE}               //div[@class='issueIcon ic_audioVibration']
${CAMERA}                      //div[@class='issueIcon ic_camera']
${DISPLAY_TOUCH}               //div[@class='issueIcon ic_displayTouch']
${APPS}                        //div[@class='issueIcon ic_apps']
${HARDWARE}                    //div[@class='issueIcon ic_hardware']
${RUN_ALL}                     //div[@class='issueIcon ic_runAllTests']

#XPATH for elements
${Pin}                              //*[@class='download-method-qr-code inline-block']
${NEXT_BUTTON}                      //button[@class='footer-button-active cursor-pointer margin-right-20 active']
${CHEVRON_SETTING}                  //p[contains(text(),'Ustawienia')]/../following-sibling::li[6]/a")
${BLUETOOTH_DETAILED_STATUS}         //span[contains(text(),'Stan Bluetooth')]/ancestor::li/following-sibling::li/span")
${BLUETOOTH_IDEAL}                   //span[contains(text(),'Stan Bluetooth')]/ancestor::li/following-sibling::li[2]")
${BLUETOOTH_PRESENT}                //span[contains(text(),'Stan Bluetooth')]/ancestor::li/following-sibling::li[3]")
${BACK_TO_TESTRESULTS}               //span[@class='left-arrow arrow-back-text']")
${STEP_BY_STEP}                      //button[@class='footer-button-active cursor-pointer margin-right-20 active']
${BUTTON_ONE}                        //button[1]
${BUTTON_TWO}                        //button[2]
${BREADCRUMB}                        //section[@class='breadcrumbs call-left']
${GETALLBREADCRUMB}                  //span[@class='call-left align-center']
${BREADATTRIBUTES}                   //p[contains(@class,'call-left')]
${RESOLUTION_TITLE}                  //h1[@class='align-center page-title col-12']
${RESLOUTION_COLUMNHEAD}             //h3[@class='font-semibold col-10']
${SUMMARY_BUTTON}                    //button[@class='footer-button-active cursor-pointer margin-right-20 active']
${HAMBURG}                           id=Hamburger-click
${PERVACIO_LOGO}                     //a[@class='call-left home-logo']")
${END_SESSION}                       //button[@class='footer-button-active cursor-pointer margin-right-20 active'][2]
${NEXT_IN_MANUAL_TEST}               //button[1]
${HOME_IMAGE}                        //div[@class='diagnostic-module-img']
${LIVEWALLPAPER_HEAD}                //span[@id='screenTimeoutHeading']
${LIVEWALLPAPER_L1}                  //p[@class='aileron-light call-left col-12 padding-top-30']
${LIVEWALLPAPER_L2}                  //p[@class='aileron-light call-left col-12 note padding-top-30']
${FirmwareHead}                     //h3[@class='resolution-right-pannel-heading Firmware']
${FirmwareLine1}                     //p[@class='resolution-right-pannel-recomandation-normal-text padding-top-30'][1]
${FirmwareLine2}                     //p[@class='resolution-right-pannel-recomandation-normal-text padding-top-30 '][1]
${ISSUE_SELECTION_HEADING}           //h1[@class='align-center page-title col-12 call-left']
