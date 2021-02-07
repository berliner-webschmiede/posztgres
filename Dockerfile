FROM node:14 
LABEL Philipp Fleischer <philipp.fleischer0@gmail.com>


RUN git clone https://github.com/berliner-webschmiede/posztgres

WORKDIR /posztgres

RUN npm install --save
RUN npx prisma generate
EXPOSE 5000
CMD npx prisma studio