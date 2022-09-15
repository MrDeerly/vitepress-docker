FROM node:18-alpine

WORKDIR /app

RUN npm install vue@3.2.39 vitepress@1.0.0-alpha.15

EXPOSE 3000

CMD npm run env -- vitepress dev --host 0.0.0.0 --port 3000
