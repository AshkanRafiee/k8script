#!/usr/bin/env bash
namespaces=`kubectl get ns | cut -d' ' -f 1 | tail -n+2`
for ns in ${namespaces}; do
  echo ${ns}
  imgs=`kubectl get pods -n ${ns} -o jsonpath="{..imageID}" | tr " " "\n" | sort -u | cut -b 19-`
  for img in ${imgs}; do
    echo "  ${img}"
    done
    done
