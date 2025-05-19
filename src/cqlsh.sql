cqlsh <USERNAME>.cassandra.cosmos.azure.com 10350 -u <USERNAME> -p <PASSWORD> --ssl --protocol-version=4

CREATE KEYSPACE IF NOT EXISTS uprofile 
WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'datacenter1' : 1 };

CREATE TABLE IF NOT EXISTS uprofile.user (user_id int PRIMARY KEY, user_name text, user_bcity text);

INSERT INTO  uprofile.user (user_id, user_name, user_bcity) VALUES (101,'johnjoe','New York')

COPY uprofile.user(user_id, user_name, user_bcity) FROM '/path to file/fileName.csv' 
WITH DELIMITER = ',' ;

SELECT * FROM uprofile.users;
