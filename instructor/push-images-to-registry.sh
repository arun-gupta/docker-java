# Wildfly
docker pull jboss/wildfly
docker tag jboss/wildfly dockerlab:5000/wildfly
docker push dockerlab:5000/wildfly

# Managed WildFly
docker tag instructor/wildfly-management dockerlab:5000/wildfly-management
docker push dockerlab:5000/wildfly-management

# Ticket-monster+PGSQ+WildFly
docker tag instructor/ticketmonster-pgsql-wildfly dockerlab:5000/ticketmonster-pgsql-wildfly
docker push dockerlab:5000/ticketmonster-pgsql-wildfly

# Postgres
docker pull postgres
docker tag postgres dockerlab:5000/postgres
docker push dockerlab:5000/postgres

# Modcluster
docker pull goldmann/mod_cluster
docker tag goldmann/mod_cluster dockerlab:5000/mod_cluster
docker push dockerlab:5000/mod_cluster

#Java EE 7 hol
docker pull arungupta/javaee7-hol
docker tag arungupta/javaee7-hol dockerlab:5000/javaee7-hol
docker push dockerlab:5000/javaee7-hol

# MySQL
docker pull mysql:latest
docker tag mysql dockerlab:5000/mysql
docker push dockerlab:5000/mysql

# WildFly MySQL
docker pull arungupta/wildfly-mysql-javaee7
docker tag arungupta/wildfly-mysql-javaee7 dockerlab:5000/wildfly-mysql-javaee7
docker push dockerlab:5000/wildfly-mysql-javaee7

# Docker Swarm
docker pull swarm
docker tag swarm dockerlab:5000/swarm
docker push dockerlab:5000/swarm

#OpenShift Origin
docker pull openshift/origin
docker tag openshift/origin dockerlab:5000/openshift-origin
docker push dockerlab:5000/openshift-origin
docker pull openshift/origin-docker-registry
docker tag openshift/origin-docker-registry dockerlab:5000/openshift-origin-docker-registry
docker push dockerlab:5000/openshift-origin-docker-registry
docker pull openshift/origin-sti-builder
docker tag openshift/origin-sti-builder dockerlab:5000/openshift-origin-sti-builder
docker push dockerlab:5000/openshift-origin-sti-builder
docker pull openshift/origin-deployer
docker tag openshift/origin-deployer dockerlab:5000/openshift-origin-deployer
docker push dockerlab:5000/openshift-origin-deployer
docker pull arungupta/wildfly-mysql-javaee7:k8s
docker tag arungupta/wildfly-mysql-javaee7:k8s dockerlab:5000/wildfly-mysql-javaee7:k8s
docker push dockerlab:5000/wildfly-mysql-javaee7:k8s

