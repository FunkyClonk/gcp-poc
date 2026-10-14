# gcp-poc

Learning project to deploy a automaticaly with terraform, ansible and argoCD a GKE Kubernetes cluster on GCP with a simple application running on it.

## Terraform

To test the terraform configuration localy :

```bash
cp terrfarom.tfvars.example terraform.tfvars
```

And edit :
```bash
project_id   = "YOUR_PROJECT_ID"
region       = "europe-west1"
cluster_name = "demo-gke-autopilot"
```

To run it with Github Actions pipelines, define the following secrets on Settings > Secrets and variables > Actions

```bash
GCP_PROJECT_ID
GCP_WIF_PROVIDER
GCP_TF_SERVICE_ACCOUNT
```