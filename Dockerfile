FROM --platform=linux/amd64 node:22-slim
WORKDIR /usr/src/app
ADD . .
RUN npm ci
RUN npm run build
ENV PORT=8080
CMD ["node", "dist/main.js"]
