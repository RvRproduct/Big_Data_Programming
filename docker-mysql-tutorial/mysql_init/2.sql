create database if not exists upload;
use upload;

-- # Manually importing schema: (copy this, right click into Command Prompt to paste)
create table bikedata (
  instant int,	
  dteday DATE,	
  season int,	
  yr int,	
  mnth int,	
  hr int,	
  holiday int,	
  weekday int,	
  workingday int,	
  weathersit int,	
  tmp float,	
  atemp double,	
  hum float,	
  windspeed double,	
  casual int,	
  registered int,	
  cnt int);


LOAD DATA INFILE '/var/lib/mysql-files/data/bike_hourly.csv' 
INTO TABLE bikedata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;