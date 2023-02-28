USE `safegraph` ;

LOAD DATA INFILE '/var/lib/mysql-files/create_db.csv' 
INTO TABLE monthly_patterns 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
