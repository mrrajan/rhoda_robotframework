import os.path

from robot.libraries.BuiltIn import BuiltIn

ROBOT_LIBRARY_VERSION = 1.0


def set_kubeadmin_password():
    BuiltIn().log("Into Kubeadmin")
    try:
        base_dir = os.path.expanduser('~')
        with open(base_dir + "/.kube/kubeadminpass") as f:
            pw = f.readline()
            BuiltIn().set_global_variable("${KUBEADMIN_PASSWD}",pw)
    except Exception as e:
        print(str(e))
        BuiltIn().fail(msg="Failed to read file, Exception " + str(e) + "occurred")
