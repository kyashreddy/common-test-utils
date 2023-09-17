#!/bin/bash
CLUSTER=$(kubectl config current-context | cut -d '/' -f2)
TS=$(date +%s)
echo $TS
DIRECTORY="k8sbackup-${CLUSTER}-${TS}"
mkdir -p $DIRECTORY
 
for TYPE in $(kubectl api-resources --namespaced=false -o name)
     do
        mkdir -p $(dirname $DIRECTORY/$TYPE)
        kubectl get -o=yaml $TYPE > $DIRECTORY/$TYPE.yaml
     done
done

for NAMESPACE in $(kubectl get -o=name namespaces | cut -d '/' -f2)
do
    for TYPE in $(kubectl api-resources --namespaced=true -o name )
    do
        mkdir -p $(dirname $DIRECTORY/$NAMESPACE/$TYPE)
        kubectl get -n $NAMESPACE -o=yaml $TYPE > $DIRECTORY/$NAMESPACE/$TYPE.yaml
    done
done
