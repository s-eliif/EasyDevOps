pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/s-eliif/EasyDevOps.git'
            }
        }

        stage('Restore') {
            steps {
                bat 'dotnet restore frontend/EasyDevOps/EasyDevOps.csproj'
            }
        }

        stage('Build') {
            steps {
                bat 'dotnet build frontend/EasyDevOps/EasyDevOps.csproj'
            }
        }

        stage('Security Check') {
            steps {
                bat 'dotnet list frontend/EasyDevOps/EasyDevOps.csproj package --vulnerable'
            }
        }
    }
}
