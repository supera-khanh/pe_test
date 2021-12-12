pipeline {
    agent { label 'built-in' }
    stages {
        stage('IaC Plan') {
            steps {
                sh 'cd /src/terraform && sed -i s/localhost/localstack/g providers.tf'
                sh 'cd /src/terraform && terraform init'
                sh 'echo "TF Plan"'
                sh 'cd /src/terraform && terraform plan -out=tf.plan'
            }
        }
        stage('IaC Apply') {
            steps {
                sh 'echo "Apply TF"'
                sh 'cd /src/terraform && terraform apply --auto-approve tf.plan'
            }
        }
        stage('Docker Build') {
            steps {
                sh """
                    echo "Build step"
                """
            }
        }
        stage('Docker Deploy') {
            steps {
                sh 'echo "docker run -d --network sa-platform-engineer-code-test_sa-code-test -p 8085:8080 sa-code-test:latest"'
            }
        }
    }
}
