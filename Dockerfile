FROM node:alpine3.12
RUN apk --no-cache add bash \
    curl \
    git \
    npm \
    vim

RUN npm install create-react-app -g && \
    cd home && create-react-app myapp --script-version 1.1.5
WORKDIR /home/myapp

CMD ["npm", "start"]