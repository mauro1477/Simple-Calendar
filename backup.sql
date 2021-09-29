-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_token`
--

DROP TABLE IF EXISTS `api_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7BA2F5EBA76ED395` (`user_id`),
  CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token`
--

LOCK TABLES `api_token` WRITE;
/*!40000 ALTER TABLE `api_token` DISABLE KEYS */;
INSERT INTO `api_token` VALUES (1,1,'5d2a1c8c9c6868b06c14b59e5a1f00fcb13dffa626a0e536307e7c903a6fb2f21c41e96092a40a6b9062c682612914fcd9759dec4abe8f3c4add7016','2020-12-19 23:01:51'),(2,1,'7d018392e254743091b45abbcdddc51056ad435944ca2f589fc4dcbac9c5c26fccac77790d9ef0f65ef4761bbc1b8fec8b2c1aca7acc6972ac8f6cc1','2020-12-19 23:01:51'),(3,2,'8feec6d85996303a44b2bcadacc772fcbf2e1ab659f5ab819aef1c2b2cbddbdecff02dde88fef1ca14372399663714add846814a33736858c2fc4254','2020-12-19 23:01:51'),(4,2,'28ad0fcbc3d6c210bbf04bef687ae259dc5fc395f87bd331f6362874dcdfa5496e2099b09065bb4f196f43ef072aa6528757d6d86a5c7d5ebc811175','2020-12-19 23:01:51'),(5,3,'2649339a17a5861fe9485bff5fef52fd55223f61a03bcf5006ddc61e3f8442c275c58e583af97badab9fd690a7cb4a788c1f9a6f68feae37a7d12885','2020-12-19 23:01:52'),(6,3,'87ea9f95e4c3731e0b8d85fabf20d1470e7bed5e3f11b08281fa24da94d465a0f4a3a818d92e5006b6aa1bab5c7540d5f0722449558596e675154694','2020-12-19 23:01:52'),(7,4,'1f8b093830468bbb951d8ce5616db455e0d61b5bfe37dae866ca66cc122153355a59352d02fe22dee562163741b75a288fa2e495fb4213b844265b9b','2020-12-19 23:01:52'),(8,4,'6d9c1be8cb7c3684ecba6b2ce70146b084ef71af1037cbb67ad667ebc93bb5c4cbdcaba939de4038147cdd91c10136a6207a1d0ac4ddf73070cfb9cf','2020-12-19 23:01:52'),(9,5,'ef1fbf7efff75699749468aa904cd666e2439f347c091d021d77014b317c6c39ee304934fb48637265f5bb21c46615605dcedf38e7842369148d28b1','2020-12-19 23:01:53'),(10,5,'0103f121ed58f95821b1efed097f2a0e83cbe733b0c96bda5c790396efc7b0dfc244314b7eab0b1e40b5bcd8efdbba418c3971d2067db74133a1fd5e','2020-12-19 23:01:53'),(11,6,'991eb411cffe3ac0ccf3bdc4c7cf36f71c7eeef8a841c115384b88a40d4b835519c724c718493ec550884961ff0d9ea39392107a054558a6a50472e4','2020-12-19 23:01:53'),(12,6,'fa4f2a1de51930ed6272a63186400d9bd0c39f42953d01590ebca34f7fcce2b8ddea4f364df347576766fdf3087a65c6cce11d9af465d2e8f0745843','2020-12-19 23:01:53'),(13,7,'0f3f3c5555077860c04b70d734c6744d7b9c990837d48a0b17a0a6f0643a40cf04d61b0bf8f1a1b1c776a11b50a3c79736fc1e315012d133a7f89d3f','2020-12-19 23:01:54'),(14,7,'226f284d4c5a8b53926a2833e6d36d75c52b1737d74c33a4739edd9595ec1694223a9d8158f8e9d90dd94f6f7686cfcb144337578eed86eeb6535d23','2020-12-19 23:01:54'),(15,8,'1e6cdbc408aaa6ffbab385a6439c0639cb673b74728e5fe80db52602ac04122a055155846f0473030ed2362cd4468c16a5e9b16f21b934e2d6e2fc34','2020-12-19 23:01:54'),(16,8,'f294aedb38893966fc71bcb9d60859701de143a12ac9b7999c622fc085adb32f7f9213f63b0e3b79792cf5f39fff01b9c9eb71e98cf307509bf1e799','2020-12-19 23:01:54'),(17,9,'73ad0245ed8b48b6fbe58b462d7199dfa1d9e0dde1a59347adcffd07deaee967491c49a2471aef7bcb0e19902eaf66e90faab759839a7ee4f95d4e0a','2020-12-19 23:01:55'),(18,9,'3f2588fee9a20eeb819b69afa4822b42c0da4536d6fb96031707990a37df94f8bb7f36eec20b60730688c7904830f4c24717c6e95a669ba5fa6fec46','2020-12-19 23:01:55'),(19,10,'edf4bd7267947d51c34a6d1fe813d418e9ee07c3809a47106b68e3a07e0ff9b25c66b503995ae3dc113d9ccd186246254bb6fcc71d59fc2798d12d7b','2020-12-19 23:01:55'),(20,10,'9ec72da17f9ddc8fe0c611163daecdafb41af0a0c064df0cbb286f4d6f7bbcc1d9f01b58a5522b86b6090dec5200554c532d6f75f149e32e7b861218','2020-12-19 23:01:55'),(21,11,'48de9aa60bbf22ee2f47a81885f5df9c88a7aea60bfd5a9e56811b5bb508411d8fd8c15b43a438c1a1c585b48ce496ab62eade55f50bd167a555ab66','2020-12-19 23:01:56'),(22,11,'6d63e2329a51c98a00e1d3aa24dd88e715cd2edab1f05598a12d214ed26239bcdc4f2a4af25fbf57e476f4c83a223a21faccb95c60ddf781bb5d6e83','2020-12-19 23:01:56'),(23,12,'dd4b2df1f82c9c73c98a837bcde24ee154debcfb47f1c6babab2b0862cb6b64a7d275f63f3e87b9472f8cf407bc5382109a322b73209889a6fa0579e','2020-12-19 23:01:56'),(24,12,'6d0bfcb817521ea2580dacd319b6ec7f9c9fcf95d6ed6c3d2cfe9d50a0a84363ab80088a0553400c9a592245065e86e11c6065e41ea1564702a838d4','2020-12-19 23:01:56'),(25,13,'fe67dd196d6faa95d71649dacb31528e55bbe6d2bbd66472c6d05adeceeba63a6c930b255f9b0fa45851a513bfbe4b83a004d834eedcc03cfd6c6f1e','2020-12-19 23:01:56'),(26,13,'d46f4749833df7154946b906d8d8583ce77e0705f8c2cdcca5e40caae5463b99a6cd4ab7d6ddcb409c36224f5a47715b8b502cb9843542daf8c69786','2020-12-19 23:01:56');
/*!40000 ALTER TABLE `api_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_reference`
--

DROP TABLE IF EXISTS `category_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_reference` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_id` int NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_69C39B239C24126` (`day_id`),
  CONSTRAINT `FK_69C39B239C24126` FOREIGN KEY (`day_id`) REFERENCES `day` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_reference`
--

LOCK TABLES `category_reference` WRITE;
/*!40000 ALTER TABLE `category_reference` DISABLE KEYS */;
INSERT INTO `category_reference` VALUES (1,1,'apply-for-the-rogers-stem-scholarship-veterans-affairs-5fde79143d24c.pdf','Apply for the Rogers STEM Scholarship _ Veterans Affairs.pdf','application/pdf',0),(2,1,'apply-for-the-rogers-stem-scholarship-veterans-affairs-5ff515710c73d.pdf','Apply for the Rogers STEM Scholarship _ Veterans Affairs.pdf','application/pdf',0);
/*!40000 ALTER TABLE `category_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month_id` int NOT NULL,
  `published_at` tinyint(1) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E5A02990A0CBDE4` (`month_id`),
  CONSTRAINT `FK_E5A02990A0CBDE4` FOREIGN KEY (`month_id`) REFERENCES `month` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (1,1,1,'Day1','pariatur-nulla-suscipit-ut-ducimus','Content for Day 1','mercury-5ff5fbf9ae818.jpeg'),(2,1,1,'Day 2','qui-quae-aut-architecto-iure','Content for Day 2',NULL),(3,1,1,'Day3','voluptatum-et-quo-numquam-eum-omnis-illo-vel','Content for Day 3',NULL),(4,1,1,'Day 4','tempore-nam-ipsum-consectetur-veniam-quia-voluptas-est-aut','Content for Day 4',NULL),(5,1,1,'Day5','nam-aut-qui-reprehenderit-numquam-incidunt','Content for Day 5',NULL),(6,1,1,'Day 6','facere-et-ex-eaque-velit-fugit-tenetur','Content for Day 6',NULL),(7,2,1,'Day1','laboriosam-veniam-ut-sequi-incidunt','Content for Day 1',NULL),(8,2,1,'Day 2','neque-saepe-expedita-sed-iste-voluptatibus-omnis','Content for Day 2',NULL),(9,2,1,'Day3','fugiat-corporis-odit-voluptatum-iste-officia-delectus-laudantium-iusto','Content for Day 3',NULL),(10,2,1,'Day 4','quia-dolores-earum-repellendus-et-vitae-voluptatibus-nostrum','Content for Day 4',NULL),(11,2,1,'Day5','atque-et-rerum-sint-amet-quisquam-explicabo-quam','Content for Day 5',NULL),(12,2,1,'Day 6','culpa-mollitia-omnis-possimus-neque-in','Content for Day 6',NULL),(13,3,1,'Day1','error-sint-doloribus-qui-maiores-voluptate-id','Content for Day 1',NULL),(14,3,1,'Day 2','magni-doloribus-vero-sint-temporibus-nostrum','Content for Day 2',NULL),(15,3,1,'Day3','numquam-itaque-vero-molestias-ut-veniam-odio-dolorem','Content for Day 3',NULL),(16,3,1,'Day 4','vero-autem-repudiandae-reiciendis-et-dicta','Content for Day 4',NULL),(17,3,1,'Day5','aut-quia-sunt-laborum-est-sunt-amet','Content for Day 5',NULL),(18,3,1,'Day 6','omnis-inventore-nemo-sed-qui-neque-aut','Content for Day 6',NULL),(19,4,1,'Day1','mollitia-sit-quasi-in-quam-voluptatem-corporis','Content for Day 1',NULL),(20,4,1,'Day 2','iure-dolorum-ea-est-suscipit-nulla-doloribus-est','Content for Day 2',NULL),(21,4,1,'Day3','voluptas-dolorum-nobis-fugit-aliquam','Content for Day 3',NULL),(22,4,1,'Day 4','facere-eveniet-in-et','Content for Day 4',NULL),(23,4,1,'Day5','minima-est-voluptatem-illum-et-dicta','Content for Day 5',NULL),(24,4,1,'Day 6','vel-accusamus-omnis-labore-ea-minima-quidem','Content for Day 6',NULL),(25,5,1,'Day1','ad-vel-consectetur-expedita-adipisci-saepe-exercitationem-aut-quia','Content for Day 1',NULL),(26,5,1,'Day 2','esse-est-natus-et-commodi','Content for Day 2',NULL),(27,5,1,'Day3','cupiditate-et-et-quia','Content for Day 3',NULL),(28,5,1,'Day 4','ipsam-quam-dolores-aut-et-est-rerum-quas','Content for Day 4',NULL),(29,5,1,'Day5','nulla-provident-quidem-incidunt-suscipit-sed-placeat','Content for Day 5',NULL),(30,5,1,'Day 6','corporis-facilis-eaque-est','Content for Day 6',NULL),(31,6,1,'Day1','autem-eum-in-deleniti-consequatur-eum-sit-officiis','Content for Day 1',NULL),(32,6,1,'Day 2','non-suscipit-maxime-tempora-sed','Content for Day 2',NULL),(33,6,1,'Day3','rerum-sit-sapiente-aut-explicabo-sit-quis-exercitationem','Content for Day 3',NULL),(34,6,1,'Day 4','reiciendis-autem-sit-voluptatem','Content for Day 4',NULL),(35,6,1,'Day5','omnis-facilis-sapiente-eos-ipsam-minima-minima','Content for Day 5',NULL),(36,6,1,'Day 6','non-aliquid-labore-aut-consequuntur','Content for Day 6',NULL),(37,7,1,'Day1','architecto-sit-in-neque-dolor','Content for Day 1',NULL),(38,7,1,'Day 2','voluptates-quam-nihil-fugit-esse','Content for Day 2',NULL),(39,7,1,'Day3','ut-itaque-repellat-quisquam-et','Content for Day 3',NULL),(40,7,1,'Day 4','ipsa-magnam-vel-architecto-amet-facere-id','Content for Day 4',NULL),(41,7,1,'Day5','eum-architecto-omnis-facilis','Content for Day 5',NULL),(42,7,1,'Day 6','possimus-dicta-et-deleniti-laboriosam-tempora','Content for Day 6',NULL),(43,8,1,'Day1','voluptatem-officiis-nihil-ipsam-tempora-id-sit-et','Content for Day 1',NULL),(44,8,1,'Day 2','debitis-rem-blanditiis-sed-rerum-accusamus-voluptas-et-rerum','Content for Day 2',NULL),(45,8,1,'Day3','enim-accusantium-fugit-sed-suscipit-modi-enim-inventore','Content for Day 3',NULL),(46,8,1,'Day 4','consequatur-ratione-suscipit-in-tempore-similique-amet','Content for Day 4',NULL),(47,8,1,'Day5','nemo-est-in-ullam-qui-quidem-maxime','Content for Day 5',NULL),(48,8,1,'Day 6','cum-architecto-aliquam-cupiditate-aut','Content for Day 6',NULL),(49,9,1,'Day1','voluptas-dolores-id-tempore-dolore-tenetur','Content for Day 1',NULL),(50,9,1,'Day 2','natus-maxime-corporis-error-labore-voluptas-vel','Content for Day 2',NULL),(51,9,1,'Day3','excepturi-suscipit-illo-aliquid-laboriosam-repellendus-veritatis-qui-voluptatum','Content for Day 3',NULL),(52,9,1,'Day 4','cupiditate-nesciunt-natus-in-enim-consequatur-et-nisi-ducimus','Content for Day 4',NULL),(53,9,1,'Day5','id-laborum-neque-neque-et-eos-ea-quis','Content for Day 5',NULL),(54,9,1,'Day 6','incidunt-laborum-necessitatibus-esse-alias-velit-quasi','Content for Day 6',NULL),(55,10,1,'Day1','laboriosam-voluptatum-quo-ipsam-ullam-ipsa-aut','Content for Day 1',NULL),(56,10,1,'Day 2','reiciendis-reprehenderit-voluptatem-error-quisquam-rerum','Content for Day 2',NULL),(57,10,1,'Day3','dolorem-autem-minus-voluptatibus-illum','Content for Day 3',NULL),(58,10,1,'Day 4','voluptatem-excepturi-ea-in-officiis-optio-sapiente','Content for Day 4',NULL),(59,10,1,'Day5','qui-veritatis-perferendis-repudiandae-quia-pariatur-accusamus-consequuntur','Content for Day 5',NULL),(60,10,1,'Day 6','tempora-provident-est-et-laudantium','Content for Day 6',NULL),(61,11,1,'Day1','ea-recusandae-consequatur-est-ut-qui-quis','Content for Day 1',NULL),(62,11,1,'Day 2','voluptatum-dolores-reprehenderit-harum-quis-dolorum-odit','Content for Day 2',NULL),(63,11,1,'Day3','autem-aliquam-nihil-quis-laboriosam-sit-est-praesentium-facilis','Content for Day 3',NULL),(64,11,1,'Day 4','animi-ipsam-ex-aut-sit','Content for Day 4',NULL),(65,11,1,'Day5','cumque-ea-aut-repellendus-optio-exercitationem-qui-repudiandae','Content for Day 5',NULL),(66,11,1,'Day 6','error-quod-et-voluptatibus-id','Content for Day 6',NULL),(67,12,1,'Day1','earum-maiores-assumenda-consequatur-vitae-nisi','Content for Day 1',NULL),(68,12,1,'Day 2','maxime-quo-commodi-labore-fugiat-ex','Content for Day 2',NULL),(69,12,1,'Day3','eum-in-eligendi-aut-totam-voluptatem-voluptatibus-odio','Content for Day 3',NULL),(70,12,1,'Day 4','odio-culpa-libero-aut-cupiditate-animi','Content for Day 4',NULL),(71,12,1,'Day5','quisquam-labore-dolore-dolore-quasi','Content for Day 5',NULL),(72,12,1,'Day 6','rerum-harum-architecto-dicta-et-eos-error-eveniet','Content for Day 6',NULL);
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20201112051221','2020-12-19 22:01:10',583);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` tinyint(1) DEFAULT NULL,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES (1,'January','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\r\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\r\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\r\n**turkey** shank eu pork belly meatball non cupim.\r\n\r\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\r\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\r\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\r\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\r\noccaecat lorem meatball prosciutto quis strip steak.\r\n\r\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\r\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\r\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\r\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\r\nfugiat.',1,'mercury-5ff7a69484101.jpeg','inventore-asperiores-est-esse'),(2,'February','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'sunt-qui-dicta-excepturi-quis-id-sint-at'),(3,'March','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'et-dolore-voluptas-magni-inventore-odit-in-reprehenderit'),(4,'April','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'voluptatibus-modi-omnis-sint-est-tenetur-debitis-saepe-ad'),(5,'May','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'adipisci-quod-excepturi-culpa-quaerat-non'),(6,'June','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'quia-aliquid-deserunt-non-facilis-iure'),(7,'July','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'sunt-autem-officia-repellat-illo'),(8,'August','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'sed-quia-quis-iure-voluptas-eos'),(9,'September','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'et-corporis-sit-culpa-nulla-earum'),(10,'October','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'ut-aut-qui-in-eos-id-non'),(11,'November','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'alias-culpa-maiores-est-exercitationem-aut-reiciendis-quae-accusantium'),(12,'December','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'cumque-repellendus-consectetur-omnis-laudantium-esse');
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agreed_terms_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'spacebar0@example.com','[]','Zola','$2y$13$T1VPW.vjm8yONPxpFIESdOHyQugU2qzp6x7ifmO2Ki9v2HAwqAdi.','2020-12-19 22:01:51'),(2,'spacebar1@example.com','[]','Mossie','$2y$13$mlr0lFBq4r2fD16Jl1iqSeh1JfJ3vlxB.ggnqOjnsQf.VDUIhQK7i','2020-12-19 22:01:51'),(3,'spacebar2@example.com','[]','Javier','$2y$13$4cdCBDZ/4ZAPdzexI3NQ5uZfCiEg/5uCupBqMCPUAfNx9ocLnkijy','2020-12-19 22:01:52'),(4,'spacebar3@example.com','[]','Birdie','$2y$13$a/87AJWkWPJ2E6YTrR71aegT5AslPTtda19j5m4phDR/ikHoOM5mG','2020-12-19 22:01:52'),(5,'spacebar4@example.com','[]','Grace','$2y$13$ezXREjGSLOU0z6i9XfeVLO0tKFh0duhPTbYkgIep24N2ZAxLiPNDi','2020-12-19 22:01:53'),(6,'spacebar5@example.com','[]','Lamar','$2y$13$s7JktikbCM22FL9tKAI6S.6doHEWs36MEUXKphSBXzuwKt6QlckcG','2020-12-19 22:01:53'),(7,'spacebar6@example.com','[]','Joannie','$2y$13$U9FxkuGSeD0dZksRxNr7EOUXksVlT7xL0MM2VCs80mEyUCI4VXhpW','2020-12-19 22:01:54'),(8,'spacebar7@example.com','[]','Tamara','$2y$13$Ma7rt6uBQNFF0Ub4Ool.eeazhTlevnjsG8mbtK3n6rbYz6wnWlCma','2020-12-19 22:01:54'),(9,'spacebar8@example.com','[]','Eloy','$2y$13$UTtL8.pGqUAun1WPIgaQ4uanmYoeu84a7rV819RKOTCOwxoZ8.G.C','2020-12-19 22:01:55'),(10,'spacebar9@example.com','[]','Raina','$2y$13$iwyI.A6Sqh14lc./tT87NuK0qg4IbFClF0YnC3HhB8a2ICObZ1Hbm','2020-12-19 22:01:55'),(11,'admin0@thespacebar.com','[\"ROLE_ADMIN\"]','Otto','$2y$13$sz2c44jLfYLmb8KzeA1zhu5du7W/f99UGf29MG2YI/pl8G48FUXVi','2020-12-19 22:01:56'),(12,'admin1@thespacebar.com','[\"ROLE_ADMIN\"]','Barry','$2y$13$.wx/jKd8R6jiY1LMB21yn.g1GGjEef8/CcOx5CE1TIQHLybQ4UwSq','2020-12-19 22:01:56'),(13,'admin2@thespacebar.com','[\"ROLE_ADMIN\"]','Leif','$2y$13$ti4WBp1rYemU/7hEKMmpqeLKRMQf8buLnCiDk6H1NcWTrBc8c9uhm','2020-12-19 22:01:56'),(14,'scooby_3@gmail.com','[]',NULL,'$2y$13$PYxW7yvFkBpAGsuDiBRVs.X6BqjF3ttgZ/OVYF0t1qpw5MGAugSbm','2020-12-29 23:59:03'),(15,'newguy@gmail.com','[]',NULL,'$2y$13$1tQ1APm6E3m42E.H85hzC.tZoSH78BvKSkbdYgl6CMwALD8CAcNpm','2021-01-09 01:53:47'),(16,'maurovargas7725@gmail.com','[]',NULL,'$2y$13$cg/FeI.ITZt6TUCZo13n.OvhHym9xhNUsAsdW6uPIU41QTRr8Si4a','2021-01-13 00:17:25');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-13 18:54:40
