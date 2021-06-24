FROM public.ecr.aws/lts/ubuntu:20.04

RUN apt-get update && \
    apt-get install -y nodejs

COPY ./package.json .
COPY ./node_modules ./node_modules
COPY ./index.js .

CMD ["/usr/bin/node", "index.js"]
