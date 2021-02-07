FROM postgres


LABEL Philipp Fleischer <philipp.fleischer0@gmail.com>

RUN apt-get update && apt-get install -y 
RUN apt-get install git -y
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt-get install nodejs npm -y
RUN npm install -g npm
RUN git clone https://github.com/berliner-webschmiede/posztgres
WORKDIR /posztgres
RUN npm install
#CMD npm start 
