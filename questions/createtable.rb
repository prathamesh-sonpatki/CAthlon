require 'mysql'
begin
    con = Mysql.new 'localhost', 'root', 'prathamesh', 'CAthlon'
#Create 6 tables for all levels of the contest!      
con.query("Create Table Questions1 
	(id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

con.query("Create Table Questions2  
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

con.query("Create Table Questions3 
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

con.query("Create Table Questions4 
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

con.query("Create Table Questions5 
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

con.query("Create Table Questions6 
        (id INT PRIMARY KEY AUTO_INCREMENT ,q_text varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(10)) ")

  #   rs.each do |row|
       # puts row.join("\n")
   #  end

rescue Mysql::Error => e
    puts e.errno
    puts e.error

ensure
    con.close if con
end

