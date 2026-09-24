pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('jenkin-gcp-service-account')
    }

    stages {

        stage('GCP Authentication') {
            steps {
                sh '''
                    gcloud auth activate-service-account \
                      --key-file="$GOOGLE_APPLICATION_CREDENTIALS"

                    gcloud auth list

                    gcloud config set project hariom-0504-01-cbt

                    gcloud config get-value project
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                    cd project
                    terraform init
                '''
            }
        }
        stage('Terraform plan') {
            steps {
                sh '''
                    cd project
                    terraform plan
                '''
            }
        }
    }
}
