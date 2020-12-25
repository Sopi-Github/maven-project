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
        { 
            steps
            {
                input "please approve for packaging"
            }
        }
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
        stage('please approve')
        {
          steps
           {
               input "please approve deployment"
          }
        }
        stage('deploy on tomcat')
        {
            steps
            {
                sshagent(['1c2cd426-df8d-42a3-abc7-9a4e02fa8f81'])
                 {
                     sh 'scp -o StrictHostKeyChecking=no **/target/webapp.war ec2-user@172.31.24.44:/var/lib/tomcat/webapps'
                 }
            }
        }
    }
}
