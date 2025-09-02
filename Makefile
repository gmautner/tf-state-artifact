.PHONY: deploy

deploy:
ifndef ENV
	$(error ENV is not set. Usage: make deploy ENV=<environment>)
endif
	@echo "Deploying to environment: $(ENV)"
	terraform init -backend-config="path=environments/$(ENV)/terraform.tfstate"
	terraform apply -auto-approve
