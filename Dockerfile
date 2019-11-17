FROM 200.0.1.1:5000/mysql 
ENV MYSQL_ROOT_PASSWORD=manager
ENV MYSQL_DATABASE=app_db
COPY db.sql /docker-entrypoint-initdb.d/
EXPOSE 3306