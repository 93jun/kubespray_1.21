#!/bin/bash
kubectl create ns monitoring
kubectl label node edge-master location=edge
kubectl label node edge-worker1 location=edge
kubectl label node edge-worker2 location=edge
kubectl label node edge-worker3 location=edge
kubectl label node cloud-aws location=cloud
kubectl label node cloud-gcp location=cloud
kubectl label node cloud-azure location=cloud
kubectl label node cloud-naver location=cloud
kubectl apply -k ../jh-test/deploy -n monitoring


