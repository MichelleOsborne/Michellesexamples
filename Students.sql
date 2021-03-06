PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE modules (code VARCHAR(10) PRIMARY KEY,name VARCHAR(50) NOT NULL);
INSERT INTO modules VALUES('CMP020C101','Software Development 1');
INSERT INTO modules VALUES('CMP020C102','Computer System');
INSERT INTO modules VALUES('CMP020C103','Software Development 2');
INSERT INTO modules VALUES('CMP020C104','Computer and Society');
INSERT INTO modules VALUES('CMP020C105','Databases');
INSERT INTO modules VALUES('CMP020C106','Physics Skills and Techniques');
INSERT INTO modules VALUES('CMP020C107','Mathematics for Physics');
INSERT INTO modules VALUES('CMP020C108','Computation for Physics');
CREATE TABLE Programmes (id VARCHAR(8) PRIMARY KEY,name VARCHAR(50));
INSERT INTO Programmes VALUES('09UU0001','BSc Computer Science');
INSERT INTO Programmes VALUES('09UU0002','BEng Software Engineering');
INSERT INTO Programmes VALUES('09UU0003','BSc Physics');
CREATE TABLE Programme_Modules(programme VARCHAR(8) NOT NULL,module VARCHAR(10) NOT NULL,FOREIGN KEY (programme) REFERENCES Programmes(id),FOREIGN KEY (module) REFERENCES Modules(code));
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C101');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU0003','CMP020C103');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C107');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C107');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU0003','CMP020C104');
INSERT INTO Programme_Modules VALUES('09UU0003','CMP020C105');
INSERT INTO Programme_Modules VALUES('09UU0003','CMP020C106');
CREATE TABLE Student (id VARCHAR(8) PRIMARY KEY,name VARCHAR(50));
INSERT INTO Student VALUES('ST21','Danielle');
INSERT INTO Student VALUES('ST22','CLOE');
INSERT INTO Student VALUES('ST23','Michael');
INSERT INTO Student VALUES('ST24','Justin');
INSERT INTO Student VALUES('ST25','Jane');
CREATE TABLE Student_Programme(student_id VARCHAR(8) NOT NULL,programme_id VARCHAR(8) NOT NULL,FOREIGN KEY (programme_id) REFERENCES Programmes(id),FOREIGN KEY (student_id) REFERENCES student(id));
INSERT INTO Student_Programme VALUES('ST25','09UU0001');
INSERT INTO Student_Programme VALUES('ST21','09UU0002');
INSERT INTO Student_Programme VALUES('ST23','09UU0003');
INSERT INTO Student_Programme VALUES('ST22','09UU0003');
INSERT INTO Student_Programme VALUES('ST24','09UU0002');
COMMIT;
