pipeline{
    agent any 
    tools {
		terraform 'terraform1'
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