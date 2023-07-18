# Terraform For Better Design

Will deploy Strapi, Postgres, Meilisearch and Nuxt (or anything else you want) to AWS.

# Terragrunt

Terragrunt is used to manage environments.

#Known Issues
Route53 is definitely configured in the wrong order, and it's order needs to be looked at.
To install from scratch, currently deploy without Route53 and reference to Route53 dependency commented out. This will install with a blank CertArn.
Once first deploy is completed, you will be able to add Rout53 back in. Reason - Route 53 can't verify the certificat if the domain doesn't return anything yet. So ingress and LB need to be up and running first.
However, they need re-deploying with the Cert Arn to be able to verify the domain.
AWS provisioning of GP2 file system also seems to need to be done in mulitple parts - two deployments seems to resolve this provision.
Helm issue with Meilisearch was resolved by running: helm repo update within the meilisearch repo
