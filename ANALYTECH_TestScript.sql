
create database if not exists `ewheelz`;

USE `ewheelz`;

DROP TABLE IF EXISTS `a`;

CREATE TABLE `a` (
  `a` binary(1) default NULL
);

/*Data for the table `a` */

insert  into `a`(`a`) values ('f');

/*Table structure for table `busmaster` */

DROP TABLE IF EXISTS `busmaster`;

CREATE TABLE `busmaster` (
  `BusId` varchar(20) NOT NULL default '',
  `BusType` varchar(50) default NULL,
  `BusNumber` varchar(20) default NULL,
  `Capacity` int(3) default '0',
  `TravelsId` varchar(20) default NULL
);

/*Data for the table `busmaster` */

insert  into `busmaster`(`BusId`,`BusType`,`BusNumber`,`Capacity`,`TravelsId`) values ('B12','AC','GJ 2303',40,'T12'),('B3','Sleeper','AP 12 222',40,'T2'),('B4','Sleeper','AP 1900',40,'T3'),('B5','AC','AP 34322',40,'T3'),('B6','AC','AP 1981',40,'T2'),('B6','AC','AP 1981',40,'T2'),('B1','NonAC','1',40,'T2');

/*Table structure for table `customermaster` */

DROP TABLE IF EXISTS `customermaster`;

CREATE TABLE `customermaster` (
  `CustomerId` varchar(20) NOT NULL default '',
  `CustomerName` varchar(80) NOT NULL default '',
  `PhoneNumber` varchar(20) default NULL,
  `Address` tinytext NOT NULL,
  `Location` varchar(80) NOT NULL default '',
  `email` varchar(80) default NULL,
  `Gender` varchar(10) default NULL
);

/*Table structure for table `ticketdetails` */

DROP TABLE IF EXISTS `ticketdetails`;

CREATE TABLE `ticketdetails` (
  `TicketId` varchar(20) NOT NULL default '',
  `RouteId` varchar(20) NOT NULL default '',
  `CustomerId` varchar(20) NOT NULL default '',
  `rFrom` varchar(50) default NULL,
  `rTo` varchar(50) default NULL,
  `JourneyDate` date NOT NULL default '1000-01-01',
  `StartTime` time default NULL,
  `ReachTime` time default NULL,
  `Seats` varchar(255) default NULL,
  `BoardingPoint` varchar(50) default NULL,
  `NetAmount` int(10) default NULL,
  `Status` varchar(20) default NULL,
  `PaymentId` varchar(20) default NULL,
  `BusId` varchar(20) default NULL,
  PRIMARY KEY  (`TicketId`)
);

/*Data for the table `ticketdetails` */

insert  into `ticketdetails`(`TicketId`,`RouteId`,`CustomerId`,`rFrom`,`rTo`,`JourneyDate`,`StartTime`,`ReachTime`,`Seats`,`BoardingPoint`,`NetAmount`,`Status`,`PaymentId`,`BusId`) values ('T-12','R12','C12','Ahmedabad','Udaipur','2023-12-12','10:00:00','14:00:00','A12','Satellite',800,'Booked','P12','B12'),('T-3','R1','C1','Hyderabad','Nellore','2009-07-25','11:00:00','23:00:00','A6','Ameerpet',350,'Booked','P1','B1');
/*Data for the table `customermaster` */

insert  into `customermaster`(`CustomerId`,`CustomerName`,`PhoneNumber`,`Address`,`Location`,`email`,`Gender`) values ('C12','AAAAA','9991119999','Satellite','Ahmedabad','aaaaa@mail.com','Male'),('C2','srinivas','9999999999','Ameerpet','Hyderabad','kalyan@gmail.com','Male'),('C3','Raj','9909909900','Dilshuknagar','Hyderabad','Raj001@yahoo.com','Male'),('C4','Rani','9440944000','Ranigunz','Hyderabad','Rani07@gmail.com','Female'),('C5','Rahul','9999999999','Bangalore','Hyderabad','RahulM@rediff.com','Male'),('C6','Suresh','9290125200','Gachibowli','Hyderabad','Suresh@zapakmail.com','Male');
/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `FId` int(10) NOT NULL auto_increment,
  `UserID` varchar(100) default NULL,
  `Feedback` text,
  `DateSubmitted` date default NULL,
  PRIMARY KEY  (`FId`)
);

/*Data for the table `feedback` */

insert  into `feedback`(`FId`,`UserID`,`Feedback`,`DateSubmitted`) values (1,'kalyansrinivas@rediffmail.com','Hi, Portal is good. Services of Ganga Travels is too good.Thanks','2007-11-19'),(2,'Rajesh@gmail.com','Good website. Services are superb. ','2007-11-19'),(3,'RajuSrivastav@Zapakmail.com','One stop shop for booking bus tickets online anywhere in India.','2007-11-19'),(7,'raj@raj.co.in','Good site..worth of it','2007-11-19'),(8,'s.varaprasad@yahoo.co.in','Nice n excellent facilities.','2008-11-23'),(10,'vara_pop@yahoo.co.in','Best site 4 reserving bus tickets.','2008-11-25'),(11,'kumar','it is easy nice service from ur sidepls provide some more routes','2009-02-18'),(12,'SAI@GMAIL.COM','GOOD','2009-02-26'),(13,'srujan@gmail.com','nice','2009-02-26');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userid` varchar(20) NOT NULL default '',
  `password` varchar(20) NOT NULL default '',
  `auth` int(5) default NULL,
  PRIMARY KEY  (`userid`)
);

/*Data for the table `login` */

insert  into `login`(`userid`,`password`,`auth`) values ('admin','admin',0),('vara','sai',0);

/*Table structure for table `paymentdetails` */

DROP TABLE IF EXISTS `paymentdetails`;

CREATE TABLE `paymentdetails` (
  `PaymentId` varchar(20) default NULL,
  `CustomerId` varchar(20) default NULL,
  `PaymentMode` varchar(25) default NULL,
  `BankName` varchar(30) default NULL,
  `CardNo` varchar(25) default NULL,
  `NetAmount` int(10) default NULL,
  `PaymentStatus` varchar(20) default NULL,
  `TicketId` varchar(20) default NULL
);

/*Data for the table `paymentdetails` */

insert  into `paymentdetails`(`PaymentId`,`CustomerId`,`PaymentMode`,`BankName`,`CardNo`,`NetAmount`,`PaymentStatus`,`TicketId`) values ('P12','C12','Credit','sbi','1234567899991111',800,'Made','T-12'),('P1','C5','Credit','ICICI','4565456456454565',2600,'Made','T-1'),('P2','C6','Credit','ICICI','9909990999099909',1950,'Made','T-8'),('P1','C1','Credit','Axis','1234567890123456',350,'Made','T-3'),('P1','C1','Credit','sbi','1234567890123456',450,'Made','T-1'),('P1','C1','Credit','sbi','1234567890123456',450,'Made','T-1'),('P1','C1','Credit','SBI','1234567890987634',700,'Made','T-9');
/*Table structure for table `routemap` */

DROP TABLE IF EXISTS `routemap`;

CREATE TABLE `routemap` (
  `RouteId` varchar(20) NOT NULL default '',
  `PickupPoint` varchar(50) NOT NULL default '',
  `Fare` int(3) default '0',
  PRIMARY KEY  (`RouteId`,`PickupPoint`)
);

/*Data for the table `routemap` */

insert  into `routemap`(`RouteId`,`PickupPoint`,`Fare`) values ('R12','Satellite',0),('R1','Ameerpet',0),('R1','KPHB',0),('R1','Panjagutta',0),('R2','Ameerpet',0),('R2','KPHB',0),('R2','Panjagutta',0),('R3','kukatpally',0),('R9','ECIL',0),('R9','MGBS',0),('R9','MGBS1',0),('R9','sdf',0),('R9','sdf1',0),('R5','tnagar',0),('R2','sr. ngr.',0),('R3','ameerpet',0),('R1','lb ngr',0);
/*Table structure for table `routemaster` */

DROP TABLE IF EXISTS `routemaster`;

CREATE TABLE `routemaster` (
  `RouteId` varchar(20) NOT NULL default '',
  `rFrom` varchar(50) NOT NULL default '',
  `rTo` varchar(50) NOT NULL default '',
  `TravelsId` varchar(20) NOT NULL default '',
  `BusId` varchar(20) NOT NULL default '',
  `Departure` time default NULL,
  `Arrival` time default NULL,
  `Fare` int(10) NOT NULL default '0',
  `JDate` date default NULL,
  `Availability` int(3) default NULL
);

/*Data for the table `routemaster` */

insert  into `routemaster`(`RouteId`,`rFrom`,`rTo`,`TravelsId`,`BusId`,`Departure`,`Arrival`,`Fare`,`JDate`,`Availability`) values ('R12','Ahmedabad','Udaipur','T12','B12','10:00:00','14:00:00',800,'2023-12-12',40), ('R2','Hyderabad','Bangalore','T2','B3','21:00:00','09:00:00',600,'2008-11-27',37),('R3','Hyderabad','Pune','T3','B3','21:00:00','09:00:00',600,'2008-11-27',40),('R4','Hyderabad','Chennai','T1','B1','19:00:00','08:00:00',450,'2008-11-27',40),('R5','Hyderabad','Chennai','T1','B2','18:00:00','19:00:00',450,'2008-11-27',40),('R6','Hyderabad','Nellore','T2','B3','08:00:00','08:30:00',600,'2008-11-27',40),('R7','Hyderabad','Ongole','T2','B3','11:00:00','19:00:00',234,'2008-11-27',40),('R8','Hyderabad','Ongole','T2','B3','11:00:00','19:00:00',234,'2008-11-27',40),('R1','Hyderabad','Nellore','T2','B1','11:00:00','23:00:00',350,'2009-07-25',37);



/*Table structure for table `travelsmaster` */

DROP TABLE IF EXISTS `travelsmaster`;

CREATE TABLE `travelsmaster` (
  `TravelsId` varchar(20) NOT NULL default '',
  `Travels` varchar(80) default NULL,
  `Location` varchar(80) default NULL,
  `Address` tinytext,
  `AgentName` varchar(80) default NULL,
  `PhoneNumber` varchar(20) default NULL,
  PRIMARY KEY  (`TravelsId`)
);

/*Data for the table `travelsmaster` */

insert  into `travelsmaster`(`TravelsId`,`Travels`,`Location`,`Address`,`AgentName`,`PhoneNumber`) values ('T12','Eagle','Ahmedabad','Satellite', 'Aaazz Patel','9898099999'), ('T2','Raj Travels','Bangalore','Koramangala,Bangalore','Srinivas','9298892222'),('T3','Pran Travels','Hyderabad','Lower Tankbund','Pravan','98989898980'),('T1','kesineni','Hyderabad','ameerpet, hyd','kesi reddy','9885148211'),('T4','sai','Hyderabad','ap, hyd','sai','9885148211');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
