Import subprocess
Import logging
Import os
From datetime import datetime

# logging set up for execute.py 
logging.basicConfig(filename='(insert name).log', encoding='utf-8', level=logging.DEBUG)

# —-------------------------
# run app.py

logging.info(datetime.utcnow() “: App.py began operation”)
print(f“{datetime.utcnow()}: Running app.py”)
time.sleep(5)

app_path = ‘app.py'
execute_python_file(app_path)
Try: 
Completed_process = subprocess.run ([(python', app_path], capture_output=True, text=True)
if completed_process.returncode == 0:
logging.info(f"{datetime.utcnow()}: Execution successful.")
print(f“{datetime.utcnow()}: Execution to ‘{app_path}’ successful”)
else:
logging.error(f"{datetime.utcnow()}: Error: Failed to execute '{app_path}'.")
print(f"{datetime.utcnow()}: Error: Failed to execute '{app_path}'.")

time.sleep(200)

# —-------------------------
# run dir.py

directory_path = ‘dir.py'
execute_python_file(directory_path)
Try: 
Completed_process = subprocess.run ([(python', directory_path], capture_output=True, text=True)
if completed_process.returncode == 0:
logging.info("{datetime.utcnow()}: Execution successful.")
print(f“{datetime.utcnow()}: Execution to ‘{directory_path}’ successful”)
else:
logging.error(f"{datetime.utcnow()}: Error: Failed to execute '{directory_path}'.")
print(f"{datetime.utcnow()}: Error: Failed to execute '{directory_path}'.")
time.sleep(200)

# —-------------------------------------
# run checker.py

filechecker_path = checker.py'
execute_python_file(filechecker_path)
Try: 
Completed_process = subprocess.run ([(python', filechecker_path], capture_output=True, text=True)
if completed_process.returncode == 0:
logging.info("{datetime.utcnow()}: Execution successful.")
print(f“{datetime.utcnow()}: Execution to ‘{filechecker_path}’ successful”)
else:
logging.error(f"{datetime.utcnow()}: Error: Failed to execute '{filechecker_path}'.")
print(f"{datetime.utcnow()}: Error: Failed to execute '{filechecker_path}'.")
time.sleep(200)


# end execute.py here










