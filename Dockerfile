FROM node:18-alpine

COPY . /vitepress
WORKDIR /vitepress
VOLUME /vitepress

RUN npm install vue@3.2.39 vitepress@1.0.0-alpha.15 

EXPOSE 3000
CMD ["npm", "run", "vitepress", "dev", "docs"]
