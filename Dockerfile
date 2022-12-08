FROM node:16

##ENV NODE_ENV development

WORKDIR /home/root
COPY . .

RUN npm install
#RUN npx sequelize db:migrate --env development
EXPOSE 5000
CMD ["npm","start"]
