env ?= dev
aws-profile = "pathing-$(env)"
aws-vault:= aws-vault exec $(aws-profile) --no-session --

init: prerequisites
	$(aws-vault) terragrunt init

plan: prerequisites
	$(aws-vault) terragrunt plan

apply: prerequisites
	$(aws-vault) terragrunt apply \
		--auto-approve

prerequisites:
	terragrunt validate
	terragrunt hclfmt