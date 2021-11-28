import yaml
import os

print(os.getcwd())
print(os.path.abspath("../config.yaml"))
for key, value in yaml.safe_load(open("../scripts/config.yaml")).items():
    print(key, value)
