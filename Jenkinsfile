environment {
  PATH = "/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin"
}

pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Building..."'
      }
    }
    stage('Deploy') {
      steps {
        sh 'ansible-playbook ./ansible/deploy.yml'
      }
    }
    stage('Monitor') {
      steps {
        sh './check_health.sh'
      }
    }
  }
}
