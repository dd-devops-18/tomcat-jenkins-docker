FROM tomcat:9.0-jdk17

# Remove default apps (optional but real-world)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY sample.war /usr/local/tomcat/webapps/sample.war

# Expose Tomcat port
EXPOSE 8080
