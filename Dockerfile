FROM node:14-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN yarn \
    && yarn build


FROM nginx:1.21.4-alpine

WORKDIR /usr/share/nginx/html

COPY --chown=www-data:www-data --from=build /usr/src/app/public ./

