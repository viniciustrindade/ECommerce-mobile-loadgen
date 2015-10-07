#!/bin/bash

# This is a script to start E-Commerce mobile load on Docker

# Set variables
ECOMM_URL_1=
ECOMM_URL_2=
ECOMM_URL_STAGING=
EUM_KEY_1=
EUM_KEY_2=
EUM_KEY_STAGING=
EUM_URL_PROD=
EUM_URL_STAGING=
DROID_DATA_SCRIPT=GenerateAndroidData
DROID_CRASH_SCRIPT=GenerateAndroidCrashReport
IOS_DATA_SCRIPT=GenerateIOSData
IOS_CRASH_SCRIPT=GenerateIOSCrashReport

# Pull images
docker pull appdynamics/ecomm_mobile_load:latest

# Start containers for Ecomm1 
docker run -d --name droid_data_ecomm1 -e ECOMM_URL=${ECOMM_URL_1} -e EUM_KEY=${EUM_KEY_1} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${DROID_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name droid_crash_ecomm1 -e ECOMM_URL=${ECOMM_URL_1} -e EUM_KEY=${EUM_KEY_1} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${DROID_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_data_ecomm1 -e ECOMM_URL=${ECOMM_URL_1} -e EUM_KEY=${EUM_KEY_1} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${IOS_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_crash_ecomm1 -e ECOMM_URL=${ECOMM_URL_1} -e EUM_KEY=${EUM_KEY_1} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${IOS_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

# Start containers for Ecomm2
docker run -d --name droid_data_ecomm2 -e ECOMM_URL=${ECOMM_URL_2} -e EUM_KEY=${EUM_KEY_2} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${DROID_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name droid_crash_ecomm2 -e ECOMM_URL=${ECOMM_URL_2} -e EUM_KEY=${EUM_KEY_2} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${DROID_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_data_ecomm2 -e ECOMM_URL=${ECOMM_URL_2} -e EUM_KEY=${EUM_KEY_2} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${IOS_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_crash_ecomm2 -e ECOMM_URL=${ECOMM_URL_2} -e EUM_KEY=${EUM_KEY_2} -e EUM_URL=${EUM_URL_PROD} -e LOAD_SCRIPT=${IOS_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

# Start containers for EcommStaging
docker run -d --name droid_data_ecommstaging -e ECOMM_URL=${ECOMM_URL_STAGING} -e EUM_KEY=${EUM_KEY_STAGING} -e EUM_URL=${EUM_URL_STAGING} -e LOAD_SCRIPT=${DROID_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name droid_crash_ecommstaging -e ECOMM_URL=${ECOMM_URL_STAGING} -e EUM_KEY=${EUM_KEY_STAGING} -e EUM_URL=${EUM_URL_STAGING} -e LOAD_SCRIPT=${DROID_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_data_ecommstaging -e ECOMM_URL=${ECOMM_URL_STAGING} -e EUM_KEY=${EUM_KEY_STAGING} -e EUM_URL=${EUM_URL_STAGING} -e LOAD_SCRIPT=${IOS_DATA_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

docker run -d --name ios_crash_ecommstaging -e ECOMM_URL=${ECOMM_URL_STAGING} -e EUM_KEY=${EUM_KEY_STAGING} -e EUM_URL=${EUM_URL_STAGING} -e LOAD_SCRIPT=${IOS_CRASH_SCRIPT} --net=host -v /etc/localtime:/etc/localtime:ro appdynamics/ecomm_mobile_load:latest

exit 0
