FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN yarn \
    && yarn build


FROM nginx:1.24-alpine3.17

WORKDIR /usr/share/nginx/html

COPY --chown=www-data:www-data --from=build /usr/src/app/public ./

