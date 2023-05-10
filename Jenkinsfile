pipeline {
    agent any 
    tools {
        maven "3.8.5"
    
    }
    stages {
        stage('Compile and Clean') { 
            steps {
                // Run Maven on a Unix agent.
              
                sh "./mvnw clean install"
            }
        }
        stage('deploying jar') { 
            
            steps {
                sh './mvnw package'
            }
        }
        stage('Build Docker image'){
          
            steps {
                echo "swapnilxi"
                sh 'ls'
                sh 'docker build -t  swapnilxi/javajenkins .'
            }
        }
        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                    sh "docker login -u swapnilxi -p ${Dockerpwd}"
                }
            }                
        }
        stage('Docker Push'){
            steps {
                sh 'docker push swapnilxi/javajenkins'
            }
        }
        stage('Docker deploy'){
            steps {
               
                sh 'docker run -itd -p  8081:8080 swapnilxi/javajenkins'
            }
        }
        stage('Archving') { 
            steps {
                 archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
