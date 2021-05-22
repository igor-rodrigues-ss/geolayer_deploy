FROM node:13-alpine as build

ARG APP_NAME=geolayers_fe

WORKDIR /app
COPY $APP_NAME/package.json /app/package.json
RUN npm install
COPY ./$APP_NAME /app/

RUN sed -i 's/REACT_APP_API_URL.*/REACT_APP_API_URL=http\:\/\/api\:8000/' /app/.env
RUN npm run build

FROM nginx:1.16.0-alpine
COPY --from=build /app/build /app/build
COPY ./front.conf /etc/nginx/conf.d/front.conf
COPY entrypoint.sh /app
RUN chmod +x /app/entrypoint.sh

EXPOSE 3000

CMD /app/entrypoint.sh

