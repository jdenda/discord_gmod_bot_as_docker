FROM node:alpine
RUN apk add git
RUN git -C /home/node clone  https://github.com/manix84/discord_gmod_bot.git

WORKDIR /home/node/discord_gmod_bot
RUN npm install 
CMD [ "npm","start" ]

EXPOSE 443
EXPOSE 37405