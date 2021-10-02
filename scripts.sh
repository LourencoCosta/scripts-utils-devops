#acessar container console container
docker exec -it <id_container> /bin/sh (/bin/bash)

#instalar coisas dentro do container
apk add <prog> #(curl por exemplo)

#restart service docker
service docker restart

#executar container com comanado
docker exec -it <id_container > <comand> #(ls por exemplo)

#acessar logs do container
docker logs -f <id_container>

#buildar alterações exporter
sudo docker build -t exporter ~/analytical/scripts/golang/update_monitoring/requisits/exporter

docker build -t threshold:1.0 .
docker container run -p 3001:3000 -v ${PWD}:/app -td threshold:1.0

#comandos excluir imagens
docker rmi -f $(docker images -q)

docker build -t painel-zendesk:1.0 .
docker container run -p 3001:3000 -v ${PWD}:/app -td painel-zendesk:1.0

docker build -t server-zendesk:1.0 .
docker container run -p 3334:3334 -v ${PWD}:/app -td server-zendesk:1.0


