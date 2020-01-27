# Ansiterra Monitoring

Kubernetes Cluster with Prometheus, Grafana and MySQL

## Getting Started

This project uses Terraform to provision an empty GCP project with required APIs, VPC and GKE Cluster

### Prerequisites
- Terraform
- GCP Project or Organization
- Service Account Key (`.json` file)
- Terraform installed and running locally or in a container
- Helm v3 to install the charts into our Cluster
- GCloud SDK

```
1. Copy service account JSON file to "ansiterra" directory
2. Update the file name in "ansiterra/provider.tf"
```

### Resources to Create
- VPC + Subnetes + CloudNat +
-

### Update Gcloud Project
```
gcloud config set projec <gcp-project-id>
```

### Setup

Change directory into ansiterra
```
cd ansiterra
```

Initialize Terraform

```
terraform init
```

Plan the Terraform deployment

```
terraform plan
```

Apply the Terraform deployment

```
terraform apply
```

**Note:** Whenever confident enough, feel free to use the flags `-auto-approve` and `-refresh=true` for `terraform apply`

### Update Kubeconfig
```
gcloud container clusters get-credentials <cluster-name> --zone=<cluster-zone>
```

### Namespaces
Create Namespaces for Spinnaker and Prometheus

```
kubectl apply -f auxiliary/namespaces.yaml
```

### Helm
>Install Spinnaker

```
helm install spinnaker stable/spinnaker -f auxiliary/spinnaker.yaml -n spinnaker --timeout 600s
```

>Install Prometheus
```
helm install prometheus stable/prometheus -f auxiliary/prometheus.values.yaml -n prometheus
```

### Kubectl
Install Spinnaker LoadBalancer

```
kubectl apply -f auxiliary/spinnaker-ingress.yaml
```

Install Managed SSL Certificates for Spinnaker and Prometheus

```
kubectl apply -f auxiliary/managed_ssl_certs.yaml
```

Thank you

Reach out to emmanuel.stroem@gmail.com for contributions.