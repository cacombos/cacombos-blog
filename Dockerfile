FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN yarn \
    && yarn build


FROM nginx:1.23.3-alpine

WORKDIR /usr/share/nginx/html

COPY --chown=www-data:www-data --from=build /usr/src/app/public ./

