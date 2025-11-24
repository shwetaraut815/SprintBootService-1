# Telecom CI/CD — Jenkins + Docker + Kubernetes + Terraform + Ansible + AWS

## Overview
This project demonstrates an end-to-end CI/CD pipeline for a telecom microservice. Infrastructure is provisioned by Terraform, configured with Ansible, CI is Jenkins (Maven, Docker), images are pushed to ECR/Docker Hub, and deployments run on Kubernetes (kubeadm) with manifests in `k8s/`.

## Repo structure
- Jenkinsfile.build
- Jenkinsfile.deploy
- Dockerfile
- src/
- pom.xml
- k8s/deployment.yaml
- k8s/service.yaml
- terraform/
- ansible/

## How it works
1. Jenkins builds the jar and Docker image, pushes it to Docker Hub.
2. Jenkins triggers `kubectl apply` (or Ansible playbook) to update the Deployment.
3. Kubernetes pulls the image, ReplicaSet creates Pods, Service exposes the app.
4. Logs and artifacts stored in S3; CloudWatch monitors metrics and alerts via SNS.

##  prerequisites
- Jenkins server (with Docker, Maven, Git, Java installed)
- kubeadm cluster 
- AWS account for Terraform resources
- Docker Hub or ECR repo

## Important notes
- Ensure `KUBECONFIG` is accessible by Jenkins (on the same machine use `/etc/kubernetes/admin.conf`).
- Use IAM roles for secret retrieval — do not store AWS credentials in Jenkins jobs.

- Name: Shweta Raut
- Repo: https://github.com/shwetaraut815/SprintBootService-1
