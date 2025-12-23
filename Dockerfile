# syntax=docker/dockerfile:1

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm init -y
RUN npm install @11ty/eleventy
CMD ["npx", "@11ty/eleventy", "--serve"]
EXPOSE 8080