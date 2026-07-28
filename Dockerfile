FROM mariadb:12.3
COPY *.sql /docker-entrypoint-initdb.d/
#Attention si plusieurs fichiers sql , eventuel ordre bon ou pas
#on pourrait fabriquer all.sql par concatenation de init-db.sql et insert-db.sql
#COPY all.sql /docker-entrypoint-initdb.d/
