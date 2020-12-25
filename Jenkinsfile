pipeline
{
    agent any
    stages
    {
        stage('scm checkout')
        {
            steps
            {
                git branch: 'master', url: 'https://github.com/Sopi-Github/maven-project'
            }
        }
        stage('compile the code')
        {
            steps
            {
                withMaven(jdk: 'localjdk', maven: 'localmaven')
                 {
                    sh 'mvn compile'
                 }
            }
        }
        stage('test the code')
        {
            steps
            {
                withMaven(jdk: 'localjdk', maven: 'localmaven')
                {
                    sh 'mvn test'
                }
            }
        }
        stage ('take approval')
        { input please approve for deployment}
        stage('packaging the code')
        {
            steps
            {
               withMaven(jdk: 'localjdk' , maven: 'localmaven')
               {
                   sh 'mvn package'
               }
            }
        }
    }
}
