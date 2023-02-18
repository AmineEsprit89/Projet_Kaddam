pipeline {

    agent any


    stages {
    /*
        stage ('GIT') {
            steps {
               echo "Getting Project from Git"; 
                git branch: "main", 
                    url: "https://github.com/......";
            }
        }
        */
       
        stage("Build") {
            steps {
                sh "chmod +x mvnw"
                sh "./mvnw clean package -DskipTests"
            }
        }

        
        stage("SRC Analysis Testing") {
            steps {
              sh"./mvnw sonar:sonar -Dsonar.host.url=http://host.docker.internal:9000 -Dsonar.login=admin -Dsonar.password=123456"
            }
        }
        
        /*
        stage("Build Docker image") {
            steps {
                sh "..............."
            }
        }

        stage("Deploy Artifact to private registry") {
            steps {
                sh "..............."
            }
        }

        stage("Deploy Dokcer Image to private registry") {
            steps {
                sh "..............."
            }
        }
        
        */
    }
   
    post {
        always {
            cleanWs()
        }
    }
    
}
