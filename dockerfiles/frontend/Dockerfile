FROM alpine:latest

RUN apk add --update nodejs nodejs-npm && \
    apk add --no-cache git

RUN git clone https://github.com/gothinkster/react-redux-realworld-example-app.git

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

WORKDIR react-redux-realworld-example-app
RUN sed -i "s|API_ROOT = \'https:\/\/[A-Za-z-]*\/api\/\'|API_ROOT = \'https:\/\/localhost:8080\/api\/\'|" src/agent.js
RUN npm install

ENTRYPOINT ["/entrypoint.sh"]
