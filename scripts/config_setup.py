import os
import yaml
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
