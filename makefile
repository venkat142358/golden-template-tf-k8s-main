aws.memory:
	export GODEBUG=asyncpreemptoff=1
#Run this on apple silicone if you have issues with AWS plugin provider not found:
delete.validating.webhook.config:
	kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
delete.terragrunt.lock:
	find . -type f -name ".terraform.lock.hcl" -prune -exec rm -rf {} \;
delete.terragrunt.cache:
	find . -type f -name ".terragrunt-cache" -prune -exec rm -rf {} \;