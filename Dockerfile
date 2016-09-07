FROM registry.access.redhat.com/rhel7/rhel:latest

RUN yum install -y gcc-c++ make

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -

RUN yum install -y nodejs npm

COPY . /app/user

WORKDIR /app/user

RUN npm install

CMD node app.js
