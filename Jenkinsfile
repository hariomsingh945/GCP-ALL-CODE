pipeline {
    agent any

    stages {

        stage('GCP Authentication') {
            steps {
                withCredentials([
                    file(
                        credentialsId: 'gcp-jenkins-sa-key',
                        variable: 'GCP_KEY_FILE'
                    )
                ]) {
                    sh '''
                        gcloud auth activate-service-account \
                          --key-file="$GCP_KEY_FILE"

                        gcloud auth list

                        gcloud config set project hariom-0504-01-cbt

                        gcloud config get-value project
                    '''
                }
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([
                    file(
                        credentialsId: 'gcp-jenkins-sa-key',
                        variable: 'GOOGLE_APPLICATION_CREDENTIALS'
                    )
                ]) {
                    sh '''
                        terraform init
                    '''
                }
            }
        }

    }
}
