#  Copyright 2015 IBM
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# GoLive Container service will move registry from beta (registry-ice) to production (registry) container registries
# FROM registry-ice.ng.bluemix.net/ibmliberty
# FROM registry.ng.bluemix.net/ibmliberty
FROM ibmliberty
MAINTAINER Robbie Minshall "rjminsha@us.ibm.com"

ENV WEB_PORT 80
EXPOSE  80

# set this server as the default server for the liberty image
ADD config/server.xml /opt/ibm/wlp/usr/servers/defaultServer/server.xml
ADD target/BookClub-1.0-SNAPSHOT.war /opt/ibm/wlp/usr/servers/defaultServer/apps/bookclub.war

CMD ["/opt/ibm/wlp/bin/liberty-run"]
