oc new-project turquoise

oc apply -f trigger/employee-backend.eventlistener.yaml

oc create route edge --service=el-employee-backend --insecure-policy='Allow'

oc new-project nexus

oc create -f nexus/nexus3-persistent-template.yaml

oc new-app nexus3-persistent

