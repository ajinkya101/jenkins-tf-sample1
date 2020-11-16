pipeline{
    agent any 
    tools {
		terraform 'terraform1'
	}
    stages {
    
        stage('Terraform Version'){
            
            steps { 
                        sh """
                            
                        echo "Initialising Terraform"
						
                        terraform --version
                        """                          
                    }
             }
}
}