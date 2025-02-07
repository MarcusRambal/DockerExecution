
FROM docker:dind

WORKDIR /app
RUN git clone https://github.com/MarcusRambal/DockerScripts.git


WORKDIR /app/proyecto


CMD ["bash"]
