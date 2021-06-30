pipeline {
    agent {
        label 'docker'
    }
    
    environment {
	IMAGE_REPO = 'jenkins'
        TAG = '1.0.0'
    }

    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                sh 'docker build -t $IMAGE_REPO:$TAG-$GIT_COMMIT -t $IMAGE_REPO:latest ./'
            }
        }
    

       stage('Test') {
	   agent{
		docker{
			image 'node:14-alpine'
			label 'docker'
}
}
           steps {
                sh '''
		npm ci
		npm test
		'''
            }
        }
    }

}

