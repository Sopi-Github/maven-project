pipeline
{
 agent any 
 stages
 {
   stage('scm checkout') 
   {
      steps
       {
         git branch: 'master' , url: 'https://github.com/Sopi-Github/maven-project'      
       }
   }
   stage ('compile the code')
    {
        steps
        {
            withMaven(jdk: 'localjdk', maven: 'localmaven')
             {
               sh 'mvn compile'
             }
        }
    }
    stage ('test the code')
    {
        steps
        {
            withMaven(jdk: 'localjdk', maven: 'localmaven')
            {
                sh 'mvn test'
            }   
        }
    } 
    stage ('package')
    {
        steps
        {
            withMaven(jdk: 'localjdk', maven:'localmaven')
            {
                sh 'mvn package'
            }
        }
    }
    stage ('deployment')
    {
        steps
        {
            sshagent(['1c2cd426-df8d-42a3-abc7-9a4e02fa8f81']) 
            {
                scp -o 'StrictHostKeyChecking=no */target/webapp.war ec2-user@172.31.28.47:/var/lib/tomcat/webapps'
            }
        }
    }
 }
}
