#!/bin/bash

kubectl create namespace get-requester
kubectl create namespace web-app

helm upgrade --install get-requester helm/get-requester
helm upgrade --install web-app helm/web-app