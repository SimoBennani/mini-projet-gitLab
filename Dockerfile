ARG version="latest"
FROM nginx:${versrion}

LABEL maintainer="Mohamed Bennani"

RUN apt-get update éé \
    apt-get install -y git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN rm -rf /usr/Share/nginx/html/* \
    && git clone https://github.com/diranetafen/static-website-example.git /usr/Share/nginx/html/

EXPOSE 80

ENTRYPOINT [ "/usr/bin/nginx", "-g", "daemon off;" ]