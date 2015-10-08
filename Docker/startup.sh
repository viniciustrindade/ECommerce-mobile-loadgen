#!/bin/bash

# This is a starup script for the ECommerce mobile load gen containers

# Set Environment variables
source /appdynamics/env.sh && sed -i "s|ECOMM_URL|${ECOMM_URL}|g" /appdynamics/${LOAD_SCRIPT}.sh
source /appdynamics/env.sh && sed -i "s|EUM_KEY|${EUM_KEY}|g" /appdynamics/${LOAD_SCRIPT}.sh
source /appdynamics/env.sh && sed -i "s|EUM_URL|${EUM_URL}|g" /appdynamics/${LOAD_SCRIPT}.sh

# Start Node App
source /appdynamics/env.sh && nohup /appdynamics/${LOAD_SCRIPT}.sh &
