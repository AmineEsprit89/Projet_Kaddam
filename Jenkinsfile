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
              sh"./mvnw sonar:sonar -Dsonar.host.url=http://172.18.0.2:9000 -Dsonar.login=admin -Dsonar.password=123456"
            }
        }
        
        
        stage("Build Docker image") {
            steps {
            	sh "chmod 777 /var/jenkins_home/workspace/Projet_Kaddam@tmp/durable-c976f4c6/script.sh"
                sh "./ sudo docker build -t spring-image . "
            }
        }
	
	/*
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
