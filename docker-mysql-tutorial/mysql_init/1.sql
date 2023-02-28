-- This file will run first. The files run in ascending numeric order

update mysql.user set host = '%' where user='root';

GRANT ALL ON *.* TO 'root'@'%';

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'mysqlpass';

-- duplicated so if it fails the first time it gets a second chance
GRANT ALL ON *.* TO 'root'@'%';
