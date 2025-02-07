
FROM ubuntu:latest  


RUN apt-get update && apt-get install -y git


WORKDIR /app
RUN git clone https://github.com/MarcusRambal/DockerScripts.git


WORKDIR /app/proyecto


CMD ["bash"]
