FROM centos:centos6


MAINTAINER Jerome.Helbling@ac-versailles.fr
MAINTAINER david.messager@ac-versailles.fr
MAINTAINER michael.nourry@ac-versailles.fr


#Update and  Enable Extra Packages for Entreprise Linux (EPEL) for CentOS
RUN yum update -y && yum install -y epel-release

# Install Git
RUN yum install -y git


# Install Node.js and npm
RUN yum install -y nodejs npm

# Install app dependencies

RUN npm config set registry "http://registry.npmjs.org/" \
&& npm install -g inherits \
&& npm install -g bower \
&& bower update --allow-root \
&& npm install -g grunt-cli 

# Exec
WORKDIR /src/ressources/build
CMD grunt prod && grunt watch

