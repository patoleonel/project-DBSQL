CREATE DATABASE pat_retail_db;

CREATE USER pat_retail_user WITH ENCRYPTED PASSWORD 'patretail';

GRANT ALL ON DATABASE pat_retail_db TO pat_retail_user;