# TestTasks
Description:

**1st Task.**

Task: Написать REST API приложение у которого будет всего один end-point
[POST]
/hello

Response example:
{
“message”: “Hello %username%”
}

Где %username% должно быть заменено на значение из переменной username. Другими словами, если я методом POST отправил: username = boris 
то в ответ я должен получить message: Hello boris. 

**Result:** 1stTask folder contains the app.py python-script which performs this task.

Requirements: python, Flask.

Usage: run the app.py script using the "_./app.py_" command from the 1stTask folder. In the other terminal window type the POST request in 
the following format:

_curl -i -H "Content-Type: application/json" -X POST -d '{"username":"USERNAME"}' http://localhost:5000/hello_

Where USERNAME is the name you wish to get in the response.

Request example:

_curl -i -H "Content-Type: application/json" -X POST -d '{"username":"boris"}' http://localhost:5000/hello_

Response example:

_HTTP/1.0 200 OK_

_Content-Type: text/html; charset=utf-8_

_Content-Length: 13_

_Server: Werkzeug/0.11.15 Python/2.7.12_

_Date: Sun, 05 Mar 2017 11:43:15 GMT_


_Hello, boris_

**2nd Task.**

Task: С помощью Vagrant и любого инструмента CM (Chef, Puppet, Ansible)запустить виртуальную машину на которой будет установлен Jenkins и Docker. То есть после выполнения команды Vagrant up на новой машине, с помощью Ansible или Puppet или Chef должен установится Docker и Jenkins. 

**Result:**

The 2ndTask folder contains: Vagrantfile - file with general vagrant configurations; main.yml - file with ansible provisioning steps; hosts - simple ansible hosts file.

Requirements: Vagrant, VirtualBox(or any other VM-provider)

Usage: run the "_vagrant up_" command from the 2ndTask folder.

What we got:

1. Vagrant creates the virtual machine based on the centos7 box; 

2. Vagrant installs Ansible on the VM and starts provisioning;

3. Ansible installs Docker and Jenkins with all requirements.

**3rd Task.**

Task: Последней задачей будет, используя REST API Jenkins-a установить необходимые плагины и создать задачу для сборки приложения созданного в пункте 1 в Docker контейнер и публикацию его на Docker hub.

**Result:** 3rdTask folder contains: Dockerfile - file which is used by Docker to create our custom docker image; app.py - python-script from the 1st task; mylocalconfig.xml - Jenkins job configuration file; jenkins.sh - shell script, which performs the following actions:

1. Install the "Docker Build and Publish" plugin into the Jenkins via Jenkins REST API;

2. Creates new Jenkins job via Jenkins REST API. Job steps: get sources from the github repository; build new docker image using configuration in the Dockerfile; Publishing new image to the Docker Hub.   

Requirements: Jenkins, Docker

Usage: run the jenkins.sh script using the "_./jenkins.sh_" command from the 3rdStep folder.

Important: before testing you should change the "username", "password" and "JenkinsURL" values in the jenkins.sh script with your own credentials.
