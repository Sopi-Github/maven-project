pipeline 
{
agent any
stages
{
  stage("scm checkout")
   {
     steps
     {
         git branch: 'master' , url: 'https://github.com/Sopi-Github/maven-project'
     }
   }
   stage("build the job")
    {
      steps
      {
          withMaven(jdk: 'localjdk', maven: 'localmaven')
          {
              sh 'mvn package'
          }
      }
    }
    stage("docker image creation")
    {
        steps
        {
            sh 'docker build -t sopi0708/mytomcat:0.1 .'
        }
    }
}
}
