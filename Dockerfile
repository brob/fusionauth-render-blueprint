FROM fusionauth/fusionauth-app:latest
LABEL description="Create an image running FusionAuth App. Installs FusionAuth App"
LABEL maintainer="FusionAuth <dev@fusionauth.io>"
EXPOSE 9011
USER fusionauth
ENV FUSIONAUTH_USE_GLOBAL_JAVA=1
ENV JAVA_HOME=/opt/openjdk
ENV PATH=$PATH:$JAVA_HOME/bin
ENV DATABASE_URL=jdbc:postgresql://$DATABASE_HOST
ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD
ENV POSTGRES_USER=$POSTGRES_USER
ENV DATABASE_USERNAME=$DATABASE_USERNAME
CMD ["/usr/local/fusionauth/fusionauth-app/bin/start.sh"]