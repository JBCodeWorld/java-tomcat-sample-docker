FROM tomcat:8.0
#ADD **/*.war /usr/local/tomcat/webapps/
COPY **/*.war /usr/local/tomcat/webapps/app.war
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ROOT && mv app.war ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
