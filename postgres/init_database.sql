CREATE ROLE devops with password '123456' login;
CREATE DATABASE teamcitydb with owner devops;
GRANT ALL PRIVILEGES ON DATABASE teamcitydb TO devops;
