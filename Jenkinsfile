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
						
                        "${WORKSPACE}\terraform init"
                        """                          
                    }
             }

        stage('Terraform Plan'){
            steps {                       
                        sh """
                        
                        echo "Creating Terraform Plan"
                        "${WORKSPACE}\terraform plan"
                        """                       
                }
            }
}
}