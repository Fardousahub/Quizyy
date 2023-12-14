


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `gcse_math_questions`;

CREATE TABLE `gcse_math_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` text NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

LOCK TABLES `gcse_math_questions` WRITE;
/*!40000 ALTER TABLE `gcse_math_questions` DISABLE KEYS */;

INSERT INTO `gcse_math_questions` (`question_id`, `question_text`, `correct_answer`, `created_at`, `updated_at`, `category_id`)
VALUES
	(1,'What is 5 multiplied by 8?','40','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(2,'Solve for x: 3x + 7 = 22','5','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(3,'Calculate the perimeter of a rectangle with length 15 and width 7','44','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(4,'What is the square root of 100?','10','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(5,'Simplify: 2(3x - 5) = 16','9','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(6,'Calculate the volume of a cube with edge length 4','64','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(7,'What is 25% of 80?','20','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(8,'Solve the equation: 4x - 9 = 7','4','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(9,'Calculate the circumference of a circle with diameter 10','31.42','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(10,'Evaluate: 3^2 - 5 * 2','1','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(11,'Simplify: 4x + 3 - 2x = 11','4','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(12,'Find the perimeter of a square with a side length of 12','48','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(13,'What is 9 squared?','81','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(14,'Solve for x: 2x + 5 = 17','6','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(15,'Calculate the area of a triangle with base 8 and height 6','24','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(16,'What is 15% of 200?','30','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(17,'Solve the equation: 5x - 2 = 13','3','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(18,'Calculate the circumference of a circle with radius 5','31.42','2023-12-14 15:14:43','2023-12-14 15:14:43',3),
	(19,'Evaluate: 20 / 4 + 5','10','2023-12-14 15:14:43','2023-12-14 15:14:43',1),
	(20,'Solve for x: 3(x - 2) = 27','11','2023-12-14 15:14:43','2023-12-14 15:14:43',2),
	(21,'Calculate the area of a square with side length 10','100','2023-12-14 15:14:43','2023-12-14 15:14:43',3);

/*!40000 ALTER TABLE `gcse_math_questions` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `question_categories`;

CREATE TABLE `question_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `question_categories` WRITE;
/*!40000 ALTER TABLE `question_categories` DISABLE KEYS */;

INSERT INTO `question_categories` (`category_id`, `category_name`)
VALUES
	(1,'Arithmetic'),
	(2,'Algebra'),
	(3,'Geometry');

/*!40000 ALTER TABLE `question_categories` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `email`, `date_of_birth`, `enrollment_date`, `created_at`, `updated_at`)
VALUES
	(1,'John','Smith','john@example.com','2005-03-12','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(2,'Emma','Johnson','emma@example.com','2006-05-25','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(3,'Michael','Williams','michael@example.com','2005-07-18','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(4,'Sophia','Brown','sophia@example.com','2005-09-03','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(5,'James','Jones','james@example.com','2006-01-09','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(6,'Olivia','Garcia','olivia@example.com','2005-11-22','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(7,'William','Martinez','william@example.com','2005-04-30','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(8,'Ava','Robinson','ava@example.com','2006-02-14','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(9,'Alexander','Clark','alexander@example.com','2005-08-07','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(10,'Mia','Rodriguez','mia@example.com','2005-06-29','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(11,'Benjamin','Lee','benjamin@example.com','2006-10-17','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(12,'Emily','Perez','emily@example.com','2005-12-01','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(13,'Ethan','Taylor','ethan@example.com','2005-02-28','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(14,'Charlotte','Hernandez','charlotte@example.com','2006-07-11','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(15,'Daniel','Moore','daniel@example.com','2005-09-19','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(16,'Scarlett','Lewis','scarlett@example.com','2005-10-05','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(17,'Isabella','White','isabella@example.com','2006-04-08','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(18,'Henry','Thompson','henry@example.com','2005-01-15','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(19,'Amelia','Cook','amelia@example.com','2005-08-26','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33'),
	(20,'Liam','Scott','liam@example.com','2006-03-07','2020-09-01','2023-12-14 14:55:33','2023-12-14 14:55:33');

/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `test_results`;

CREATE TABLE `test_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `marks_obtained` decimal(5,2) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `student_id` (`student_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `test_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `test_results_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `question_categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;

INSERT INTO `test_results` (`result_id`, `student_id`, `category_id`, `score`, `test_date`, `total_marks`, `marks_obtained`, `percentage`)
VALUES
	(1,1,1,35.00,'2023-06-15',50.00,35.00,70.00),
	(2,2,2,42.00,'2023-06-18',50.00,42.00,84.00),
	(3,3,3,48.00,'2023-06-20',50.00,48.00,96.00),
	(4,4,1,30.00,'2023-06-22',50.00,30.00,60.00),
	(5,5,2,45.00,'2023-06-25',50.00,45.00,90.00),
	(6,6,3,39.00,'2023-06-27',50.00,39.00,78.00),
	(7,7,1,47.00,'2023-06-30',50.00,47.00,94.00),
	(8,8,2,36.00,'2023-07-03',50.00,36.00,72.00),
	(9,9,3,43.00,'2023-07-05',50.00,43.00,86.00),
	(10,10,1,28.00,'2023-07-08',50.00,28.00,56.00);

/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
