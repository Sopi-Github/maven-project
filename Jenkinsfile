pipeline
  { 
    agent any 
	stages
	{
	    stage ('scm checkout')
		{
		  steps {
			git branch: 'master', url: 'https://github.com/Sopi-Github/maven-project.git'
		       }
	    }
		stage ('validate code')
		{
		  steps {
		   withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
            sh 'mvn validate'
			}
}
}
		stage ('compile code')
		{
		  steps {
		   withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
            sh 'mvn compile'
			}
}
}
        stage ('test code')
		{
		 steps {
		 withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
		  sh 'mvn test'
		  }
		 }
		}
	}
 }
		  
