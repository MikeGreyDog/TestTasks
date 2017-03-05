#!/bin/sh

username="mike"
password="12341234"
JenkinsURL="localhost:9090"

#Install "Docker Build and Publish" plugin.

curl -X POST -d '<jenkins><install plugin="docker-build-publish@1.3.2" /></jenkins>' --header 'Content-Type: text/xml' http://$JenkinsURL/pluginManager/installNecessaryPlugins --user "$username:$password"

#Create new job using the mylocalconfig.xml file as config.
#Set the name for your new job into the $JobName value. Job steps:
# - 1. Get the sources from the Github repo
# - 2. Build the Docker image using the Dockerfile. 
# - 3. Publish the new image to Docker hub.

JobName="DockerBuildJob"
ConfigFile="mylocalconfig.xml"

curl -X POST http://$JenkinsURL/createItem?name=$JobName --data-binary @$ConfigFile -H "Content-Type:text/xml" --user "$username:$password"
