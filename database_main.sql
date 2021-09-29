-- MySQL dump 10.13  Distrib 8.0.22, for osx10.16 (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token`
--

LOCK TABLES `api_token` WRITE;
/*!40000 ALTER TABLE `api_token` DISABLE KEYS */;
INSERT INTO `api_token` VALUES (27,17,'31d5fc857fa72e9b5bfdd91c3490e8ab7c81e188c3b16265499cf8f5f614df240222e9e436cc5763f9904ab4df7f6ee1909643e73b3f12dcc6f59dfc','2021-02-10 02:32:51'),(28,17,'1ebac473fb49950600a4e24c67cfaaa716d0d91e81493076b87eb647fed1ff4007ab0bb937d3c7e627e4dd2b827d41069cf6e567062b96f74fd5cefb','2021-02-10 02:32:51'),(29,18,'885db45fa071c91b5f9ff7dc52a8d1a05e90faf8a65751da80b90217f609c142c959466cc74bd51ac8726b546b978be355d3cb839e54d70c09847270','2021-02-10 02:32:52'),(30,18,'fc3ad0129bb08ccc4791695e1661936dd255f82baf2c7aba553d6b472049364d2b18ac6efdb17a3535c0a8aef74d235904a59869114d85ea7167f972','2021-02-10 02:32:52'),(31,19,'88791bd82fe7ceb43528e6db22091bdf622fe1069b708bcab72c226448c914688ed325a88a85c8c531389a2f6a8d8fe5632dec4f8018fd4f03eefe09','2021-02-10 02:32:52'),(32,19,'3dc1dbc9519842d688494b344f1af07fbd5bb246ee7c4c53437e0797a4272c85b83d76f81ed88aa385afcafc38823a2ca2e29655d8036aeaf7ef51dd','2021-02-10 02:32:52'),(33,20,'708b5dbdb416949b0a0f0a9466795c1c3cd5c2156b01ec7ec971ee89d5794c35b4f83cc72f9b3615d8f12659f2b4b8639c92450679e06d67805adb33','2021-02-10 02:32:52'),(34,20,'344555240a59b97e60a924b18a41040db1e69cec080df2c2810d5a598a1a778470d2fdef8b17fb4852b8989329e7726ff984a493dc84809c7a08764e','2021-02-10 02:32:52'),(35,21,'6bd10f1b6910625910c373c53a57e69a438f9cf80991ba55ea48a81e0120c4a0a4835e8d7caf3b93ac5e01c70973ed1e513cfbae2858de376698e0bc','2021-02-10 02:32:53'),(36,21,'d9814b9a0e83077ea9d2064e4f93f9461504bfd90a250090a675ffdd8dc1eae9095687c90a6c957230063141686e3ccc9c88d7b4fcfda1226e5bc90f','2021-02-10 02:32:53'),(37,22,'c8f02423dd1f63b6b87e6c40b150d1d0155e24dc77260041442d5dda5e0673f76685338226797d4c13bf16eb9bed0c67efc6ac50dea66e6fb367c181','2021-02-10 02:32:53'),(38,22,'95605031507866fb5c0dde92e058449a46e82aadb01c5eb7c578eb6dd2c5afb7b41d96de11eaff66b7bbab0800457a7735ffd1a7267ce278a4dc6aa6','2021-02-10 02:32:53'),(39,23,'8e371450f01dfdb850c6955155e2fd76e7bcecab6672a1dd5d01e2c018708a08f78c149f13bcf6df07d870a5dda26620780b204495e4b3266bb49ad3','2021-02-10 02:32:54'),(40,23,'f81ef3767968b9b609fb9b895e5d0a7cd7fcd99fdd49ec82eaa95d6df1a57a2ee55230105cefbae4ee6a9893be66747e702bbd5a62e0d1a4fa608e3a','2021-02-10 02:32:54'),(41,24,'410f34b7795bf7d98f5bf32b38debc52e664ba081465dbff7288102b1e4c30b63b26e6e1a2829256b8f32eb84fb3b83ac991d9ce42749b4d6c400a98','2021-02-10 02:32:54'),(42,24,'8b37ac90baacecb756ac954b7b7079b7cf0b399dcf2060e0c02f46bdec275aca04a3e7317d038edc37d9faabe10e27364f714658af317757d9a089a6','2021-02-10 02:32:54'),(43,25,'cd88910fb501d4a35b7af716a989ef7cb233813da37d90612245ce9921c2c974d3e7addcb58ad8a7da553576fb5383496d7ec981c920bace8116af40','2021-02-10 02:32:55'),(44,25,'842216136920713122feff8706d3add02254a4d9e5fb74532b507717c100273cf3713ffcec15d6316381700a7c704fcb70a032807542c1db60e00ffc','2021-02-10 02:32:55'),(45,26,'d4b3d20e73832c11658f79996ad654500c2c54e53c2c664db71d65fc74b0975a4301fe544639428ccf04c73347ab7b63407771d080446c99afd83e15','2021-02-10 02:32:55'),(46,26,'84484e6b017296abe133adf934553ca4201cb3fc1a51aa63f88a6da2bf4d27ed49d10730d996f7a6cff5b6690d57898b18c46a762a695a1049eb6320','2021-02-10 02:32:55'),(47,27,'ec5b7602ff2c087ac7899dce411757acd26f44fd6c446f4d99663757cd59db2779a2adda8ca135ef09086c5670e164a2b2eafc9002069f782507669b','2021-02-10 02:32:56'),(48,27,'8584ce6cca0a2d45ebf2588cedc7aeb5bc1916d9faa79bbdd78d369e61d4b82dba166bfbdf9f5ceab7925b35a241904810aa41236bb0c922270abded','2021-02-10 02:32:56'),(49,28,'79ed351967fa2a24e1b9e5b8ecdb38ad475757546ecb1f078b266d0db635579ea88bcf604db6b1114bb301312d65ae193a6cb089e787dd2e1bade11f','2021-02-10 02:32:56'),(50,28,'7db61c41be7e82848d50c3b0f816a1eeaad76852ab8477c6e9457d41ed2ccb9e888d26c40f59dc1b8ef1c64e3eb02c69a1091fd9d2b7a4bb3d2ce3ec','2021-02-10 02:32:56'),(51,29,'50495aff8128f9623bdb9fcc775e75e097864c4402e13b978242a693e17dac3c5cf6deb8b99dd752b80a55de6f9f18fe92e1c103b91071529758d25a','2021-02-10 02:32:57'),(52,29,'7fb410f64f54d311fe84d2fba2a383e954a9ede18111fa0a5ac25af4ca183469df926242f36d530d236a7c087c483d575e27cd44d5105b162d409915','2021-02-10 02:32:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_reference`
--

LOCK TABLES `category_reference` WRITE;
/*!40000 ALTER TABLE `category_reference` DISABLE KEYS */;
INSERT INTO `category_reference` VALUES (3,79,'f18-p3-ort-602967a8d8385.pdf','F18_P3_ORT.pdf','application/pdf',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (73,13,1,'Day1','consequatur-vel-est-quisquam-veritatis','Content for Day 1',NULL),(74,13,1,'Day 2','debitis-harum-ut-excepturi-et','Content for Day 2',NULL),(75,13,1,'Day3','dolore-modi-explicabo-voluptatem-dolor','Content for Day 3',NULL),(76,13,1,'Day 4','rem-voluptatem-consequuntur-autem-commodi','Content for Day 4',NULL),(77,13,1,'Day5','sed-consequatur-occaecati-inventore-quisquam-et','Content for Day 5',NULL),(78,13,1,'Day 6','unde-illo-repudiandae-laborum-eos-modi-omnis','Content for Day 6',NULL),(79,14,1,'Day1','cum-est-molestiae-sint','Content for Day 1',NULL),(80,14,1,'Day 2','architecto-est-vel-hic-ut-eos','Content for Day 2',NULL),(81,14,1,'Day3','aut-corporis-rem-distinctio-accusantium-quo-voluptatem-laudantium','Content for Day 3',NULL),(82,14,1,'Day 4','repellat-facilis-ut-vel-aliquam','Content for Day 4',NULL),(83,14,1,'Day5','consequatur-aliquam-voluptatibus-libero-reprehenderit-voluptatem-harum-autem','Content for Day 5',NULL),(84,14,1,'Day 6','debitis-dolore-architecto-labore-rerum','Content for Day 6',NULL),(85,15,1,'Day1','doloribus-laborum-at-quis-rem-eos-autem-qui-sit','Content for Day 1',NULL),(86,15,1,'Day 2','exercitationem-quia-necessitatibus-veritatis','Content for Day 2',NULL),(87,15,1,'Day3','voluptatem-neque-ut-consequatur','Content for Day 3',NULL),(88,15,1,'Day 4','distinctio-rerum-at-voluptatem-aliquam-voluptates-eos-adipisci','Content for Day 4',NULL),(89,15,1,'Day5','quaerat-cum-ratione-nobis-quos-et-illo-sed-sapiente','Content for Day 5',NULL),(90,15,1,'Day 6','non-fugit-dicta-iusto-dignissimos-delectus-ut-inventore','Content for Day 6',NULL),(91,16,1,'Day1','nulla-consequatur-ea-mollitia-voluptas-consequatur-et-fuga','Content for Day 1',NULL),(92,16,1,'Day 2','pariatur-quia-rem-facilis-recusandae-voluptatum-placeat','Content for Day 2',NULL),(93,16,1,'Day3','fuga-dolorem-tempore-qui','Content for Day 3',NULL),(94,16,1,'Day 4','aperiam-quia-sed-non-et-provident-ut-aut','Content for Day 4',NULL),(95,16,1,'Day5','velit-corporis-sint-alias-voluptas','Content for Day 5',NULL),(96,16,1,'Day 6','omnis-quam-ad-deserunt-assumenda','Content for Day 6',NULL),(97,17,1,'Day1','maiores-et-sed-commodi-quaerat-totam-et-hic-quae','Content for Day 1',NULL),(98,17,1,'Day 2','incidunt-doloremque-omnis-et-unde-eligendi','Content for Day 2',NULL),(99,17,1,'Day3','eum-nisi-rerum-voluptas-deleniti-sint-hic','Content for Day 3',NULL),(100,17,1,'Day 4','unde-doloribus-labore-at-eum','Content for Day 4',NULL),(101,17,1,'Day5','maxime-ducimus-et-qui-et-dolores-quibusdam-velit-magnam','Content for Day 5',NULL),(102,17,1,'Day 6','eveniet-aut-non-dolorem-voluptatem','Content for Day 6',NULL),(103,18,1,'Day1','et-laborum-ab-porro-iusto-harum','Content for Day 1',NULL),(104,18,1,'Day 2','et-commodi-voluptatem-ut-nihil-rerum-quod','Content for Day 2',NULL),(105,18,1,'Day3','tempora-omnis-et-sint-aut-impedit-suscipit','Content for Day 3',NULL),(106,18,1,'Day 4','explicabo-molestias-sequi-accusantium-ex-nobis','Content for Day 4',NULL),(107,18,1,'Day5','ducimus-vel-eligendi-sint-ratione','Content for Day 5',NULL),(108,18,1,'Day 6','libero-eligendi-non-molestiae-et','Content for Day 6',NULL),(109,19,1,'Day1','fuga-autem-et-quasi-ut-quis-sequi-magnam','Content for Day 1',NULL),(110,19,1,'Day 2','nulla-eum-quia-quidem-voluptatem-non-molestias-non-velit','Content for Day 2',NULL),(111,19,1,'Day3','ratione-eos-eligendi-voluptatem-quisquam','Content for Day 3',NULL),(112,19,1,'Day 4','aut-ut-nihil-nulla-quia-incidunt-possimus-voluptatem','Content for Day 4',NULL),(113,19,1,'Day5','molestiae-et-minus-similique-quo-et-error-quam','Content for Day 5',NULL),(114,19,1,'Day 6','veritatis-assumenda-dolorem-at-blanditiis-et-eligendi','Content for Day 6',NULL),(115,20,1,'Day1','laboriosam-expedita-molestiae-ut-qui-facilis','Content for Day 1',NULL),(116,20,1,'Day 2','rem-nam-facilis-dolores-repudiandae-mollitia-iste','Content for Day 2',NULL),(117,20,1,'Day3','et-quas-deleniti-nemo-distinctio-assumenda-ratione','Content for Day 3',NULL),(118,20,1,'Day 4','ut-ut-aut-ut-molestiae-sint-dignissimos','Content for Day 4',NULL),(119,20,1,'Day5','et-omnis-adipisci-quidem-commodi','Content for Day 5',NULL),(120,20,1,'Day 6','quis-sunt-cum-repellat-dolores-vitae-ducimus-cum-repudiandae','Content for Day 6',NULL),(121,21,1,'Day1','quod-molestias-commodi-laboriosam-laboriosam-aut-earum-officiis','Content for Day 1',NULL),(122,21,1,'Day 2','et-est-qui-dolorem-officia','Content for Day 2',NULL),(123,21,1,'Day3','hic-aut-praesentium-deleniti-cum-eos-occaecati-temporibus','Content for Day 3',NULL),(124,21,1,'Day 4','maiores-dolore-quasi-sed-minus-molestiae-commodi','Content for Day 4',NULL),(125,21,1,'Day5','corporis-at-ipsum-dignissimos-exercitationem-vel','Content for Day 5',NULL),(126,21,1,'Day 6','molestiae-aliquid-voluptas-occaecati-ex-tempora-sequi','Content for Day 6',NULL),(127,22,1,'Day1','alias-maiores-et-eos-laudantium','Content for Day 1',NULL),(128,22,1,'Day 2','voluptatem-sint-sunt-fugiat-ratione-aut-accusamus','Content for Day 2',NULL),(129,22,1,'Day3','nihil-deleniti-voluptatem-rerum','Content for Day 3',NULL),(130,22,1,'Day 4','reprehenderit-repellat-a-modi','Content for Day 4',NULL),(131,22,1,'Day5','non-et-possimus-natus-voluptatem-cupiditate-nulla-inventore','Content for Day 5',NULL),(132,22,1,'Day 6','incidunt-eveniet-cumque-iusto-dolores','Content for Day 6',NULL),(133,23,1,'Day1','mollitia-ipsum-vel-odio-sint','Content for Day 1',NULL),(134,23,1,'Day 2','voluptates-amet-molestiae-ipsum-eligendi-accusamus-optio-vero','Content for Day 2',NULL),(135,23,1,'Day3','laborum-cum-dolores-eos-molestias-ipsam-dolor-consequuntur-ullam','Content for Day 3',NULL),(136,23,1,'Day 4','voluptatem-enim-totam-sed-non-repudiandae','Content for Day 4',NULL),(137,23,1,'Day5','eveniet-quae-hic-incidunt-sunt-cupiditate-voluptatem','Content for Day 5',NULL),(138,23,1,'Day 6','ut-molestias-perspiciatis-sapiente-necessitatibus-dolorum-beatae-ipsa-et','Content for Day 6',NULL),(139,24,1,'Day1','reiciendis-ut-optio-repudiandae-et-praesentium-sed-aut','Content for Day 1',NULL),(140,24,1,'Day 2','autem-reprehenderit-fuga-repudiandae-id-soluta','Content for Day 2',NULL),(141,24,1,'Day3','explicabo-eaque-modi-et-voluptate-officiis-qui','Content for Day 3',NULL),(142,24,1,'Day 4','qui-in-mollitia-architecto-nesciunt-voluptatem-consequatur-velit','Content for Day 4',NULL),(143,24,1,'Day5','unde-ex-ducimus-nulla-fuga-omnis-veritatis-dolore-vitae','Content for Day 5',NULL),(144,24,1,'Day 6','doloremque-odio-asperiores-necessitatibus-similique-laudantium-quo-tempore-voluptas','Content for Day 6',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES (13,'January','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'eum-nobis-impedit-possimus-officia-facilis'),(14,'February','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\r\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\r\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\r\n**turkey** shank eu pork belly meatball non cupim.\r\n\r\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\r\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\r\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\r\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\r\noccaecat lorem meatball prosciutto quis strip steak.\r\n\r\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\r\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\r\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\r\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\r\nfugiat.',1,'candy-hearts-602338062cff4.jpeg','facilis-esse-dolor-molestiae'),(15,'March','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'esse-atque-dolor-quod-et'),(16,'April','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'veniam-quia-eveniet-harum-dolor-est-qui-nostrum'),(17,'May','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'omnis-similique-expedita-eius-eos-amet-rerum'),(18,'June','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'molestias-dolore-odio-earum-et'),(19,'July','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'ut-sequi-suscipit-occaecati-sint-repellat-enim-dicta'),(20,'August','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'voluptas-eos-incidunt-voluptatum-omnis'),(21,'September','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'voluptatem-quia-doloremque-corporis-tempora-debitis'),(22,'October','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'omnis-molestias-aut-aut-quae-optio-nobis'),(23,'November','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'reiciendis-ullam-vitae-voluptatem-incidunt-et-veritatis'),(24,'December','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',0,NULL,'dolores-aut-non-a-praesentium-error-libero');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (17,'spacebar0@example.com','[]','Ward','$2y$13$qELOJH2.6PiNk/nvZj98deWhA2VvgPdFdTaiRuHoG68CZkr9z7qw6','2021-02-10 01:32:51'),(18,'spacebar1@example.com','[]','Norene','$2y$13$QNoPdgQpnKTpln7E5BoFhuMztlcrLTrdMc8tAVZRLZPGxaxeFcata','2021-02-10 01:32:52'),(19,'spacebar2@example.com','[]','Okey','$2y$13$6dRfadWdsrHia8SOcT0lWOmmqbPnrYFvz3aFVvnUE40pi5uTuhsOu','2021-02-10 01:32:52'),(20,'spacebar3@example.com','[]','Margot','$2y$13$6PIoIhip7MKfM/ApJMT8Ee3r9NlEFaTgRAVxi6DRCZy64eIX05Tju','2021-02-10 01:32:52'),(21,'spacebar4@example.com','[]','Clarissa','$2y$13$GFSVOghSy23SDJt0EUY8e.KFAqSqnD0STCBoFyIPXc39/By7GdqP6','2021-02-10 01:32:53'),(22,'spacebar5@example.com','[]','Llewellyn','$2y$13$RYUB4w1RAtLgQIXJgDuJeupn79UK88DKlepbC4e.SaACGni/1djaK','2021-02-10 01:32:53'),(23,'spacebar6@example.com','[]','Loyce','$2y$13$q9xizVclIAxITC4bYyReBOB1bOnTIFG7.ciRz1YwENP2E1ts2sdWO','2021-02-10 01:32:54'),(24,'spacebar7@example.com','[]','Annalise','$2y$13$tTFFVWBIG2qO3GxcpjXbbO.GV34HTK3lrMWsa01Gi186/gOdSOvX6','2021-02-10 01:32:54'),(25,'spacebar8@example.com','[]','Roderick','$2y$13$c8xKOVY9CYsLxgEEitVFjusvExmncSTN51CKSlFjTmJVQjlvopavS','2021-02-10 01:32:55'),(26,'spacebar9@example.com','[]','Santino','$2y$13$wyYaevQow419xZhAiLoCpenEdn614zYbA2JQZKu0qHCvlBpUryoKe','2021-02-10 01:32:55'),(27,'admin0@thespacebar.com','[\"ROLE_ADMIN\"]','Ludie','$2y$13$uATpC53tDSGRsl8fqfyUb.oB05YJJLf9kelQ7wJJOnkICORyTXnXe','2021-02-10 01:32:56'),(28,'admin1@thespacebar.com','[\"ROLE_ADMIN\"]','Ayden','$2y$13$zRbt6mFYL7D42pX5qmrIZOYwyA.RdK.17qqX8gBFVjX64pHBqGTS6','2021-02-10 01:32:56'),(29,'admin2@thespacebar.com','[\"ROLE_ADMIN\"]','Terence','$2y$13$Yoydz2.9zjk2CznH7MZsMuud0lmeprbYjIByvjxeL9lipFRQPXpd.','2021-02-10 01:32:57');
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

-- Dump completed on 2021-02-14 12:33:21
