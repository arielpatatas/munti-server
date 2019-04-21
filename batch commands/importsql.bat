echo DROP DATABASE IF EXISTS db_munti; > deleteDatabase.bat
echo CREATE DATABASE db_munti; > createDatabase.bat
mysql -h localhost -u root < deleteDatabase.bat
mysql -h localhost -u root < createDatabase.bat
mysql -h localhost -u root db_munti < ../database/db_munti2.sql
del deleteDatabase.bat
del createDatabase.bat