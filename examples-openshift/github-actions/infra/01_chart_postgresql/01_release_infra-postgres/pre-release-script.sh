###############################################################################
# Because of using helm-repo as private repository  in gh-workflow,
# we have to reddefine it for installing from public ones 
###############################################################################
helm repo add --force-update helm_repo https://charts.bitnami.com/bitnami
helm repo update

oc adm policy add-scc-to-user anyuid -z default -n $NS