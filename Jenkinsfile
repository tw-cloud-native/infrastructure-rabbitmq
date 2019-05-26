node{
    stage('Checkout') {
        git url: 'https://github.com/tw-cloud-native/infrastructure-rabbitmq.git',
            branch: 'master'
    }

    withEnv([
        'SERVICE=rabbitmq'
    ]){
        stage('Deploy') {
            sh './deploy.sh'
        }
    }
}
