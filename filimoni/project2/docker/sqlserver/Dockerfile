FROM mcr.microsoft.com/mssql/server:2022-latest

ARG ACCEPT_EULA
ENV ACCEPT_EULA=$ACCEPT_EULA
ARG SA_PASSWORD
ENV SA_PASSWORD=$SA_PASSWORD
ENV DB_USER_PASSWORD=$SA_PASSWORD
ENV DB_NAME=$DB_NAME
ENV DB_USER=$DB_USER
RUN mkdir -p /tmp/setup
COPY script/* /tmp/setup/

ENTRYPOINT [ "/bin/bash", "/tmp/setup/entrypoint.sh" ]
CMD [ "/opt/mssql/bin/sqlservr" ]