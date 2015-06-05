# Wildfly
docker pull jboss/wildfly
docker tag jboss/wildfly localhost:5000/wildfly
docker push localhost:5000/wildfly

# Managed WildFly
docker tag instructor/wildfly-management localhost:5000/wildfly-management
docker push localhost:5000/wildfly-management

# Ticket-monster+PGSQ+WildFly
docker tag instructor/ticketmonster-pgsql-wildfly localhost:5000/ticketmonster-pgsql-wildfly
docker push localhost:5000/ticketmonster-pgsql-wildfly

# Postgres
docker pull postgres
docker tag postgres localhost:5000/postgres
docker push localhost:5000/postgres

# Modcluster
docker pull goldmann/mod_cluster
docker tag goldmann/mod_cluster localhost:5000/mod_cluster
docker push localhost:5000/mod_cluster

#Java EE 7 hol
docker pull arungupta/javaee7-hol
docker tag arungupta/javaee7-hol localhost:5000/javaee7-hol
docker push localhost:5000/javaee7-hol

# MySQL
docker pull mysql:latest
docker tag mysql localhost:5000/mysql
docker push localhost:5000/mysql

# WildFly MySQL
docker pull arungupta/wildfly-mysql-javaee7
docker tag arungupta/wildfly-mysql-javaee7 localhost:5000/wildfly-mysql-javaee7
docker push localhost:5000/wildfly-mysql-javaee7

