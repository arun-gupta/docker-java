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

# Docker Swarm
docker pull swarm
docker tag swarm localhost:5000/swarm
docker push localhost:5000/swarm

#OpenShift Origin
#docker pull openshift/origin
#docker tag openshift/origin localhost:5000/openshift-origin
#docker push localhost:5000/openshift-origin
#docker pull openshift/origin-docker-registry
#docker tag openshift/origin-docker-registry localhost:5000/openshift-origin-docker-registry
#docker push localhost:5000/openshift-origin-docker-registry
#docker pull openshift/origin-sti-builder
#docker tag openshift/origin-sti-builder localhost:5000/openshift-origin-sti-builder
#docker push localhost:5000/openshift-origin-sti-builder
#docker pull openshift/origin-deployer
#docker tag openshift/origin-deployer localhost:5000/openshift-origin-deployer
#docker push localhost:5000/openshift-origin-deployer
#docker pull arungupta/wildfly-mysql-javaee7:k8s
#docker tag arungupta/wildfly-mysql-javaee7:k8s localhost:5000/wildfly-mysql-javaee7:k8s
#docker push localhost:5000/wildfly-mysql-javaee7:k8s

