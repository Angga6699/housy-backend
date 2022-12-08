FROM node:10.10.0-alpine

ENV NODE_ENV development

WORKDIR /home/root
COPY . .

RUN npm install
RUN npx sequelize db:migrate --env development
EXPOSE 5000
CMD ["npm","start"]
