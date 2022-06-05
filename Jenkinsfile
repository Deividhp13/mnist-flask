pipeline {
    agent any
    environment{
        EXTRA = "/opt/anaconda/bin"
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh "sudo docker build -t mnist-fastapi:latest ."
            }
        }
        stage('Run Docker'){
            steps {
                sh """
                sudo docker stop mnist || true
                sudo docker rm mnist || true
                sudo docker run -d -p 7000:7000 --name mnist mnist-fastapi
                """
            }
        }
    }
}