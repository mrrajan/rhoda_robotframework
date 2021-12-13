# Scripts
Python scripts can be created to leaverage the load on Robot files. For lopping and conditional statements, python files should be preferred. 
The reusable functions created under these python files can be used directly on robot files by importing. For example, python file config_setup.py contains a function,

```
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
```

This can be used in robot file by just importing it on settings section as ```Library    ../../scripts/config_setup.py``` and called by ``` Load Config Variables``` instead of ```load_config_variables```

```
*** Settings ***
Documentation     Initial Setup and Validation for Login page
...               Variables and Credentials loaded from config files
Library     BuiltIn
Library     Collections
Library     SeleniumLibrary
Library    ../../scripts/config_setup.py
Library     ../../scripts/credentials.py


*** Keywords ***
Setup The Test Suite
    Log     Setting up the Test Suite
    Set Library Search Order    SeleniumLibrary
    Load Config Variables
    Log To Console  ${AUT_URL}
    Set Kubeadmin Password
```

Even the reusables on robot framework or seleniumlibrary can be used in python files by directly importing them as ```from robot.libraries.BuiltIn import BuiltIn```. 
