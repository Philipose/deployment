#!/bin/bash

function cleanup (){
	rm main.tf variables.tf dyn_management_zones.tf dyn_alerts.tf 2> /dev/null
}

function lesson_2 (){
	# Setting Up Environment
	mkdir dev test
	cp -n .assets/dev.tfvars dev/dev.tfvars
	cp -n .assets/test.tfvars test/test.tfvars
	cp .assets/main.tf main.tf
	cp .assets/variables.tf variables.tf
}


function lesson_3 (){
	# Management Zones Lab
	cp .assets/dyn_autotag.tf .
}

function lesson_4 (){
	# Alerting Profile Lab
	cp .assets/dyn_alerts.tf .
}

LESSON=$1

case $1 in
	0) cleanup;;
	2) lesson_2;;
	3) lesson_3;;
	4) lesson_4;;
	*) echo "Invalid Option";;
esac
