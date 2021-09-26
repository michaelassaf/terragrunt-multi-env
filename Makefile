aws-profile:= pathing-dev
aws-vault:= aws-vault exec $(aws-profile) --no-session --
terragrunt_extra_args:=

init: prerequisites
	$(aws-vault) terragrunt init \
	$(terragrunt_extra_args)

apply: prerequisites
	$(aws-vault) terragrunt run-all plan \
		--auto-approve \
		$(terragrunt_extra_args)

apply: prerequisites
	$(aws-vault) terragrunt run-all apply \
		--auto-approve \
		$(terragrunt_extra_args)

destroy: prerequisites
	$(aws-vault) terragrunt run-all destroy \
		--auto-approve \
		$(terragrunt_extra_args)

destroy: prerequisites
	$(aws-vault) terragrunt run-all output \
		--auto-approve \
		$(terragrunt_extra_args)

prerequisites:
	$(aws-vault) terragrunt validate
	terragrunt hclfmt