@Library('shared-library-test') _

def config = [
    projectName: 'nodeapp-cicd-kunal',
    gitRepoUrl: 'https://github.com/kunalbarot3188/nodeapp-cicd-kunal.git',
    sonarToken: 'sonar-token'
]

sonarPipeline(config)




// def COLOR_MAP = [
//     'FAILURE' : 'danger',
//     'SUCCESS' : 'good'
// ]
// pipeline{
//     agent any
//     tools{
//         jdk 'jdk17'
//         nodejs 'node16'
//     }
//     environment {
//         SCANNER_HOME=tool 'sonar-scanner'
//     }
//     stages {
//         stage('clean workspace'){
//             steps{
//                 cleanWs()
//             }
//         }
//         stage('Checkout from Git'){
//             steps{
//                 git branch: 'main', url: 'https://github.com/kunalbarot3188/nodeapp-cicd-kunal.git'
//             }
//         }
//         stage("Sonarqube Analysis "){
//             steps{
//                 withSonarQubeEnv('sonar-server') {
//                     sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=nodetodapp \
//                     -Dsonar.projectKey=nodetodapp '''
//                 }
//             }
//         }
//         stage("quality gate"){
//            steps {
//                 script {
//                     waitForQualityGate abortPipeline: false, credentialsId: 'sonar-token' 
//                 }
//             } 
//         }
//         stage('Install Dependencies') {
//             steps {
//                 sh "npm install"
//             }
//         }
//         stage("Docker Build & Push"){
//             steps{
//                 script{
//                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker'){   
//                        sh "docker build -t nodetodoapp ."
//                        sh "docker tag nodetodoapp kunalbarot3188/node-app:v3 "
//                        sh "docker push kunalbarot3188/node-app:v3 "
//                     }
//                 }
//             }
//         }
//         stage('Deploy to container'){
//             steps{
//                 sh 'docker run -d --name nodetodoapp -p 8000:8000 kunalbarot3188/node-app:v3'
//             }
//         }
//         stage('Deploy to kubernets'){
//             steps{
//                 withAWS(credentials: 'aws-key', region: 'us-east-1') {
//                 script{
//                     withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'k8s', namespace: '', restrictKubeConfigAccess: false, serverUrl: '') {
//                     sh 'kubectl apply -f deployment.yml --namespace=nodetodoapp --validate=false'
//                     }
//                 }
//             }   
//         }
//     }
//     }
// }
