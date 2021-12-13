# Robot Framework - BDD
Robot Framework is an open source test automation framework for acceptance as well as acceptance test-driven development. For writing test cases, It allows different test case styles such as,
  - Keyword-driven
  - Data-driven
  - Behaviour-driven 
<br />
This Repo developed to automate a sample scenarion with BDD styling. To explore about Robot framework visit [official site](https://robotframework.org/).

# Requirements
  - *Python and pip*: Make sure the machine has python and pip installed
  - *Chromedriver*:  Chrome driver for Linux distribution can be downloaded from https://chromedriver.chromium.org/downloads. Note - The chromedriver version must match the installed version of chromium/google-chrome
  - *IDE*: Download PyCharm Community Edition. This Repo created with PyCharm as red.xml or robot.yaml is not needed
  - *Intellibot Plugin*: Install intellibot plug in PyCharm for Robot framework

# Quick Start
1. Clone this repo with git command ```git clone https://github.com/rravi6121/rhoda_robotframework.git```
2. Once the Git repo is cloned, navigate into ```env``` folder and run the shell script with command ```sh setup.sh```. This shell script will pip install the dependency files with the aid ```requirements.txt``` file by creating a virtual python environment
3. The automated test script runs on Openshift application. Hence, 
    - Replace Openshift cluster URL ```<<OpenshiftClusterURL>>``` on ```./config.yaml``` file
    - Create a file with name ```kubeadminpass``` under .kube directory as ```touch /.kube/kubeadminpass``` and write your cluster kubeadmin password into it (If the cluster user is other then ```kubeadmin```, update the user name on the variable ```${login_page_username}``` available on the file ```./tests/Data/TestData.robot```
    - Place the chrome driver downloaded into the python virtual environment bin folder under project directory ```./venv/bin/```
4. Open the project in PyCharm IDE
5. Directory ```scripts``` contains all the custom python libraries
6. Directory ```tests``` contains the child directories such as,
    - *Data*: contains test data resource file
    - *Keywords*: contains keywords or reusables of the test case/scripts
    - *OR*: contains Objects of webelements in xpath
    - *Test*: contains Test case
7. Run the Test suite directly on PyCharm IDE or using robot
   - Using robot command simply, navigate to project folder and run ```robot .``` command which will look into all the folder with ```.robot``` extension and run the test cases under ```*** Test Cases ***``` section
8. Results will be published under project directory. Three results file would get generated which as 
    - output.xml 
    - report.html
    - log.html
