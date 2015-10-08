#!/bin/bash

if [ -z "${ECOMM_URL}" ]; then
	export ECOMM_URL="ecomm_url";
fi

if [ -z "${EUM_KEY}" ]; then
	export EUM_KEY="eum_key";
fi

if [ -z "${EUM_URL}" ]; then
	export EUM_URL="eum_url";
fi

if [ -z "${LOAD_SCRIPT}" ]; then
	export LOAD_SCRIPT="load_script";
fi
