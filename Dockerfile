# node 14.21.3
FROM ubuntu:20.04

# Install node
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs


# mysql
RUN apt update 
RUN apt install -yq mysql-server
RUN apt install  -yq mysql-client
RUN apt install -yq libmysqlclient-dev

WORKDIR /app

COPY . .

RUN mysql -u root -p 0 < ./mysql_backup/login_msg.sql

#  Node.js dependencies
RUN npm install

# Start
CMD ["npm", "start"]
