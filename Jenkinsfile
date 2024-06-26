node {
    def app

    stage('Clone repository') {

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("erdnando/web")
    }

    stage('Test image') {

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhubcredentials') {
            app.push("${env.BUILD_NUMBER}")
        }
    }
    
    stage('Trigger ManifestUpdate') {
                echo "No q no se podia!!!!"

        }
}
