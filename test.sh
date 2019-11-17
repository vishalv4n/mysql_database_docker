#!/bin/bash
 
 if [ $(docker container ls -q --filter  name=my_db_doc_container)!='' ];then
  docker container stop my_db_doc_container
  docker container rm my_db_doc_container
 fi
 if  [ $(docker image ls -q --filter reference=my_db_doc)!='' ];then
 docker image rm my_db_doc
 fi
 docker build -t my_app_doc .
 docker run  -itd -p 9099:3306 --name my_db_doc _container my_db_doc