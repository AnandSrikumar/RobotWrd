from robot.libraries.BuiltIn import BuiltIn
from AppiumLibrary import AppiumLibrary

class Custom(AppiumLibrary):
    def get_driver_instance(self):
        se2lib = BuiltIn().get_library_instance('AppiumLibrary')
        self.driver=se2lib._current_application()

    def clickOK(self):
        self.driver.find_element_by_name("OK").click()