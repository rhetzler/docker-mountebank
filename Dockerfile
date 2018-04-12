FROM alpine:3.7

EXPOSE 2525
ENTRYPOINT ["mb"]
CMD ["start"]
#CMD ["start", "--mock"]
ENV MOUNTEBANK_VERSION=1.14.0

RUN apk add --update nodejs
RUN npm install -g mountebank@${MOUNTEBANK_VERSION} --production
