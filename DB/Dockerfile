FROM postgres
LABEL Philipp Fleischer <philipp.fleischer0@gmail.com>

RUN apt-get update && apt-get install -y 
RUN apt-get install git -y 

RUN git clone https://github.com/berliner-webschmiede/posztgres
WORKDIR /posztgres
RUN npm install --save 
CMD npm start 
