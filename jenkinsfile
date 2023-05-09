pipeline{ agent any
stages{
    stage('Build Maven'){
        steps{
            checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/swapnilxi/jenkins-java/']])
            sh 'mvn clean install'
        }
    }
}
}

