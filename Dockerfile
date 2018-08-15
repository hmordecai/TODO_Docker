FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git
RUN apt-get install -y gnupg
RUN apt-get install -y python 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x > setupsource
RUN chmod 755 setupsource
RUN ./setupsource -E bash -
RUN apt-get install -y nodejs
RUN curl https://www.npmjs.com/install.sh > install.sh
RUN chmod 755 install.sh
RUN ./install.sh
RUN git clone https://github.com/nuxt/todomvc.git
WORKDIR /todomvc
RUN npm i @feathersjs/feathers
RUN npm install ajv
RUN npm install ajv-keywords
RUN npm install nuxt --save
RUN npm install
