#! /bin/bash
USERNAME=test
PASSWORD=appdynamics
USERAGENT="Ecommerce Mobile Application/1.0 CFNetwork/711.2.23 Darwin/13.4.0"
URL=
COLLECTOR_URL=
COLLECTORKEY=
ECOMMERCEURL=www.ecommerce.com
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

ECOMMERCELOGINURL=${ECOMMERCEURL}
ECOMMERCELOGINURL+=/appdynamicspilot/rest/user
ECOMMERCEITEMSALLURL=${ECOMMERCEURL}
ECOMMERCEITEMSALLURL+=/appdynamicspilot/rest/items/all
ECOMMERCEIMAGE1URL=${ECOMMERCEURL}
ECOMMERCEIMAGE1URL+=/appdynamicspilot/images/A_Clockwork_Orange-Anthony_Burgess.jpg
ECOMMERCEIMAGE2URL=${ECOMMERCEURL}
ECOMMERCEIMAGE2URL+=/appdynamicspilot/images/goldfinch.jpg
ECOMMERCEIMAGE3URL=${ECOMMERCEURL}
ECOMMERCEIMAGE3URL+=/appdynamicspilot/images/personal.jpg
ECOMMERCEIMAGE4URL=${ECOMMERCEURL}
ECOMMERCEIMAGE4URL+=/appdynamicspilot/images/Farewell_To_Arms-Ernest_Hemingway.jpg
ECOMMERCEIMAGE5URL=${ECOMMERCEURL}
ECOMMERCEIMAGE5URL+=/appdynamicspilot/images/Freakonomics-Stephen_Levitt.jpg
ECOMMERCEIMAGE6URL=${ECOMMERCEURL}
ECOMMERCEIMAGE6URL+=/appdynamicspilot/images/Jordan-Driven_From_Within.jpg
ECOMMERCEIMAGE7URL=${ECOMMERCEURL}
ECOMMERCEIMAGE7URL+=/appdynamicspilot/images/Sacred_Hoops-Phil_Jackson.jpg
ECOMMERCEIMAGE8URL=${ECOMMERCEURL}
ECOMMERCEIMAGE8URL+=/appdynamicspilot/images/Shantaram-Gregory_David_Roberts.jpg
ECOMMERCEIMAGE9URL=${ECOMMERCEURL}
ECOMMERCEIMAGE9URL+=/appdynamicspilot/images/The_Fist_Of_God-Forsyth.jpg
ECOMMERCEIMAGE10URL=${ECOMMERCEURL}
ECOMMERCEIMAGE10URL+=/appdynamicspilot/images/The_Godfather-Mario_Puzo.jpg
ECOMMERCEIMAGE11URL=${ECOMMERCEURL}
ECOMMERCEIMAGE11URL+=/appdynamicspilot/images/The_Lost_City_Of_Z-David_Grann.jpg
ECOMMERCEIMAGE12URL=${ECOMMERCEURL}
ECOMMERCEIMAGE12URL+=/appdynamicspilot/images/The_Tourist-Olen_Steinhauer.jpg
ECOMMERCEIMAGE13URL=${ECOMMERCEURL}
ECOMMERCEIMAGE13URL+=/appdynamicspilot/images/unbroken.jpg
ECOMMERCECARTURL=${ECOMMERCEURL}
ECOMMERCECARTURL+=/appdynamicspilot/rest/cart/

COLLECTORURL=${COLLECTOR_URL}
COLLECTORURL+=/eumcollector/mobileMetrics?version=2
COLLECTORBID=7502603c73d32b0706f359bc8cfd1762
COLLECTORAN=com.appdynamics.pmdemoapps.android.ECommerceAndroid
COLLECTOREVENT=1
COLLECTORAGENTVERSION=4.1.4.0
COLLECTORAB=bd7bfaab131f9ead6cf916905f927f3e57cc38c2
COLLECTORITEMSLISTACTIVITY=com.appdynamics.pmdemoapps.android.ECommerceAndroid.ItemListActivity
COLLECTORLOGINACTIVITY=com.appdynamics.pmdemoapps.android.ECommerceAndroid.LoginActivity
COLLECTORITEMPARSERACTIVITY=com.appdynamics.pmdemoapps.android.ECommerceAndroid.parser.ItemParser
COLLECTORITEMDETAILACTIVITY=com.appdynamics.pmdemoapps.android.ECommerceAndroid.ItemDetailActivity

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

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCELOGINURL}',"st":${ST},"et":${ET}, \
"hrc":200,"crg":$(uuidgen),"sst":"f","bts":[{"btId":${USERLOGINBT},"time":5,"estimatedTime":-1}],"see":false}]" | tee androiddata

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

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

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"method-call","dm":${DEVICE},"dmo":"sdk_phone_armv7",  \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},  \
"ec":${COLLECTOREVENT},"st":${ST},"et":${ET},"mid":{"cls":'${COLLECTORITEMSLISTACTIVITY}',"mth":"onCreate","icm":false},  \
"args":[null]},{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"ui","dm":${DEVICE},"dmo":"sdk_phone_armv7"  \
,"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},  \
"ec":${COLLECTOREVENT},"st":${ST},"activity":'${COLLECTORITEMSLISTACTIVITY}',"event":'App Start'},  \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE},"dmo":"sdk_phone_armv7",  \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},  \
"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEITEMSALLURL}',"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"sst":"f",  \
"bts":[{"btId":${ITEMSALLBT},"time":5,"estimatedTime":1662}],"see":false}]" | tee androiddata

echo ""

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

fi

sleep 1

#COLLECTOR - REQUEST SERVICE

echo ""
echo "COLLECTOR - REQUEST SERVICE"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"method-call","dm":${DEVICE},"dmo":"sdk_phone_armv7", \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID}, \
"ec":${COLLECTOREVENT},"st":${ST},"et":${ET},"mid":{"cls":'${COLLECTORITEMPARSERACTIVITY}',"mth":"parse","icm":false}, \
"args":['<?xml version="1.0" encoding="UTF-8" standalone="yes"?><items><product><id>1<\/id><title>A Clockwork Orange<\/title><imagePath>images\/A_Clockwork_Orange-Anthony_Burgess.jpg<\/imagePath><price>5.95<\/price><\/product><product><id>2<\/id><title>The Goldfinch: A Novel<\/title><imagePath>images\/goldfinch.jpg<\/imagePath><price>16.75<\/price><\/product><product><id>3<\/id><title>Personal<\/title><imagePath>images\/personal.jpg<\/imagePath><price>16.95<\/price><\/product><product><id>4<\/id><title>Farewell To Arms<\/title><imagePath>images\/Farewell_To_Arms-Ernest_Hemingway.jpg<\/imagePath><price>10.95<\/price><\/product><product><id>5<\/id><title>Freakonomics<\/title><imagePath>images\/Freakonomics-Stephen_Levitt.jpg<\/imagePath><price>5.95<\/price><\/product><product><id>6<\/id><title>Driven From Within<\/title><imagePath>images\/Jordan-Driven_From_Within.jpg<\/imagePath><price>10.25<\/price><\/product><product><id>7<\/id><title>Sacred Hoops<\/title><imagePath>images\/Sacred_Hoops-Phil_Jackson.jpg<\/imagePath><price>14.95<\/price><\/product><product><id>8<\/id><title>Shantaram<\/title><imagePath>images\/Shantaram-Gregory_David_Roberts.jpg<\/imagePath><price>12.75<\/price><\/product><product><id>9<\/id><title>The Fist Of God<\/title><imagePath>images\/The_Fist_Of_God-Forsyth.jpg<\/imagePath><price>10.65<\/price><\/product><product><id>10<\/id><title>The Godfather<\/title><imagePath>images\/The_Godfather-Mario_Puzo.jpg<\/imagePath><price>5.95<\/price><\/product><product><id>11<\/id><title>The Lost City Of Z<\/title><imagePath>images\/The_Lost_City_Of_Z-David_Grann.jpg<\/imagePath><price>5.5<\/price><\/product><product><id>12<\/id><title>The Tourist<\/title><imagePath>images\/The_Tourist-Olen_Steinhauer.jpg<\/imagePath><price>6.95<\/price><\/product><product><id>13<\/id><title>Unbroken<\/title><imagePath>images\/unbroken.jpg<\/imagePath><price>26.95<\/price><\/product><\/items>'],"ret":"not-evaluated"}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#Collector For Image 1 URL
echo ""
echo "COLLECTOR FOR IMAGE 1 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE1URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 2 URL
echo ""
echo "COLLECTOR - IMAGE 2 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE2URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 3 URL
echo ""
echo "COLLECTOR - IMAGE 3 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE3URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 4 URL
echo ""
echo "COLLECTOR - IMAGE 4 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE4URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1


#COLLECTOR - Image 5 URL
echo ""
echo "COLLECTOR - IMAGE 5 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE5URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 6 URL
echo ""
echo "COLLECTOR - IMAGE 6 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE6URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1


#COLLECTOR - Image 7 URL
echo ""
echo "COLLECTOR - IMAGE 7 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE7URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 8 URL
echo ""
echo "COLLECTOR - IMAGE 8 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE8URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 9 URL
echo ""
echo "COLLECTOR - IMAGE 9 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE9URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 10 URL
echo ""
echo "COLLECTOR - IMAGE 10 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE10URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 11 URL
echo ""
echo "COLLECTOR - IMAGE 11 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE11URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 12 URL
echo ""
echo "COLLECTOR - IMAGE 12 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAG124URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - Image 13 URL
echo ""
echo "COLLECTOR - IMAGE 13 URL"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEIMAGE13URL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":$(uuidgen),"bts":[],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

sleep 1

#COLLECTOR - ACTIVITY CHANGE
echo ""
echo "COLLECTOR - ACTIVITY CHANGE"
echo ""

TIMEDIFF=$(( RANDOM % (60 - 1 + 1 ) + 1 ))

let "COLLECTOREVENT++"

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"method-call","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST},"et":${ET}, \
"mid":{"cls":'${COLLECTORITEMDETAILACTIVITY}',"mth":"onCreate","icm":false},"args":[null]}, \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"ui","dm":${DEVICE},"dmo":"sdk_phone_armv7", \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}', \
"ca":'${CARRIER}',"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST},"et":${ET}, \
"activity":'${COLLECTORITEMDETAILACTIVITY}',"event":'Activity Change'}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz

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

ECOMMERCEADDITEMSTOCARTURL=${ECOMMERCECARTURL}
ECOMMERCEADDITEMSTOCARTURL+=${CARTITEM}

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

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":'method-call',"dm":${DEVICE}, \
"dmo":'sdk_phone_armv7',"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST},"et":${ET}, \
"mid":{"cls":'${COLLECTORITEMSLISTACTIVITY}',"mth":"onCreate","icm":false},"args":[null]}, \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"ui","dm":${DEVICE},"dmo":"sdk_phone_armv7", \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST}, \
"activity":'${COLLECTORITEMSLISTACTIVITY}',"event":'Activity Change'}, \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request", \
"dm":${DEVICE},"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEADDITEMSTOCARTURL}',"st":${ST},"et":${ET}, \
"hrc":200,"crg":$(uuidgen),"sst":"f", \
"bts":[{"btId":${CARTBT},"time":1028,"estimatedTime":-1}],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz
fi
sleep 1

#Checkout
echo ""
echo "GET - CHECKOUT"
echo ""

CHECKOUTURL=${CARTURL}
CHECKOUTURL+=co

ECOMMERCECHECKOUTURL=${ECOMMERCECARTURL}
ECOMMERCECHECKOUTURL+=co

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

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request","dm":${DEVICE}, \
"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}',"ct":"4g", \
"bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCECHECKOUTURL}', \
"st":${ST},"et":${ET},"hrc":200,"crg":${UUID},"sst":"f", \
"bts":[{"btId":${CHECKOUTBT},"time":257,"estimatedTime":-1}],"see":false}]" | tee androiddata

echo ""

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz
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

ST=$(echo "`date +%s` - ${TIMEDIFF}"| bc)
echo ${ST}

ET=$(date +%s)
echo ${ET}

echo "[{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":'method-call',"dm":${DEVICE}, \
"dmo":'sdk_phone_armv7',"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST},"et":${ET}, \
"mid":{"cls":'${COLLECTORITEMSLISTACTIVITY}',"mth":"onCreate","icm":false},"args":[null]}, \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"ui","dm":${DEVICE},"dmo":"sdk_phone_armv7", \
"ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"st":${ST}, \
"activity":'${COLLECTORITEMSLISTACTIVITY}',"event":'Activity Change'}, \
{"avi":1,"av":${VERSION},"agv":${COLLECTORAGENTVERSION},"ab":${COLLECTORAB},"type":"network-request", \
"dm":${DEVICE},"dmo":"sdk_phone_armv7","ds":541,"tm":"731","cf":"Unknown","cc":1,"osv":${OSVERSION},"geo":'${COUNTRYNAME}',"ca":'${CARRIER}', \
"ct":"4g","bid":${COLLECTORBID},"ec":${COLLECTOREVENT},"url" : '${ECOMMERCEADDITEMSTOCARTURL}',"st":${ST},"et":${ET}, \
"hrc":200,"crg":$(uuidgen),"sst":"f", \
"bts":[{"btId":${DELETECARTBT},"time":1028,"estimatedTime":-1}],"see":false}]" | tee androiddata

echo " "

gzip -c androiddata > androiddata.gz

curl -is --trace-ascii "-" -H "User-Agent: ${USERAGENT}" -H "osn: Android" -H "bid: ${COLLECTORBID}" -H "an: ${COLLECTORAN}" \
-H "ky: ${COLLECTORKEY}" -H "Content-Type: application/x-www-form-urlencoded" -H "Accept-Encoding: gzip, deflate" \
--data-binary "@androiddata.gz" ${COLLECTORURL}

rm -f -r androiddata
rm -f -r androiddata.gz
fi
echo ""

done
