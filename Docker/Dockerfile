FROM ubuntu

MAINTAINER Jeff Morgan (jeff.morgan@appdynamics.com)

################## BEGIN INSTALLATION ######################

# Update the repository sources list
RUN apt-get update

# Install packages
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y bc
RUN apt-get install -y uuid-runtime

# Add app source
RUN mkdir /appdynamics
ADD GenerateAndroidCrashReport.sh /appdynamics/GenerateAndroidCrashReport.sh
ADD GenerateAndroidData.sh /appdynamics/GenerateAndroidData.sh
ADD GenerateIOSCrashReport.sh /appdynamics/GenerateIOSCrashReport.sh
ADD GenerateIOSData.sh /appdynamics/GenerateIOSData.sh

# Set envrironment variable
ADD /env.sh /appdynamics/
ADD /startup.sh /appdynamics/
RUN chmod 777 /appdynamics/*.sh

##################### INSTALLATION END #####################

# Set environment variable and start the App
CMD /appdynamics/startup.sh && tail -F /var/log/dmesg 
