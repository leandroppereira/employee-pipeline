  QUESTÃO 8

oc new-project turquoise

oc new-project nexus

oc create -f nexus3-persistent-template.yaml

oc new-app nexus3-persistent

#oc new-app nexus3-persistent -p NEXUS_VERSION=3.87.1


configurar webhohk no repo:

https://github.com/leandroppereira/employee-backend.git

curl -H "Authorization: Bearer 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" \
     https://api.github.com/repos/leandroppereira/employee-backend/hooks

curl -X PATCH \
  -H "Authorization: Bearer <TOKEN>" \
  -H "Content-Type: application/json" \
  https://api.github.com/repos/leandroppereira/employee-backend/hooks/<ID> \
  -d '{
    "config": {
      "url": "https://el-employee-backend-turquoise.apps.cluster-xxx.openshiftapps.com",
      "content_type": "json"
    }
  }'

expor eventListener
oc create route edge --service=el-employee-backend --insecure-policy='Allow'