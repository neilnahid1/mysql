create table Persons(
  id int primary key AUTO_INCREMENT,
  first_name varchar(45),
  last_name varchar(45),
  age int(2),
  gender ENUM('M','F'),
  address varchar(45)
)
