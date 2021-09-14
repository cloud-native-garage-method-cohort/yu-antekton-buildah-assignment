FROM quay.io/ibmgaragecloud/node:lts-stretch
ENV NODE_ENV=production

WORKDIR /app
RUN npx express-generator yu-an 

COPY [ "./views/index.jade", "./views/index.jade"]

RUN npm install --production

COPY . .

CMD [ "npm", "start" ]
