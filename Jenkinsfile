// Necessary plugins:
//      Credentials
//      Credentials Binding

// Jenkins Environment variables can be found in http://localhost:8080/env-vars.html/
pipeline {
    agent any
        // {
        // docker { 
        //     image 'vivado:2018.3'            
        // }

    parameters {
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }

    // tools {
    //     maven 'Maven'
    // }

    environment {
        VERSION = '0.0.1'
    }

    stages {
        stage('Checkout') {
            steps { 
                // checkout scm
                echo "Checkout branch..."
            }
        }
        stage('Build') {
            steps {
                echo "Building version ${VERSION}..."
                cd project/test/build 
                cmake ..
                make
            }
        }

        stage('Test') {
            when {
            steps {
                when { // example of conditional
                    expression {
                        env.BRANCH_NAME == '*_test'
                    }
                }
                echo "Testing..."
                // make report
                pwd
            }
        }

        stage('Coverage') {
            steps {
                echo "Generating Coverage..."
                // make coverage
                sh 'pwd'
            }
        }
    }

    post {
        always {  // always
            // make reset
            cleanWs()
        }
        success {
            echo "Succeeded..."
        }
        failure {
            echo "Failed..."
        }
    }
}
