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
			stage ('build && SonarQube analysis')
			{
			  steps {
				  withSonarQubeEnv('mysonar') {
			   withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
		    sh 'mvn clean install sonar:sonar'
				}
	}
	}
			}
		}
	 }

