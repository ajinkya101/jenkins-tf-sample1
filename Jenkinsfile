node {
 
    // Mark the code checkout 'Checkout'....
    stage 'Checkout'
 
    // // Get some code from a GitHub repository
    git url: 'git@github.com:ajinkya101/jenkins-tf-sample1.git'
 
    // Get the Terraform tool.
    def tfHome = tool name: 'terraform1', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'
    env.PATH = "${tfHome}:${env.PATH}"
    wrap([$class: 'AnsiColorBuildWrapper', colorMapName: 'xterm']) {
 
        // Mark the code build 'plan'....
        stage name: 'Plan', concurrency: 1
        // Output Terraform version
        sh "terraform --version"
	}		
}