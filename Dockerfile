FROM node:12-stretch
USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node . .
RUN yarn install --production
EXPOSE 8080
CMD [ "node", "index.js" ]
