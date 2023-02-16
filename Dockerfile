# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /automateMinikubeDeployment
COPY . .
RUN yarn install --production
CMD ["node", "src/index.html"]
EXPOSE 3000