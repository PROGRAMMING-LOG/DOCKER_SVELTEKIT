# 実行用
FROM node:18.12.1-slim
ENV HOST 0.0.0.0
COPY ./ /app
WORKDIR /app

RUN yarn install

CMD ["yarn", "dev", "--host"]