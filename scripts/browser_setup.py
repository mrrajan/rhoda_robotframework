from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver


ROBOT_LIBRARY_VERSION = 1.0


def create_web_driver(url, browser, options: list):
    if browser == "ie":
        return webdriver.ie()
    elif browser == "firefox":
        return webdriver.firefox()
    opt = driver_chrome_options(options)
    return webdriver.Chrome(chrome_options=opt)


def driver_chrome_options(options: list):
    option = webdriver.ChromeOptions()
    for opt in options:
        option.add_argument(opt)
    return option
