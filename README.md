# TestTasks
Description:
1st Task.
Task: Написать REST API приложение у которого будет всего один end-point
[POST]
/hello

Response example:
{
“message”: “Hello %username%”
}

Где %username% должно быть заменено на значение из переменной username. Другими словами, если я методом POST отправил: username = boris 
то в ответ я должен получить message: Hello boris. 

Result: 1stTask folder contains the app.py python-script wich performs this task.

Requirements: python, Flask.

Usage: run the app.py script using the "./app.py" command from the 1stTask folder. In the other terminal window type the POST request in 
the following format:

curl -i -H "Content-Type: application/json" -X POST -d '{"username":"USERNAME"}' http://localhost:5000/hello

Where USERNAME is the name you wish to get in the response.

Request example:

curl -i -H "Content-Type: application/json" -X POST -d '{"username":"boris"}' http://localhost:5000/hello

Response example:

HTTP/1.0 200 OK

Content-Type: text/html; charset=utf-8

Content-Length: 13

Server: Werkzeug/0.11.15 Python/2.7.12

Date: Sun, 05 Mar 2017 11:43:15 GMT


Hello, boris

2nd Task.

Task: С помощью Vagrant и любого инструмента CM (Chef, Puppet, Ansible)запустить виртуальную машину на которой будет установлен Jenkins и Docker. То есть после выполнения команды Vagrant up на новой машине, с помощью Ansible или Puppet или Chef должен установится Docker и Jenkins. 

Result:

The 2ndTask folder contains: Vargatnfile - 
