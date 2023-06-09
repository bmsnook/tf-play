# tf-play: Terraform Play

Sandbox to learn and play with Terraform

Rather than hardcoding AWS account information in the files, I run the function "aws_env_tf" (defined below) to set environment variables that Terraform will read (I've seen conflicting accounts of whether Terraform picks up the "regular" AWS_ACCESS_KEY_ID, et al. variables in the absence of TF_VAR_\* variables.

## Functions for .bashrc and/or .zshrc
```
aws_env () {
	if [[ $# -eq 1 ]]
	then
		AWS_PROFILE="${1}" 
	else
		AWS_PROFILE="default" 
	fi
	export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile ${AWS_PROFILE}) 
	export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile ${AWS_PROFILE}) 
	export AWS_DEFAULT_REGION=$(aws configure get region --profile ${AWS_PROFILE}) 
	echo "${AWS_PROFILE} environment variables exported"
}

aws_env_tf () {
	if [[ $# -eq 1 ]]
	then
		AWS_PROFILE="${1}" 
	else
		AWS_PROFILE="default" 
	fi
	export TF_VAR_aws_access_key=$(aws configure get aws_access_key_id --profile ${AWS_PROFILE}) 
	export TF_VAR_aws_secret_key=$(aws configure get aws_secret_access_key --profile ${AWS_PROFILE}) 
	export TF_VAR_region=$(aws configure get region --profile ${AWS_PROFILE}) 
	echo "${AWS_PROFILE} environment variables exported to terraform"
}
```

