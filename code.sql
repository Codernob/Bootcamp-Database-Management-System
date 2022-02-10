CREATE TABLE Instructor ( 
  ID NUMERIC(5,0),
  Name VARCHAR(30) NOT NULL,
  Bootcamp_ID NUMERIC(5,0),
  Salary NUMERIC(6,0) CHECK (Salary>10000),
  PRIMARY KEY (ID)
  );
INSERT INTO Instructor VALUES(25321,'Ahmed Nafis','563120',50000);
INSERT INTO Instructor VALUES(25322,'Irshad Hasan','563121',40000);
INSERT INTO Instructor VALUES(25323,'Nishad Islam Ayon','563122',60000);
INSERT INTO Instructor VALUES(25324,'Rafiqul Aslam','563123',30000);
INSERT INTO Instructor VALUES(25325,'Nahid Ul karim','563124',60000);
INSERT INTO Instructor VALUES(25326,'Ahmed Islam Palash','563120',40000);
INSERT INTO Instructor VALUES(25327,'Hasin Yaser Kashim','563122',70000);
INSERT INTO Instructor VALUES(25328,'Abdullah Ahmed Khan','563123',20000);
INSERT INTO Instructor VALUES(25329,'Arshad Bari','563124',50000);
INSERT INTO Instructor VALUES(25330,'Ahmed Kamal Pasha','563122',60000);
CREATE TABLE Bootcamp (
  Bootcamp_ID NUMERIC(5,0),
  Title VARCHAR(30) NOT NULL,
  Begins_At VARCHAR(10),
  Ends_At VARCHAR(10),
  FOREIGN KEY (Bootcamp_ID) REFERENCES Instructor
  );
INSERT INTO Bootcamp VALUES(563120, 'Cybersecurity', 'Jan 2020', 'Jun 2020');
INSERT INTO Bootcamp VALUES(563120, 'Cybersecurity', 'Aug 2020', 'Feb 2021');
INSERT INTO Bootcamp VALUES(563120, 'Cybersecurity', 'Mar 2021', 'Aug 2021');
INSERT INTO Bootcamp VALUES(563121, 'Data science', 'Feb 2020', 'Jul 2020');
INSERT INTO Bootcamp VALUES(563121, 'Data science', 'Aug 2020', 'Feb 2021');
INSERT INTO Bootcamp VALUES(563121, 'Data science', 'Apr 2021', 'Oct 2021');
INSERT INTO Bootcamp VALUES(563122, 'Front-end web development', 'Jul 2020', 'Jan 2021');
INSERT INTO Bootcamp VALUES(563122, 'Front-end web development', 'Feb 2021', 'Aug 2021');
INSERT INTO Bootcamp VALUES(563123, 'Full-stack web development', 'May 2020', 'Oct 2020');
INSERT INTO Bootcamp VALUES(563123, 'Full-stack web development', 'Mar 2021', 'Aug 2021');
INSERT INTO Bootcamp VALUES(563124, 'App Development', 'Apr 2019', 'Oct 2019');
INSERT INTO Bootcamp VALUES(563124, 'App Development', 'Nov 2019', 'Apr 2020');
INSERT INTO Bootcamp VALUES(563124, 'App Development', 'Nov 2021', 'May 2022');
CREATE TABLE Student (
  Name VARCHAR(30),
  Student_ID NUMERIC(5,0),
  Bootcamp_ID NUMERIC(5,0),
  Enrollment_Status VARCHAR(20) NOT NULL,
  PRIMARY KEY(Student_ID),
  FOREIGN KEY (Bootcamp_ID) REFERENCES Bootcamp
  );
INSERT INTO Student VALUES('Abdul Kashem Hasan',34671,563120,'Passed');
INSERT INTO Student VALUES('Nowshad Nasir',34672,563120,'Passed');
INSERT INTO Student VALUES('Alim Hasan Alvi',34673,563120,'Passed');
INSERT INTO Student VALUES('Kalam Hossain',34674,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Azim Mostakim',34675,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Nashneen Nazneen',34676,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Saddam Hossain',34677,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Akiful Islam',34678,563121,'Passed');
INSERT INTO Student VALUES('Shehrin Emran',34679,563121,'Passed');
INSERT INTO Student VALUES('Ratul Islam',34680,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Shadman Sakin',34681,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Anika Tasnim',34682,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Mamun Sikder',34683,563122,'Passed');
INSERT INTO Student VALUES('Nowshin Haque',34684,563122,'Passed');
INSERT INTO Student VALUES('Ali Azgor',34685,563122,'Passed');
INSERT INTO Student VALUES('Nishat Hossain',34686,563122,'Currntly Enrolled');
INSERT INTO Student VALUES('Jobayer Arefin',34687,563122,'Passed');
INSERT INTO Student VALUES('Nashita Zaman',34688,563122,'Currntly Enrolled');
INSERT INTO Student VALUES('Abdullah Al Rafsan',34689,563123,'Passed');
INSERT INTO Student VALUES('Nasir Hossain',34690,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Tamima Hossain',34691,563123,'Passed');
INSERT INTO Student VALUES('Kashfia Mahmud',34692,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Sara Hossain',34693,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Tanvir Ahmed',34694,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Faysal Hossain',34695,563124,'Passed');
INSERT INTO Student VALUES('Muniat Hasan',34696,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Bushra Khan',34697,563124,'Passed');
INSERT INTO Student VALUES('Tahsin Tasnim',34698,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Murad Hasan',34699,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Mohsin Abrar',34700,563124,'Passed');
INSERT INTO Student VALUES('Abdur Rashid',34701,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Saifullah Haque',34702,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Maisha Iqbal',34703,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Nishat Amin',34704,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Durjoy Mostaq',34705,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Wahid Ahmed',34706,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Ismot Ara',34707,563122,'Currntly Enrolled');
INSERT INTO Student VALUES('Ahnaf Iqbal',34708,563122,'Currntly Enrolled');
INSERT INTO Student VALUES('Muksud Hasan',34709,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Uzma Syeda',34710,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Shovon Chowdhury',34711,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Rahat Amin',34712,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Ekra Alam',34713,563123,'Currntly Enrolled');
INSERT INTO Student VALUES('Majid Farhan',34714,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Sumaita Zaman',34715,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Zara Ali Khan',34716,563124,'Currntly Enrolled');
INSERT INTO Student VALUES('Farzana Mohona',34717,563121,'Currntly Enrolled');
INSERT INTO Student VALUES('Ananna Sultana',34718,563120,'Currntly Enrolled');
INSERT INTO Student VALUES('Sakif Tanjim',34719,563122,'Currntly Enrolled');
INSERT INTO Student VALUES('Hanif Sikder',34720,563123,'Currntly Enrolled');
CREATE TABLE Progress (
  Student_ID NUMERIC(5,0),
  Bootcamp_ID NUMERIC(5,0),
  Attended_Classes NUMERIC(3,0) CHECK(Attended_Classes>=0),
  Completed_Assignments NUMERIC(3,0) CHECK(Completed_Assignments>=0),
  Certificate VARCHAR(20),
  FOREIGN KEY (Student_ID,Bootcamp_ID) REFERENCES Student
  );
INSERT INTO Progress VALUES(34671,563120,60,20,'Received');
INSERT INTO Progress VALUES(34672,563120,60,20,'Received');
INSERT INTO Progress VALUES(34673,563120,60,20,'Received');
INSERT INTO Progress VALUES(34674,563120,25,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34675,563120,26,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34676,563120,20,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34677,563121,15,12,'Not Issued Yet');
INSERT INTO Progress VALUES(34678,563121,60,20,'Received');
INSERT INTO Progress VALUES(34679,563121,60,20,'Received');
INSERT INTO Progress VALUES(34680,563121,39,17,'Not Issued Yet');
INSERT INTO Progress VALUES(34681,563121,20,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34682,563121,41,14,'Not Issued Yet');
INSERT INTO Progress VALUES(34683,563122,60,20,'Received');
INSERT INTO Progress VALUES(34684,563122,60,20,'Received');
INSERT INTO Progress VALUES(34685,563122,60,20,'Received');
INSERT INTO Progress VALUES(34686,563122,36,15,'Not Issued Yet');
INSERT INTO Progress VALUES(34687,563122,20,10,'Received');
INSERT INTO Progress VALUES(34688,563122,55,18,'Not Issued Yet');
INSERT INTO Progress VALUES(34689,563123,60,20,'Received');
INSERT INTO Progress VALUES(34690,563123,40,16,'Not Issued Yet');
INSERT INTO Progress VALUES(34691,563123,60,20,'Received');
INSERT INTO Progress VALUES(34692,563123,45,11,'Not Issued Yet');
INSERT INTO Progress VALUES(34693,563123,37,13,'Not Issued Yet');
INSERT INTO Progress VALUES(34694,563123,26,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34695,563124,60,20,'Received');
INSERT INTO Progress VALUES(34696,563124,39,12,'Not Issued Yet');
INSERT INTO Progress VALUES(34697,563124,60,20,'Received');
INSERT INTO Progress VALUES(34698,563124,42,11,'Not Issued Yet');
INSERT INTO Progress VALUES(34699,563124,52,17,'Not Issued Yet');
INSERT INTO Progress VALUES(34700,563124,60,20,'Received');
INSERT INTO Progress VALUES(34701,563120,49,16,'Not Issued Yet');
INSERT INTO Progress VALUES(34702,563120,50,15,'Not Issued Yet');
INSERT INTO Progress VALUES(34703,563121,18,09,'Not Issued Yet');
INSERT INTO Progress VALUES(34704,563121,20,07,'Not Issued Yet');
INSERT INTO Progress VALUES(34705,563121,37,11,'Not Issued Yet');
INSERT INTO Progress VALUES(34706,563120,49,15,'Not Issued Yet');
INSERT INTO Progress VALUES(34707,563122,55,17,'Not Issued Yet');
INSERT INTO Progress VALUES(34708,563122,47,13,'Not Issued Yet');
INSERT INTO Progress VALUES(34709,563124,50,12,'Not Issued Yet');
INSERT INTO Progress VALUES(34710,563124,30,10,'Not Issued Yet');
INSERT INTO Progress VALUES(34711,563123,56,15,'Not Issued Yet');
INSERT INTO Progress VALUES(34712,563123,10,03,'Not Issued Yet');
INSERT INTO Progress VALUES(34713,563123,38,13,'Not Issued Yet');
INSERT INTO Progress VALUES(34714,563124,20,06,'Not Issued Yet');
INSERT INTO Progress VALUES(34715,563124,57,16,'Not Issued Yet');
INSERT INTO Progress VALUES(34716,563124,15,07,'Not Issued Yet');
INSERT INTO Progress VALUES(34717,563121,58,19,'Not Issued Yet');
INSERT INTO Progress VALUES(34718,563120,53,18,'Not Issued Yet');
INSERT INTO Progress VALUES(34719,563122,38,14,'Not Issued Yet');
INSERT INTO Progress VALUES(34720,563123,40,17,'Not Issued Yet');
CREATE TABLE Schedules (
  Bootcamp_ID NUMERIC(5,0),
  Number_of_Weekly_Classes NUMERIC(1,0) CHECK(Number_of_Weekly_Classes>0),
  Class_Duration VARCHAR(10) NOT NULL,
  Class_Days VARCHAR(20) NOT NULL,
  FOREIGN KEY (Bootcamp_ID) REFERENCES Bootcamp
  );
INSERT INTO Schedules VALUES(563120,3,'2 Hours','Sun Mon Tue');
INSERT INTO Schedules VALUES(563121,4,'1 Hour','Sat Sun Mon Tue');
INSERT INTO Schedules VALUES(563122,2,'3 Hours','Sat Tue');
INSERT INTO Schedules VALUES(563123,4,'1.5 Hours','Thu Sat Mon Tue');
INSERT INTO Schedules VALUES(563124,3,'1 Hour','Sat Mon Tue');
SELECT *
FROM Schedules;
