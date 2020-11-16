pipeline{
    agent any 
    tools {
		terraform 'terraform1'
	}
    environment {
        TF_HOME = tool('terraform1')
        TF_IN_AUTOMATION = "true"
        PATH = "$TF_HOME:$PATH"
    }
    stages {
    
        stage('Terraform Init'){
            
            steps { 
                        sh """
                            
                        echo "Initialising Terraform"
                        terraform init
                        """                          
                    }
             }

        stage('Terraform Plan'){
            steps {                       
                        sh """
                        
                        echo "Creating Terraform Plan"
                        terraform plan
                        """                       
                }
            }
}
}