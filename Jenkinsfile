pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Restore') {
            steps {
                bat 'dotnet restore frontend/EasyDevOps/EasyDevOps.csproj'
            }
        }

        stage('Build') {
            steps {
                bat 'dotnet build frontend/EasyDevOps/EasyDevOps.csproj --configuration Release'
            }
        }

        stage('Security Test') {
            steps {
                bat 'dotnet list frontend/EasyDevOps/EasyDevOps.csproj package --vulnerable'
            }
        }

        stage('DevOps Feedback') {
            steps {
                echo 'Feedback: build en security checks afgerond'
            }
        }
    }
}
