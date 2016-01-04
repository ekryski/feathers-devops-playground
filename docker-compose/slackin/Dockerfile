FROM node:4.2

RUN mkdir /home/slackin
WORKDIR /home/slackin
RUN npm install -g slackin
CMD slackin --silent --port $PORT $SLACK_ORG $SLACK_TOKEN