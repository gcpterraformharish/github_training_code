FROM openjdk

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
RUN tar zxvf apache-tomcat-9.0.85.tar.gz
RUN cp -r apache-tomcat-9.0.85/* /opt/tomcat/.


COPY my-app.war /opt/tomcat/webapps/

EXPOSE 8080 

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]

