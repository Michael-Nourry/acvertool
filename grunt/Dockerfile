MAINTAINER Jerome.Helbling@ac-versailles.fr
MAINTAINER david.messager@ac-versailles.fr
MAINTAINER michael.nourry@ac-versailles.fr

FROM centos:centos6


# Environment Variables
#ENV http_proxy http://proxyng.in.ac-versailles.fr:8080
#ENV https_proxy http://proxyng.in.ac-versailles.fr:8080

# Enable Extra Packages for Entreprise Linux (EPEL) for CentOS
RUN yum install -y epel-release

# Install Git
RUN yum install -y git

# use git over https
# RUN git config --system url."https://".insteadOf git://

# Install Node.js and npm
RUN yum install -y nodejs npm

# Install app dependencies

RUN npm config set registry "http://registry.npmjs.org/" \
&& npm install -g inherits \
&& npm install -g bower \
&& cd /src \
&& npm install \
&& bower update --allow-root \
&& npm install -g grunt-cli 

# Ouverture du conteneur
WORKDIR /src/ressources/build
CMD grunt prod && grunt watch

