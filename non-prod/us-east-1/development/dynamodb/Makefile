aws-profile:= pathing-dev
aws-vault:= aws-vault exec $(aws-profile) --no-session --
terragrunt_extra_args:=

init: prerequisites
	$(aws-vault) terragrunt init \
	$(terragrunt_extra_args)

plan: prerequisites
	$(aws-vault) terragrunt plan \
	$(terragrunt_extra_args)

apply: prerequisites
	$(aws-vault) terragrunt apply \
		--auto-approve
		$(terragrunt_extra_args)

destroy: prerequisites
	$(aws-vault) terragrunt destroy \
		--auto-approve \
		$(terragrunt_extra_args)

prerequisites:
	$(aws-vault) terragrunt validate
	terragrunt hclfmt