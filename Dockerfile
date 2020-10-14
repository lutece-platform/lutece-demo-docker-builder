FROM debian:buster as builder

# install needed apps
RUN echo 'mysql-server mysql-server/root_password password motdepasse' | debconf-set-selections && \
    echo 'mysql-server mysql-server/root_password_again password motdepasse' | debconf-set-selections && \
    apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y mariadb-server mariadb-client default-jdk ant maven git tomcat9 --no-install-recommends
