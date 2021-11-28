import os
import yaml
import browser_setup
from robot.libraries.BuiltIn import BuiltIn


ROBOT_LIBRARY_VERSION = 1.0


def load_config_variables():
    try:
        for key, value in yaml.safe_load(open(os.getcwd() + "/config.yaml")).items():
            print("${" + key + "}", value)
            BuiltIn().set_global_variable("${" + key + "}", value)
    except Exception as e:
        print(str(e))
        BuiltIn().fail(msg="Failed to read file, Exception " + str(e) + "occurred")


def setup_browser(url: str, browser: str = "chrome", browser_options: list = []):
    driver = browser_setup.create_web_driver(url, browser, browser_options)
    driver.get(url)
