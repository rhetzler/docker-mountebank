FROM alpine:3.2

EXPOSE 2525
ENTRYPOINT ["mb"]
CMD ["start"]

RUN apk add --update nodejs
RUN npm install -g mountebank --production
