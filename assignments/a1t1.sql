DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons (
  ID TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  First_Name VARCHAR(25) NOT NULL,
  Last_Name VARCHAR(25) NOT NULL,
  PRIMARY KEY (ID)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
  ID TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  First_Name VARCHAR(25) NOT NULL,
  Last_Name VARCHAR(25) NOT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB;

INSERT INTO Persons (Last_Name, First_Name) VALUES ('Jensen','JensA');
INSERT INTO Persons (Last_Name, First_Name) VALUES ('Jensen','JensB');
INSERT INTO Persons (Last_Name, First_Name) VALUES ('Jensen','JensC');
INSERT INTO Persons (Last_Name, First_Name) VALUES ('Jensen','JensD');

INSERT INTO Employees (Last_Name, First_Name) VALUES ('Jensen','JensE');
INSERT INTO Employees (Last_Name, First_Name) VALUES ('Jensen','JensF');
INSERT INTO Employees (Last_Name, First_Name) VALUES ('Jensen','JensG');
INSERT INTO Employees (Last_Name, First_Name) VALUES ('Jensen','JensH');
