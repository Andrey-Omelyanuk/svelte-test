# FROM node:18.10-alpine3.15 as base
FROM node:23.1.0-alpine3.19 as base
RUN apk add --no-cache git
WORKDIR /app

FROM base as dev

