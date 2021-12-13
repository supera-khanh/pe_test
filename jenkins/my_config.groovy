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
                    cd /src/app
                    docker build -t sa-code-test:latest .
                """
            }
        }
        stage('Docker Deploy') {
            steps {
                sh 'echo "Deploying container"'
                sh 'docker stop $(docker ps -a | grep sa-code-test | cut -d " " -f 1) || true'
                sh 'docker rm $(docker ps -a | grep sa-code-test | cut -d " " -f 1) || true'
                sh 'docker run -d --network pe_test_sa-code-test -p 8085:8080 sa-code-test:latest'
            }
        }
    }
}
