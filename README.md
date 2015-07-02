# BookClub with Containers

# Try me 
Before you start get API keys for external services.  You will update the secure properties on the Deploy Stage of the generated pipeline.  
* http://developer.nytimes.com
* http://idreambooks.com/api
* http://www.alchemyapi.com

Bluemix Containers have gone live!  Before you start with this example you need to setup a namespace.  The namespace is set for each organization and will be used for your image repositories names in your organizations private Container Registry.  To setup a namespace, simply login to [https://bluemix.net](Bluemix), and click ![Start Containers][start-containers.jpg].  If you have not setup a namespace you will be asked to.  Even if you were a beta participant you will need to create a new namespace.  

Click this (clones project, creates DevOps Services Project, generates multi-stage pipeline, deploys application to IBM Bluemix):

[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy?repository=https://github.com/Puquios/bookclub-containers.git)

# Purpose 
* Demonstrate how to use the IBM Globalization Pipeline Service to dynamically get translated strings.  
* Provide example pipeline for deploying a Container based application and dependent services to Bluemix

# Application 
Forked from [https://hub.jazz.net/pipeline/steveatkin/BookClub](Steve Atkin's BookClub), with additional .bluemix/pipeline.yml file.  

Displays the best sellers information translated into the language you selected.

Java Application running in Liberty.  Binds to the Globalization Pipeline, Watson Machine, and IBM Insights for Twitter as Cloud Foundry Services.  Credentials and endpoints for these services are passed into the application via VCAP_SERVICES environement variable.  In addition leverages APIS from http://developer.nytimes.com, http://idreambooks.com/api and http://www.alchemyapi.com for sources of information about books.  

Contents:   
*   src/main/webapp: This directory contains the client side code (HTML/CSS/JavaScript/Java Server Pages) of the Book Club application.
*   src/main/java: This directory contains the server side code (JAVA) of the Book Club application. 
*   pom.xml: This file builds the Book Club application using Maven
  
        



    
