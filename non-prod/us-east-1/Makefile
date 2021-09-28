aws-profile:= pathing-dev
aws-vault:= aws-vault exec $(aws-profile) --no-session --
terragrunt_extra_args:=

plan: prerequisites
	$(aws-vault) terragrunt run-all plan \
		$(terragrunt_extra_args)

apply: prerequisites
	$(aws-vault) terragrunt run-all apply \
		--auto-approve \
		$(terragrunt_extra_args)

destroy: prerequisites
	$(aws-vault) terragrunt run-all destroy \
		--auto-approve \
		$(terragrunt_extra_args)

output: prerequisites
	$(aws-vault) terragrunt run-all output \
		--auto-approve \
		$(terragrunt_extra_args)

prerequisites:
	$(aws-vault) terragrunt validate
	terragrunt hclfmt