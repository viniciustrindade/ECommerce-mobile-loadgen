#!/bin/bash

while sleep 600;

do

echo "CRASH DATA REPORT"
echo " "

USERAGENT="Ecommerce Mobile Application/1.0 CFNetwork/711.2.23 Darwin/13.4.0"
URL=ECOMM_URL
COLLECTOR_URL=EUM_URL
COLLECTORKEY=EUM_KEY
COLLECTORURL=${COLLECTOR_URL}
COLLECTORURL+=/eumcollector/mobileMetrics?version=2
COLLECTORBID=66ce9cb5a13f7436fb21b39c6c6c8fb7
COLLECTORAN=com.appdynamics.pmdemoapps.android.ECommerceAndroid
COLLECTOREVENT=1015
COLLECTORAGENTVERSION=4.1.4.0
COLLECTORAB=bd7bfaab131f9ead6cf916905f927f3e57cc38c2

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
ST+="000"
echo ${ST}

AT=$(date +%s)
AT+="000"
echo ${AT}




#Mobile version
ver[2]="1.0"
ver[0]="2.0"
ver[1]="2.1"

RANDOMVERSIONPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMVERSIONPER}
if [ "$RANDOMVERSIONPER" -le "50" ]; then
  VERSION=${ver[0]}
elif [ "$RANDOMVERSIONPER" -ge "51" ] && [ "$RANDOMVERSIONPER" -le "80" ]; then
  VERSION=${ver[1]}
elif [ "$RANDOMVERSIONPER" -ge "81" ] && [ "$RANDOMVERSIONPER" -le "100" ]; then
  VERSION=${ver[2]}
fi


echo "${VERSION}"

# Country
country[0]="United States"
country[1]="Germany"
country[2]="France"
country[3]="Denmark"
country[4]="France"
country[5]="Germany"
country[6]="Italy"
country[7]="Netherlands"
country[8]="Ukraine"
country[9]="Switzerland"
country[10]="Australia"
country[11]="New Zealand"
country[12]="China"
country[13]="India"
country[14]="Japan"

RANDOMCONUNTRYPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMCONUNTRYPER}
if [ "$RANDOMCONUNTRYPER" -le "30" ]; then
  COUNTRYNAME=${country[0]}
elif [ "$RANDOMCONUNTRYPER" -ge "31" ] && [ "$RANDOMCONUNTRYPER" -le "35" ]; then
  COUNTRYNAME=${country[1]}
elif [ "$RANDOMCONUNTRYPER" -ge "36" ] && [ "$RANDOMCONUNTRYPER" -le "40" ]; then
  COUNTRYNAME=${country[2]}
elif [ "$RANDOMCONUNTRYPER" -ge "41" ] && [ "$RANDOMCONUNTRYPER" -le "45" ]; then
  COUNTRYNAME=${country[3]}
elif [ "$RANDOMCONUNTRYPER" -ge "46" ] && [ "$RANDOMCONUNTRYPER" -le "50" ]; then
  COUNTRYNAME=${country[4]}
elif [ "$RANDOMCONUNTRYPER" -ge "51" ] && [ "$RANDOMCONUNTRYPER" -le "55" ]; then
  COUNTRYNAME=${country[5]}
elif [ "$RANDOMCONUNTRYPER" -ge "56" ] && [ "$RANDOMCONUNTRYPER" -le "60" ]; then
  COUNTRYNAME=${country[6]}
elif [ "$RANDOMCONUNTRYPER" -ge "61" ] && [ "$RANDOMCONUNTRYPER" -le "65" ]; then
  COUNTRYNAME=${country[7]}
elif [ "$RANDOMCONUNTRYPER" -ge "66" ] && [ "$RANDOMCONUNTRYPER" -le "70" ]; then
  COUNTRYNAME=${country[8]}
elif [ "$RANDOMCONUNTRYPER" -ge "71" ] && [ "$RANDOMCONUNTRYPER" -le "75" ]; then
  COUNTRYNAME=${country[9]}
elif [ "$RANDOMCONUNTRYPER" -ge "76" ] && [ "$RANDOMCONUNTRYPER" -le "80" ]; then
  COUNTRYNAME=${country[10]}
elif [ "$RANDOMCONUNTRYPER" -ge "81" ] && [ "$RANDOMCONUNTRYPER" -le "85" ]; then
  COUNTRYNAME=${country[11]}
elif [ "$RANDOMCONUNTRYPER" -ge "86" ] && [ "$RANDOMCONUNTRYPER" -le "90" ]; then
  COUNTRYNAME=${country[12]}
elif [ "$RANDOMCONUNTRYPER" -ge "91" ] && [ "$RANDOMCONUNTRYPER" -le "95" ]; then
  COUNTRYNAME=${country[13]}
elif [ "$RANDOMCONUNTRYPER" -ge "96" ] && [ "$RANDOMCONUNTRYPER" -le "100" ]; then
  COUNTRYNAME=${country[14]}
fi
COUNTRYNAME="United States"

echo "${COUNTRYNAME}"

if [[ "$COUNTRYNAME" = "United States" ]]; then
USCARRIER[0]="ATT"
USCARRIER[1]="Verizon"
USCARRIER[2]="Sprint"
USCARRIER[3]="T-Mobile"

RANDOMUSCARPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMUSCARPER}
if [ "$RANDOMUSCARPER" -le "40" ]; then
  CARRIER=${USCARRIER[0]}
elif [ "$RANDOMUSCARPER" -ge "41" ] && [ "$RANDOMUSCARPER" -le "60" ]; then
  CARRIER=${USCARRIER[1]}
elif [ "$RANDOMUSCARPER" -ge "61" ] && [ "$RANDOMUSCARPER" -le "80" ]; then
  CARRIER=${USCARRIER[2]}
elif [ "$RANDOMUSCARPER" -ge "81" ] && [ "$RANDOMUSCARPER" -le "100" ]; then
  CARRIER=${USCARRIER[2]}
fi
fi

if [[ "$COUNTRYNAME" = "Germany" ]]; then
GERMANYCARRIER[0]="Telekom"
GERMANYCARRIER[1]="Vodafone"

RANDOMGERMANYCARPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMGERMANYCARPER}
if [ "$RANDOMGERMANYCARPER" -le "60" ]; then
  CARRIER=${GERMANYCARRIER[0]}
elif [ "$RANDOMGERMANYCARPER" -ge "61" ] && [ "$RANDOMGERMANYCARPER" -le "100" ]; then
  CARRIER=${GERMANYCARRIER[1]}
fi
fi

if [[ "$COUNTRYNAME" = "France" ]]; then
FRANCECARRIER[0]="Orange"
FRANCECARRIER[1]="SFR"

RANDOMFRANCECARPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMFRANCECARPER}
if [ "$RANDOMFRANCECARPER" -le "60" ]; then
  CARRIER=${FRANCECARRIER[0]}
elif [ "$RANDOMFRANCECARPER" -ge "61" ] && [ "$RANDOMFRANCECARPER" -le "100" ]; then
  CARRIER=${FRANCECARRIER[1]}
fi
fi

if [[ "$COUNTRYNAME" = "China" ]]; then
CHINACARRIER[0]="China Mobile"
CHINACARRIER[1]="China Unicom"

RANDOMCHINACARPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMCHINACARPER}
if [ "$RANDOMCHINACARPER" -le "60" ]; then
  CARRIER=${CHINACARRIER[0]}
elif [ "$RANDOMCHINACARPER" -ge "61" ] && [ "$RANDOMCHINACARPER" -le "100" ]; then
  CARRIER=${CHINACARRIER[1]}
fi
fi

if [[ "$COUNTRYNAME" = "India" ]]; then
INDIACARRIER[0]="Airtel"
INDIACARRIER[1]="Vodafone"

RANDOMINDIACARPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMINDIACARPER}
if [ "$RANDOMINDIACARPER" -le "60" ]; then
  CARRIER=${INDIACARRIER[0]}
elif [ "$RANDOMINDIACARPER" -ge "61" ] && [ "$RANDOMINDIACARPER" -le "100" ]; then
  CARRIER=${INDIACARRIER[1]}
fi
fi

if [[ "$COUNTRYNAME" = "Denmark" ]]; then
CARRIER="TDC"
fi

if [[ "$COUNTRYNAME" = "Italy" ]]; then
CARRIER="TIM"
fi

if [[ "$COUNTRYNAME" = "Netherlands" ]]; then
CARRIER="KPN"
fi

if [[ "$COUNTRYNAME" = "Switzerland" ]]; then
CARRIER="Swisscom"
fi

if [[ "$COUNTRYNAME" = "Ukraine" ]]; then
CARRIER="MTS Ukraine"
fi

if [[ "$COUNTRYNAME" = "Australia" ]]; then
CARRIER="Telstra"
fi

if [[ "$COUNTRYNAME" = "New Zealand" ]]; then
CARRIER="Vodafone"
fi

if [[ "$COUNTRYNAME" = "Japan" ]]; then
CARRIER="NTT"
fi

echo ${CARRIER}

#OS version
os[0]="5.1"
os[1]="4.4"
os[2]="4.1"
os[3]="4.0"
os[4]="4.1"
os[5]="4.4"
os[6]="5.1"
os[7]="5.1"

RANDOMOSPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMOSPER}
if [ "$RANDOMOSPER" -le "30" ]; then
  OSVERSION=${os[0]}
elif [ "$RANDOMOSPER" -ge "31" ] && [ "$RANDOMOSPER" -le "35" ]; then
  OSVERSION=${os[1]}
elif [ "$RANDOMOSPER" -ge "41" ] && [ "$RANDOMOSPER" -le "50" ]; then
  OSVERSION=${os[2]}
elif [ "$RANDOMOSPER" -ge "51" ] && [ "$RANDOMOSPER" -le "60" ]; then
  OSVERSION=${os[3]}
elif [ "$RANDOMOSPER" -ge "61" ] && [ "$RANDOMOSPER" -le "70" ]; then
  OSVERSION=${os[4]}
elif [ "$RANDOMOSPER" -ge "71" ] && [ "$RANDOMOSPER" -le "80" ]; then
  OSVERSION=${os[5]}
elif [ "$RANDOMOSPER" -ge "81" ] && [ "$RANDOMOSPER" -le "90" ]; then
  OSVERSION=${os[6]}
elif [ "$RANDOMOSPER" -ge "91" ] && [ "$RANDOMOSPER" -le "100" ]; then
  OSVERSION=${os[7]}
fi

echo "${OSVERSION}"

#OS version
DEV[0]="Asus"
DEV[1]="Nexus"
DEV[2]="Moto"
DEV[3]="Sony"
DEV[4]="Samsung"
DEV[5]="HTC"
DEV[6]="LG"

RANDOMOSPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
echo ${RANDOMOSPER}
if [ "$RANDOMOSPER" -le "30" ]; then
  DEVICE=${DEV[0]}
elif [ "$RANDOMOSPER" -ge "31" ] && [ "$RANDOMOSPER" -le "35" ]; then
  DEVICE=${DEV[1]}
elif [ "$RANDOMOSPER" -ge "41" ] && [ "$RANDOMOSPER" -le "50" ]; then
  DEVICE=${DEV[2]}
elif [ "$RANDOMOSPER" -ge "51" ] && [ "$RANDOMOSPER" -le "60" ]; then
  DEVICE=${DEV[3]}
elif [ "$RANDOMOSPER" -ge "61" ] && [ "$RANDOMOSPER" -le "70" ]; then
  DEVICE=${DEV[4]}
elif [ "$RANDOMOSPER" -ge "71" ] && [ "$RANDOMOSPER" -le "80" ]; then
  DEVICE=${DEV[5]}
elif [ "$RANDOMOSPER" -ge "81" ] && [ "$RANDOMOSPER" -le "100" ]; then
  DEVICE=${DEV[6]}
fi

echo "${DEVICE}"

echo "[{"type":"crash-report","ec":${COLLECTOREVENT},"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB}, \
"dm":${DEVICE},"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"androidCrashReport":{"stackTrace":{"exceptionClassName":'java.lang.IllegalStateException', \
"message":'Could not execute method of the activity',"cause":{'exceptionClassName':'java.lang.reflect.InvocationTargetException', \
"message":'',"cause":{'exceptionClassName':'java.lang.NullPointerException', \
"message":'Attempt to invoke virtual method boolean java.lang.String.equals java.lang.Object on a null object reference', \
"stackTraceElements":[{"c":'com.appdynamics.pmdemoapps.android.ECommerceAndroid.CartFragment',"m":"crashMe","f":'CartFragment.java',"l":238}, \
{"c":"com.appdynamics.pmdemoapps.android.ECommerceAndroid.ItemListActivity","m":"crashAction","f":"ItemListActivity.java","l":176}, \
{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":-2},{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":372}, \
{"c":'android.view.View$1',"m":"onClick","f":"View.java","l":4015},{"c":"android.view.View","m":"performClick","f":"View.java","l":4780}, \
{"c":'android.view.View$PerformClick',"m":"run","f":"View.java","l":19866},{"c":"android.os.Handler","m":"handleCallback","f":"Handler.java","l":739}, \
{"c":"android.os.Handler","m":"dispatchMessage","f":"Handler.java","l":95},{"c":"android.os.Looper","m":"loop","f":"Looper.java","l":135}, \
{"c":"android.app.ActivityThread","m":"main","f":"ActivityThread.java","l":5257},{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":-2}, \
{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":372}, \
{"c":'com.android.internal.os.ZygoteInit$MethodAndArgsCaller',"m":"run","f":"ZygoteInit.java","l":903}, \
{"c":"com.android.internal.os.ZygoteInit","m":"main","f":"ZygoteInit.java","l":698}]}, \
"stackTraceElements":[{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":-2}, \
{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":372}, \
{"c":'android.view.View$1',"m":"onClick","f":"View.java","l":4015},{"c":"android.view.View","m":"performClick","f":"View.java","l":4780}, \
{"c":'android.view.View$PerformClick',"m":"run","f":"View.java","l":19866},{"c":"android.os.Handler","m":"handleCallback","f":"Handler.java","l":739}, \
{"c":"android.os.Handler","m":"dispatchMessage","f":"Handler.java","l":95},{"c":"android.os.Looper","m":"loop","f":"Looper.java","l":135}, \
{"c":"android.app.ActivityThread","m":"main","f":"ActivityThread.java","l":5257},{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":-2}, \
{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":372}, \
{"c":'com.android.internal.os.ZygoteInit$MethodAndArgsCaller',"m":"run","f":"ZygoteInit.java","l":903}, \
{"c":"com.android.internal.os.ZygoteInit","m":"main","f":"ZygoteInit.java","l":698}]}, \
"stackTraceElements":[{"c":'android.view.View$1',"m":"onClick","f":"View.java","l":4020},{"c":"android.view.View","m":"performClick","f":"View.java","l":4780}, \
{"c":'android.view.View$PerformClick',"m":"run","f":"View.java","l":19866},{"c":"android.os.Handler","m":"handleCallback","f":"Handler.java","l":739}, \
{"c":"android.os.Handler","m":"dispatchMessage","f":"Handler.java","l":95},{"c":"android.os.Looper","m":"loop","f":"Looper.java","l":135}, \
{"c":"android.app.ActivityThread","m":"main","f":"ActivityThread.java","l":5257},{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":-2}, \
{"c":"java.lang.reflect.Method","m":"invoke","f":"Method.java","l":372}, \
{"c":'com.android.internal.os.ZygoteInit$MethodAndArgsCaller',"m":"run","f":"ZygoteInit.java","l":903}, \
{"c":"com.android.internal.os.ZygoteInit","m":"main","f":"ZygoteInit.java","l":698}]},"thread":'Thread[main,5,main]', \
"time":${AT}},"bcs":[{"ts":${ST},"text":'Show book list'}],"userdata":{}}]" | tee crash

echo ""

gzip -c crash > crash.gz

curl -is --trace-ascii "-" -H "mat: 1441134000000" -H "id: cf2797c2-71db-4676-9221-d83edd708edb" -H "User-Agent: ${USERAGENT}" -H "osn: Android" \
-H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept-Encoding: gzip, deflate" \
--data-binary "@crash.gz" ${COLLECTORURL}

rm -f -r crash
rm -f -r crash.gz

echo ""

done
