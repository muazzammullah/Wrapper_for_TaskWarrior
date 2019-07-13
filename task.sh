#!/bin/bash
clear
task
exitwrapper="0"
while [ $exitwrapper == "0" ]
do 
echo -e 'Commmand Pallete \nrefresh-refresh tasks
exitapp-exit app
add-add a task
delete-delete a task'
read action
if [[ $action == "refresh" ]] 
then
	clear
	task

elif [[ $action == "exitapp" ]]
then 
	exitwrapper="1"

elif [[ $action == "add" ]]
then 
	echo -e "Enter task content"
	read content
	echo -e "Enter priority:L/M/H"
	read taskpriority
	task add priority:$taskpriority $content
	clear
	task 

elif [[ $action == "delete" ]]
then 
	echo -e "id of task you want to delete"
	read deletetaskid
	thetaskid=$deletetaskid
	intid=$((thetaskid-0))
	task $intid delete
	clear
	task
fi
done
