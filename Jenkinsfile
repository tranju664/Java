pipeline{
    agent {label 'jfrog'}
    stages{
       stage('Git Checkout Stage'){
            steps{
                git branch: 'main', url: 'https://github.com/tranju664/Sample-Java-springboot.git'
            }
         }        
       stage('Build Stage'){
            steps{
                sh 'mvn clean install'
            }
         }
       stage('SonarQube Analysis Stage') {
            steps{
                withSonarQubeEnv('sonartest') { 
                    sh "mvn clean verify sonar:sonar -Dsonar.projectKey=sonartest"
                }
            }
        }
    }
}
