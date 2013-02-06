require 'mysql'

begin

  db_name   = 'CAthlon'
  db_host   = 'localhost'
  user_name = 'root'
  password  = 'prathamesh'

  connection = Mysql.new(db_host, user_name, password)
  connection.query("drop database if exists #{db_name}")
  connection.query("create database #{db_name}")
  connection.query("use #{db_name}")

  #Create 6 tables for all levels of the connectiontest!

  connection.query("Create Table Questions1
	(id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  connection.query("Create Table Questions2
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  connection.query("Create Table Questions3
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  connection.query("Create Table Questions4
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  connection.query("Create Table Questions5
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  connection.query("Create Table Questions6
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

rescue Mysql::Error => e
  puts e.errno
  puts e.error

ensure
  connection.close if connection
end
