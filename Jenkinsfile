pipeline{
    agent any 
    tools {
        "org.jenkinsci.plugins.terraform.TerraformInstallation" "terraform"
    }
    environment {
        TF_HOME = tool('terraform')
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
}