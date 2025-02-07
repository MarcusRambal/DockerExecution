FROM docker:dind


RUN apk add --no-cache git


WORKDIR /app
RUN git clone https://github.com/MarcusRambal/DockerScripts.git

COPY runContainer.sh / runContainer.sh
RUN chmod +x /runContainer.sh


CMD ["/runContainer.sh"]
