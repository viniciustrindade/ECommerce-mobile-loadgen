#! /bin/bash
USERNAME=test
PASSWORD=appdynamics
USERAGENT="Ecommerce Mobile Application/1.0 CFNetwork/711.2.23 Darwin/13.4.0"
URL=
COLLECTOR_URL=
COLLECTORKEY=
LOGINURL=${URL}
LOGINURL+=/appdynamicspilot/rest/user
ITEMSALLURL=${URL}
ITEMSALLURL+=/appdynamicspilot/rest/items/all
IMAGE1URL=${URL}
IMAGE1URL+=/appdynamicspilot/images/A_Clockwork_Orange-Anthony_Burgess.jpg
IMAGE2URL=${URL}
IMAGE2URL+=/appdynamicspilot/images/goldfinch.jpg
IMAGE3URL=${URL}
IMAGE3URL+=/appdynamicspilot/images/personal.jpg
IMAGE4URL=${URL}
IMAGE4URL+=/appdynamicspilot/images/Farewell_To_Arms-Ernest_Hemingway.jpg
IMAGE5URL=${URL}
IMAGE5URL+=/appdynamicspilot/images/Freakonomics-Stephen_Levitt.jpg
IMAGE6URL=${URL}
IMAGE6URL+=/appdynamicspilot/images/Jordan-Driven_From_Within.jpg
IMAGE7URL=${URL}
IMAGE7URL+=/appdynamicspilot/images/Sacred_Hoops-Phil_Jackson.jpg
IMAGE8URL=${URL}
IMAGE8URL+=/appdynamicspilot/images/Shantaram-Gregory_David_Roberts.jpg
IMAGE9URL=${URL}
IMAGE9URL+=/appdynamicspilot/images/The_Fist_Of_God-Forsyth.jpg
IMAGE10URL=${URL}
IMAGE10URL+=/appdynamicspilot/images/The_Godfather-Mario_Puzo.jpg
IMAGE11URL=${URL}
IMAGE11URL+=/appdynamicspilot/images/The_Lost_City_Of_Z-David_Grann.jpg
IMAGE12URL=${URL}
IMAGE12URL+=/appdynamicspilot/images/The_Tourist-Olen_Steinhauer.jpg
IMAGE13URL=${URL}
IMAGE13URL+=/appdynamicspilot/images/unbroken.jpg
CARTURL=${URL}
CARTURL+=/appdynamicspilot/rest/cart/

COLLECTORURL=${COLLECTOR_URL}
COLLECTORURL+=/eumcollector/mobileMetrics?version=2
COLLECTORBID=81a9d6f577463cca8d8f0720e279d007
COLLECTORAN=com.appdynamics.ECommerce-iOS
COLLECTOREVENT=1015
COLLECTORAGENTVERSION=4.1.0.0
COLLECTORAB=3861444463b35dce6e4b16e930e05a39ebc4a323

while true
do

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

  #OS models
  iphone[1]="iPhone6,2"
  iphone[0]="iPhone7,2"
  iphone[2]="iPhone5,4"

  RANDOMIPHONEPER=$(( RANDOM % (100 - 1 + 1 ) + 1 ))
  echo ${RANDOMIPHONEPER}
  if [ "$RANDOMIPHONEPER" -le "50" ]; then
    IPHONE=${iphone[0]}
  elif [ "$RANDOMIPHONEPER" -ge "51" ] && [ "$RANDOMIPHONEPER" -le "80" ]; then
    IPHONE=${iphone[1]}
  elif [ "$RANDOMIPHONEPER" -ge "81" ] && [ "$RANDOMIPHONEPER" -le "100" ]; then
    IPHONE=${iphone[2]}
  fi

echo "${IPHONE}"

  #OS version
  os[0]="9.0"
  os[1]="8.4.1"
  os[2]="8.4"
  os[3]="8.3"
  os[4]="8.2"
  os[5]="8.1"
  os[6]="8.0"
  os[7]="7.1.2"

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
  echo "${CARRIER}"

  sleep 1

#Login URL
echo ""
echo "POST LOGIN URL"
echo ""

shopt -s extglob # Required to trim whitespace; see below

while IFS=':' read key value; do
    # trim whitespace in "value"
    value=${value##+([[:space:]])}; value=${value%%+([[:space:]])}

    if [[ "$key" = "Set-Cookie" ]] && [[ -z "$USERLOGINCOOKIE" ]]; then
      USERLOGINCOOKIE="$value"
    elif [[ "$key" = "ADRUM_1" ]]; then
      USERLOGINADRUM1="$value"
    fi
done < <(curl -i -H "ADRUM_1: isMobile:true" -H "Content-Type: application/x-www-form-urlencoded" -H "Cookie: ROUTEID=.route2" -H "ADRUM: isAjax:true" \
-H "User-Agent: ${USERAGENT}" --data "username=${USERNAME}&password=${PASSWORD}"  ${LOGINURL})
USERLOGINBT=$(echo $USERLOGINADRUM1 | awk -F':' '{print $2}')
echo $USERLOGINBT
USERLOGINJSESSION=$(echo $USERLOGINCOOKIE | awk -F'=' '{print $2}')
SESSIONID=$(echo $USERLOGINJSESSION | awk -F'.' '{print $1}')

sleep 1

#COLLECTOR - Login URL

if [[ ! -z "$USERLOGINBT" ]]; then

echo ""
echo "COLLECTOR - LOGIN URL"
echo ""

TIMEDIFF=$(( RANDOM % (5000 - 10 + 1 ) + 10 ))

echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "sst" : "f",
  "url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 9,
      "estimatedTime" : -1,
      "btId" : ${USERLOGINBT}
    }
  ],
  "hrc" : 200,
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : $(uuidgen)
}]" | tee data

echo ""

gzip -c data > data.gz


curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

fi

sleep 1

#COLLECTOR - ERROR MESSAGE

if [[ ! -z "$USERLOGINBT" ]]; then

echo ""
echo "COLLECTOR - ERRORMESSAGE"
echo ""

TIMEDIFF=$(( RANDOM % (5000 - 10 + 1 ) + 10 ))

#echo $(( RANDOM % (5 - 1 + 1 ) + 1 ))
#if [[ $(( RANDOM % (5 - 1 + 1 ) + 1 )) = 1 ]]; then
  echo "done"
echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "sst" : "f",
  "url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 9,
      "estimatedTime" : -1,
      "btId" : ${USERLOGINBT}
    }
  ],
  "ne"  : 'kCFURLErrorCannotConnectToHost',
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : $(uuidgen)
}]" | tee data

echo ""

gzip -c data > data.gz


curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

#fi

fi

sleep 1

#Items all
echo ""
echo "GET - ITEMS ALL"
echo ""

ITEMSALLCOOKIE=JSESSIONID=
ITEMSALLCOOKIE+=${SESSIONID}
ITEMSALLCOOKIE+=.route2
ITEMSALLCOOKIE+=;
ITEMSALLCOOKIE+= ROUTEID=.route2

shopt -s extglob # Required to trim whitespace; see below

while IFS=':' read key value; do
    # trim whitespace in "value"
    value=${value##+([[:space:]])}; value=${value%%+([[:space:]])}
    if [[ "$key" = "ADRUM_1" ]]; then
      USERLOGINADRUM1="$value"
    fi
done < <(curl -i -b -H "ADRUM_1: isMobile:true" -H "Cookie: ROUTEID=.route2" -H "ADRUM: isAjax:true" -H "ADRUM: isAjax:true" -H "Cookie:${ITEMSALLCOOKIE}" -H "ADRUM: isAjax:true" \
-H "User-Agent: ${USERAGENT}" ${ITEMSALLURL})
ITEMSALLBT=$(echo $USERLOGINADRUM1 | awk -F':' '{print $2}')
echo ${ITEMSALLBT}

sleep 1

#Collector For Items all URL

if [[ ! -z "$ITEMSALLBT" ]]; then

echo ""
echo "COLLECTOR - ITEMS ALL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 3,
      "estimatedTime" : 2760,
      "btId" : ${ITEMSALLBT}
    }
  ],
  "hrc" : 200,
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : $(uuidgen)
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

fi

sleep 1

#Collector For Image 1 URL
echo ""
echo "COLLECTOR FOR IMAGE 1 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 2 URL
echo ""
echo "COLLECTOR - IMAGE 2 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 3 URL
echo ""
echo "COLLECTOR - IMAGE 3 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 4 URL
echo ""
echo "COLLECTOR - IMAGE 4 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1


#COLLECTOR - Image 5 URL
echo ""
echo "COLLECTOR - IMAGE 5 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 6 URL
echo ""
echo "COLLECTOR - IMAGE 6 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1


#COLLECTOR - Image 7 URL
echo ""
echo "COLLECTOR - IMAGE 7 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 8 URL
echo ""
echo "COLLECTOR - IMAGE 8 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 9 URL
echo ""
echo "COLLECTOR - IMAGE 9 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 10 URL
echo ""
echo "COLLECTOR - IMAGE 10 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 11 URL
echo ""
echo "COLLECTOR - IMAGE 11 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 12 URL
echo ""
echo "COLLECTOR - IMAGE 12 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#COLLECTOR - Image 13 URL
echo ""
echo "COLLECTOR - IMAGE 13 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "et" : $(date +%s),
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "url" : 'www.ecommerce.com',
  "crg" : $(uuidgen),
  "see" : false,
  "hrc" : 200,
  "agv" : ${COLLECTORAGENTVERSION},
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz

sleep 1

#Add Items to cart
echo ""
echo "GET - ADD ITEMS TO CART"
echo ""

CARTITEM=$(( RANDOM % (13 - 1 + 1 ) + 1 ))

CARTCOOKIE+=${SESSIONID}
CARTCOOKIE+=.route2

ADDITEMSTOCARTURL=${CARTURL}
ADDITEMSTOCARTURL+=${CARTITEM}

shopt -s extglob # Required to trim whitespace; see below

while IFS=':' read key value; do
    # trim whitespace in "value"
    value=${value##+([[:space:]])}; value=${value%%+([[:space:]])}
    if [[ "$key" = "ADRUM_1" ]]; then
      USERLOGINADRUM1="$value"
    fi
done < <(curl -i -b -H "User-Agent: ${USERAGENT}" -H "appdynamicssnapshotenabled: true" -H "JSESSIONID:${CARTCOOKIE}" -H "USERNAME: ${USERNAME}" -H "ADRUM: isAjax:true" -H "ROUTEID: .route2" -H "Cookie:${ITEMSALLCOOKIE}" -H "ADRUM_1: isMobile:true" \
-H "User-Agent: ${USERAGENT}" ${ADDITEMSTOCARTURL})
CARTBT=$(echo $USERLOGINADRUM1 | awk -F':' '{print $2}')
echo $CARTBT

sleep 1


#COLLECTOR - add items to cart
if [[ ! -z "$CARTBT" ]]; then
echo ""
echo "COLLECTOR - ADD ITEMS TO CART"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

COLLECTORRT=$(echo "`date +%s` - 10"| bc)

let "COLLECTOREVENT++"

echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "sst" : "f",
  "url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "rt" : ${COLLECTORRT},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 1037,
      "estimatedTime" : -1,
      "btId" : ${CARTBT}
    }
  ],
  "hrc" : 200,
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : $(uuidgen)
},{
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "cf" : "-1994",
  "type" : "ui",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "dmo" : '${IPHONE}',
  "mv" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "event" : 'App Start',
  "tm" : "-2048",
  "cc" : "8",
  "ab" : ${COLLECTORAB},
  "agv" : ${COLLECTORAGENTVERSION},
  "rootView" : "UITabBarController",
  "ds" : "475962",
  "av" : "1.0"
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz
fi
sleep 1

#Checkout
echo ""
echo "GET - CHECKOUT"
echo ""

CHECKOUTURL=${CARTURL}
CHECKOUTURL+=co
echo ${CHECKOUTURL}
shopt -s extglob # Required to trim whitespace; see below

while IFS=':' read key value; do
    # trim whitespace in "value"
    value=${value##+([[:space:]])}; value=${value%%+([[:space:]])}
    if [[ "$key" = "ADRUM_1" ]]; then
      USERLOGINADRUM1="$value"
    elif [[ "$key" = "ADRUM_0" ]]; then
      CLIENTID="$value"
    fi
  done < <(curl -i -b -H "User-Agent: ${USERAGENT}" -H "appdynamicssnapshotenabled: true" -H "JSESSIONID:${CARTCOOKIE}" -H "USERNAME: ${USERNAME}" -H "ADRUM: isAjax:true" -H "ROUTEID: .route2" -H "Cookie:${ITEMSALLCOOKIE}" -H "ADRUM_1: isMobile:true" \
  -H "User-Agent: ${USERAGENT}" ${CHECKOUTURL})
CHECKOUTBT=$(echo $USERLOGINADRUM1 | awk -F':' '{print $2}')
UUID=$(echo $CLIENTID | awk -F':' '{print $2}')
echo $UUID
echo $CHECKOUTBT

sleep 1

#COLLECTOR - Checkout
if [[ ! -z "$CHECKOUTBT" ]]; then
echo ""
echo "COLLECTOR - Checkout"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "sst" : "f",
"url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 9,
      "estimatedTime" : -1,
      "btId" : ${CHECKOUTBT}
    }
  ],
  "hrc" : 200,
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : ${UUID}
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz
fi

sleep 1

#Delete Items from Cart
echo ""
echo "DELETE - ITEMS FROM CART"
echo ""

shopt -s extglob # Required to trim whitespace; see below

while IFS=':' read key value; do
    # trim whitespace in "value"
    value=${value##+([[:space:]])}; value=${value%%+([[:space:]])}
    if [[ "$key" = "ADRUM_1" ]]; then
      USERLOGINADRUM1="$value"
    fi
done < <(curl -i -H "User-Agent: ${USERAGENT}" -H "appdynamicssnapshotenabled: true" -H "JSESSIONID:${CARTCOOKIE}" -H "USERNAME: ${USERNAME}" -H "ADRUM: isAjax:true" -H "ROUTEID: .route2" -H "Cookie:${ITEMSALLCOOKIE}" -H "ADRUM_1: isMobile:true" \
-H "User-Agent: ${USERAGENT}" -X "DELETE" ${ADDITEMSTOCARTURL})
DELETECARTBT=$(echo $USERLOGINADRUM1 | awk -F':' '{print $2}')
echo $DELETECARTBT

sleep 1

#COLLECTOR - DELETE ITEMS FROM CART
if [[ ! -z "$DELETECARTBT" ]]; then
echo ""
echo "COLLECTOR - DELETE ITEMS FROM CART"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

echo "[{
  "av" : ${VERSION},
  "ec" : ${COLLECTOREVENT},
  "see" : false,
  "mv" : ${VERSION},
  "et" : $(date +%s),
  "dmo" : '${IPHONE}',
  "sst" : "f",
"url" : 'www.ecommerce.com',
  "type" : "network-request",
  "osv" : ${OSVERSION},
  "geo" : '${COUNTRYNAME}',
  "cc" : "8",
  "tm" : "-2048",
  "ct" : "WIFI",
  "ca" : '${CARRIER}',
  "agv" : ${COLLECTORAGENTVERSION},
  "ab" : ${COLLECTORAB},
  "ds" : "475962",
  "cf" : "-1994",
  "bts" : [
    {
      "time" : 9,
      "estimatedTime" : -1,
      "btId" : ${DELETECARTBT}
    }
  ],
  "hrc" : 200,
  "st" : $(echo "`date +%s` - ${TIMEDIFF}"| bc),
  "crg" : $(uuidgen)
}]" | tee data

echo ""

gzip -c data > data.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: iOS" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" -H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@data.gz" ${COLLECTORURL}

rm -f -r data
rm -f -r data.gz
fi
echo ""

done
