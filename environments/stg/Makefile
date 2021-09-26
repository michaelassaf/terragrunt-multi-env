env ?= dev
aws-profile = "pathing-$(env)"
aws-vault:= aws-vault exec $(aws-profile) --no-session --

init: prerequisites
	$(aws-vault) terragrunt init

plan: prerequisites
	terragrunt plan

apply: prerequisites
	terragrunt apply \
		--auto-approve

prerequisites:
	$(aws-vault) terragrunt validate
	$(aws-vault) terragrunt hclfmt