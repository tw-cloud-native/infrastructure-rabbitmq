node{
    stage('Checkout') {
        checkout scm
    }

    withEnv([
        'SERVICE=rabbitmq'
    ]){
        stage('Deploy') {
            sh './deploy.sh'
        }
    }
}
