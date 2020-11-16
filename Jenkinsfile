pipeline{
	agent any
	tools {
		terraform 'terraform1'
	}
	stages{
		stage('Terraform init'){
			sh 'terraform init'
		}
	}
}