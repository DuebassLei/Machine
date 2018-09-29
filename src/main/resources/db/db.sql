DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `ID` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `emp_count` VARCHAR (64)
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB  ;

CREATE TABLE `employee`(
  `ID` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
   `tel` VARCHAR (64) DEFAULT NULL ,
   `address` VARCHAR (64) DEFAULT NULL,
   `work`  VARCHAR (64) DEFAULT NULL,
   `salary` VARCHAR (64) DEFAULT NULL,
   `start_time` datetime,
    `info` VARCHAR (64) DEFAULT NULL,
    `dept_id` VARCHAR (64) DEFAULT NULL,
   PRIMARY KEY (`ID`)
)ENGINE=InnoDB ;

DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `ID` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `info` VARCHAR (64) ,
  `emp_count` int(10) DEFAULT 0,
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB  ;
