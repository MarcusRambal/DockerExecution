FROM docker:dind


RUN apt-get update && apt-get install -y git


WORKDIR /app
RUN git clone https://github.com/MarcusRambal/DockerScripts.git

COPY runContainer.sh/runContainer.sh
RUN chmod +x /runContainer.sh


CMD ["/runContainer.sh"]
