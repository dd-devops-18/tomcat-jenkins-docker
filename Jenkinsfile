pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/YOURNAME/tomcat-jenkins-docker.git',
                    branch: 'main'
            }
        }

        stage('Build Tomcat Image') {
            steps {
                sh 'docker build -t tomcat-app:$BUILD_NUMBER .'
            }
        }

        stage('Deploy Tomcat App') {
            steps {
                sh '''
                  docker rm -f tomcat || true
                  docker run -d \
                    --name tomcat \
                    -p 8082:8080 \
                    tomcat-app:$BUILD_NUMBER
                '''
            }
        }
    }
}
