/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.1.36-community-log : Database - news_portal_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`news_portal_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `news_portal_db`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `description` text,
  `page_link` varchar(255) DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country_code` varchar(255) DEFAULT '',
  `category` varchar(255) DEFAULT 'general',
  `img` varchar(255) DEFAULT 'default-image.jpg',
  `source` varchar(255) DEFAULT 'N/A',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `articles` */

insert  into `articles`(`id`,`title`,`description`,`page_link`,`date`,`country_code`,`category`,`img`,`source`) values (1,'Govt removes minimum export price on onion','The government had previously fixed a USD 550 per tonne as the minimum export price (MEP), which essentially meant farmers could not sell their produce overseas at lower than this rate.','https://indianexpress.com/article/business/govt-removes-minimum-export-price-onion-9566329/','2024-09-01 00:00:00','in','business','onions-1600.jpg','indianexpress'),(2,'Actor Vikrant Massey opened up about the Justice Hema Committee report.','Vikrant Massey says he feels ashamed that he is more secure than the opposite gender: A lot of us need to look at the rot within','https://indianexpress.com/article/entertainment/bollywood/vikrant-massey-says-he-feels-ashamed-that-he-is-more-secure-than-the-opposite-sex-9567181/','2024-09-02 00:00:00','in','entertainment','sector36.jpg','indianexpress'),(3,'2 subtle signs of Monkeypox you should not ignore','India reports its first Mpox case in a young man who recentl ..\r\n	Monkeypox IN India: Suspected CASE IDENTIFIED; KEY symptoms exclusively seen IN this infection','http://timesofindia.indiatimes.com/articleshow/113342004.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst','2024-09-03 00:00:00','uk','health','monpox.jpg','timesofindia'),(4,'Two astronauts did a spacewalk 700 km above the Earth','On September 12, two astronauts conducted a spacewalk about 700 kilometers above the Earth in the Polaris Dawn mission of Elon Musk\'s company SpaceX. The speed of the spacecraft at the time of the spacewalk was 25,000 km per hour. This is the first spacewalk conducted from a private spaceship.','https://www.bhaskar.com/international/news/two-astronauts-doing-a-spacewalk-700-km-above-133631960.html','2024-09-04 00:00:00','in','science','science.jpg','dainikbhaskar'),(5,'Future loading but please wait','India will follow this race of the 20-something cricketers with anticipation and also a sense of nervousness. This cricket-crazy nation, while celebrating grand graduations, have also endured false dawns.','https://indianexpress.com/article/sports/cricket/india-cricket-future-post-rohit-virat-era-stars-jaiswal-gill-pant-9566874/','2024-09-05 00:00:00','in','sports','sports.jpg','indianexpress'),(6,'OpenAI\'s stunning $150 billion valuation hinges on upending corporate structure','OpenAI\'s new financing round is expected to come in the form of convertible notes, according to sources with direct knowledge of the matter, who said its $150 billion valuation will be contingent on whether the ChatGPT-maker can upend its corporate structure and remove a profit cap for investors.','https://www.thehindu.com/sci-tech/technology/openais-stunning-150-billion-valuation-hinges-on-upending-corporate-structure-sources-say/article68641515.ece','2024-09-06 00:00:00','in','technology','openai.jpg','thehindu'),(7,'Govt clears 12 Indian start-ups for incentives under chip design plan','The government has received 59 applications under the design linked incentive (DLI) scheme, of which it has cleared 12 for financial assistance. 21 applications are under review.','https://indianexpress.com/article/business/economy/govt-clears-12-indian-start-ups-incentives-chip-design-plan-9557187/','2024-09-07 00:00:00','in','business','buss.jpg','indianexpress'),(8,'OTT Releases This Week: Emily in Paris Season 4 Part 2, Bad Newz, Berlin, Officer Black Belt','This weekend\'s OTT offerings include Emily in Paris Season 4 ..\r\n\r\n\r\n','http://timesofindia.indiatimes.com/articleshow/113343112.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst','2024-09-08 00:00:00','in','entertainment','en.jpg','timesofindia'),(9,'Two FPIs mentioned in the Hindenburg report seek relief.','Deadline for beneficial ownership of FPI holdings ends on Sept 9','https://indianexpress.com/article/business/market/deadline-for-beneficial-ownership-of-fpi-holdings-ends-on-sept-9-9557191/','2024-09-09 00:00:00','in','business','markets.jpg','indianexpress'),(10,'Scientists find a long-sought electric field in Earths atmosphere','For the first time scientists have measured a long-sought global electric field in the Earths atmosphere This field called the ambipolar electric field was predicted to exist decades ago but never detected until now\r\n\r\nThats the big whoop says atmospheric scientist Glyn Collinson of NASAs Goddard Space Flight Center in Greenbelt Md Its a whole frickin new planetary energy field thats never been measured before','https://www.sciencenews.org/article/electric-field-in-earths-atmosphere','2024-09-10 00:00:00','in','science','science1.jpg','sciencenews');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
