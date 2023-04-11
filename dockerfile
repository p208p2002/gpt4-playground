FROM node:16.20.0
COPY . /play-gpt
WORKDIR /play-gpt
RUN yarn install
ARG NEXT_PUBLIC_AZURE_TOKEN
ENV NEXT_PUBLIC_AZURE_TOKEN=${NEXT_PUBLIC_AZURE_TOKEN}
RUN yarn build
CMD [ "yarn","start" ]