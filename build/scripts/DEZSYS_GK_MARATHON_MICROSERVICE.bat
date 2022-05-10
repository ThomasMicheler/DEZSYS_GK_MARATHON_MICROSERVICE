@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  DEZSYS_GK_MARATHON_MICROSERVICE startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and DEZSYS_GK_MARATHON_MICROSERVICE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\DEZSYS_GK_MARATHON_MICROSERVICE-2.1.0.RELEASE-plain.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-eureka-server-3.1.0.jar;%APP_HOME%\lib\spring-cloud-netflix-eureka-server-3.1.0.jar;%APP_HOME%\lib\spring-boot-starter-web-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-thymeleaf-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-test-2.6.1.jar;%APP_HOME%\lib\spring-cloud-starter-loadbalancer-3.1.0.jar;%APP_HOME%\lib\spring-cloud-starter-3.1.0.jar;%APP_HOME%\lib\spring-boot-starter-json-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-aop-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-freemarker-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-cache-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-2.6.1.jar;%APP_HOME%\lib\spring-data-jpa-2.6.0.jar;%APP_HOME%\lib\spring-data-commons-2.6.0.jar;%APP_HOME%\lib\hsqldb-2.5.2.jar;%APP_HOME%\lib\spring-boot-test-autoconfigure-2.6.1.jar;%APP_HOME%\lib\spring-boot-actuator-autoconfigure-2.6.1.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.6.1.jar;%APP_HOME%\lib\spring-boot-test-2.6.1.jar;%APP_HOME%\lib\spring-boot-actuator-2.6.1.jar;%APP_HOME%\lib\spring-boot-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.6.1.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.6.1.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\spring-webmvc-5.3.13.jar;%APP_HOME%\lib\spring-web-5.3.13.jar;%APP_HOME%\lib\spring-context-support-5.3.13.jar;%APP_HOME%\lib\spring-context-5.3.13.jar;%APP_HOME%\lib\spring-aop-5.3.13.jar;%APP_HOME%\lib\spring-orm-5.3.13.jar;%APP_HOME%\lib\spring-jdbc-5.3.13.jar;%APP_HOME%\lib\spring-tx-5.3.13.jar;%APP_HOME%\lib\spring-beans-5.3.13.jar;%APP_HOME%\lib\spring-test-5.3.13.jar;%APP_HOME%\lib\spring-expression-5.3.13.jar;%APP_HOME%\lib\spring-core-5.3.13.jar;%APP_HOME%\lib\snakeyaml-1.29.jar;%APP_HOME%\lib\thymeleaf-spring5-3.0.12.RELEASE.jar;%APP_HOME%\lib\thymeleaf-extras-java8time-3.0.4.RELEASE.jar;%APP_HOME%\lib\json-path-2.6.0.jar;%APP_HOME%\lib\logback-classic-1.2.7.jar;%APP_HOME%\lib\log4j-to-slf4j-2.14.1.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.32.jar;%APP_HOME%\lib\thymeleaf-3.0.12.RELEASE.jar;%APP_HOME%\lib\HikariCP-4.0.3.jar;%APP_HOME%\lib\eureka-core-1.10.17.jar;%APP_HOME%\lib\eureka-client-1.10.17.jar;%APP_HOME%\lib\netflix-eventbus-0.3.0.jar;%APP_HOME%\lib\servo-core-0.12.21.jar;%APP_HOME%\lib\netflix-infix-0.3.0.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\hibernate-core-5.6.1.Final.jar;%APP_HOME%\lib\jaxb-runtime-2.3.5.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\assertj-core-3.21.0.jar;%APP_HOME%\lib\hamcrest-2.2.jar;%APP_HOME%\lib\mockito-junit-jupiter-4.0.0.jar;%APP_HOME%\lib\junit-jupiter-params-5.8.1.jar;%APP_HOME%\lib\junit-jupiter-engine-5.8.1.jar;%APP_HOME%\lib\junit-jupiter-api-5.8.1.jar;%APP_HOME%\lib\junit-platform-engine-1.8.1.jar;%APP_HOME%\lib\junit-platform-commons-1.8.1.jar;%APP_HOME%\lib\junit-jupiter-5.8.1.jar;%APP_HOME%\lib\mockito-core-4.0.0.jar;%APP_HOME%\lib\jsonassert-1.5.0.jar;%APP_HOME%\lib\xmlunit-core-2.8.3.jar;%APP_HOME%\lib\jakarta.transaction-api-1.3.3.jar;%APP_HOME%\lib\jakarta.persistence-api-2.2.3.jar;%APP_HOME%\lib\spring-aspects-5.3.13.jar;%APP_HOME%\lib\spring-cloud-loadbalancer-3.1.0.jar;%APP_HOME%\lib\spring-cloud-context-3.1.0.jar;%APP_HOME%\lib\spring-cloud-commons-3.1.0.jar;%APP_HOME%\lib\spring-security-rsa-1.0.10.RELEASE.jar;%APP_HOME%\lib\spring-jcl-5.3.13.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.13.0.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.13.0.jar;%APP_HOME%\lib\jackson-dataformat-xml-2.13.0.jar;%APP_HOME%\lib\jackson-annotations-2.13.0.jar;%APP_HOME%\lib\jackson-core-2.13.0.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.13.0.jar;%APP_HOME%\lib\jackson-databind-2.13.0.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.55.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.55.jar;%APP_HOME%\lib\tomcat-embed-el-9.0.55.jar;%APP_HOME%\lib\json-smart-2.4.7.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\byte-buddy-1.11.22.jar;%APP_HOME%\lib\byte-buddy-agent-1.11.22.jar;%APP_HOME%\lib\objenesis-3.2.jar;%APP_HOME%\lib\android-json-0.0.20131108.vaadin1.jar;%APP_HOME%\lib\aspectjweaver-1.9.7.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.1.2.Final.jar;%APP_HOME%\lib\jboss-logging-3.4.2.Final.jar;%APP_HOME%\lib\antlr-runtime-3.4.jar;%APP_HOME%\lib\stringtemplate-3.2.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.2.3.Final.jar;%APP_HOME%\lib\classmate-1.5.1.jar;%APP_HOME%\lib\spring-security-crypto-5.6.0.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.68.jar;%APP_HOME%\lib\spring-cloud-netflix-eureka-client-3.1.0.jar;%APP_HOME%\lib\jersey-servlet-1.19.4.jar;%APP_HOME%\lib\jersey-server-1.19.4.jar;%APP_HOME%\lib\jersey-apache-client4-1.19.1.jar;%APP_HOME%\lib\jersey-client-1.19.4.jar;%APP_HOME%\lib\guice-4.1.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\evictor-1.0.0.jar;%APP_HOME%\lib\txw2-2.3.5.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.12.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\logback-core-1.2.7.jar;%APP_HOME%\lib\log4j-api-2.14.1.jar;%APP_HOME%\lib\attoparser-2.0.5.RELEASE.jar;%APP_HOME%\lib\unbescape-1.1.6.RELEASE.jar;%APP_HOME%\lib\accessors-smart-2.4.7.jar;%APP_HOME%\lib\opentest4j-1.2.0.jar;%APP_HOME%\lib\bcprov-jdk15on-1.68.jar;%APP_HOME%\lib\micrometer-core-1.8.0.jar;%APP_HOME%\lib\freemarker-2.3.31.jar;%APP_HOME%\lib\xstream-1.4.18.jar;%APP_HOME%\lib\jersey-core-1.19.4.jar;%APP_HOME%\lib\jsr311-api-1.1.1.jar;%APP_HOME%\lib\httpclient-4.5.13.jar;%APP_HOME%\lib\commons-configuration-1.10.jar;%APP_HOME%\lib\jettison-1.4.0.jar;%APP_HOME%\lib\woodstox-core-6.2.6.jar;%APP_HOME%\lib\stax2-api-4.2.1.jar;%APP_HOME%\lib\reactor-extra-3.4.5.jar;%APP_HOME%\lib\reactor-core-3.4.12.jar;%APP_HOME%\lib\asm-9.1.jar;%APP_HOME%\lib\HdrHistogram-2.1.12.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\commons-math-2.2.jar;%APP_HOME%\lib\mxparser-1.2.2.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\httpcore-4.4.14.jar;%APP_HOME%\lib\commons-codec-1.15.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\commons-jxpath-1.3.jar;%APP_HOME%\lib\joda-time-2.3.jar;%APP_HOME%\lib\gson-2.8.9.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar


@rem Execute DEZSYS_GK_MARATHON_MICROSERVICE
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %DEZSYS_GK_MARATHON_MICROSERVICE_OPTS%  -classpath "%CLASSPATH%" io.pivotal.microservices.services.Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable DEZSYS_GK_MARATHON_MICROSERVICE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%DEZSYS_GK_MARATHON_MICROSERVICE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
