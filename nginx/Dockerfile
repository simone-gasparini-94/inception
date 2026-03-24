FROM        debian:12

WORKDIR     /usr/src/app

RUN         apt-get update && apt-get install -y nginx

EXPOSE      80

COPY        ./nginx_script.sh .
RUN         chmod +x nginx_script.sh

CMD         [ "./nginx_script.sh"]