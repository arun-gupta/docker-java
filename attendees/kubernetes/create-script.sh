./cluster/kubectl.sh --v=5 create -f ../../attendees/kubernetes/app-mysql-pod.yaml
./cluster/kubectl.sh --v=5 create -f ../../attendees/kubernetes/app-mysql-service.yaml
./cluster/kubectl.sh --v=5 create -f ../../attendees/kubernetes/app-wildfly-rc.yaml
