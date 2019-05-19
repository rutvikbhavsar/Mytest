-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: DNA_Sequence
-- ------------------------------------------------------
-- Server version	5.6.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DS_Algorithm`
--

DROP TABLE IF EXISTS `DS_Algorithm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Algorithm` (
  `algid` varchar(100) NOT NULL,
  `algname` varchar(50) DEFAULT NULL,
  `algcommand` varchar(50) DEFAULT NULL,
  `algpath` varchar(200) DEFAULT NULL,
  `algparatable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`algid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Algorithm`
--

LOCK TABLES `DS_Algorithm` WRITE;
/*!40000 ALTER TABLE `DS_Algorithm` DISABLE KEYS */;
INSERT INTO `DS_Algorithm` VALUES ('8061653e-aa94-42dd-bd43-de939bd6e1d8','silver-clusters-master','python run_all.py','/DNASequenceVerify/WebContent/silver-clusters-master/start','DS_LibsvmParameterCommand');
/*!40000 ALTER TABLE `DS_Algorithm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_Experiments`
--

DROP TABLE IF EXISTS `DS_Experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Experiments` (
  `expid` varchar(100) NOT NULL,
  `algid` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `inputfileid` varchar(1000) DEFAULT NULL,
  `expname` varchar(50) DEFAULT NULL,
  `phase` varchar(50) NOT NULL DEFAULT '1',
  `fn` varchar(100) NOT NULL DEFAULT '1',
  `fp` varchar(100) NOT NULL DEFAULT '1',
  `phaseonefileid` varchar(1000) DEFAULT NULL,
  `phasetwofileid` varchar(1000) DEFAULT NULL,
  `phasethreefileid` varchar(1000) DEFAULT NULL,
  `motifsnumber` varchar(50) NOT NULL DEFAULT '1',
  `featureselection` varchar(50) NOT NULL DEFAULT '1',
  `extrafeature` varchar(50) NOT NULL DEFAULT 'false',
  `maximummotifs` varchar(100) DEFAULT NULL,
  `kfold` varchar(100) DEFAULT NULL,
  `cvalue` varchar(100) DEFAULT NULL,
  `numberofsequences` varchar(100) DEFAULT NULL,
  `desiredclass` varchar(100) DEFAULT NULL,
  `allclasses` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`expid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Experiments`
--

LOCK TABLES `DS_Experiments` WRITE;
/*!40000 ALTER TABLE `DS_Experiments` DISABLE KEYS */;
INSERT INTO `DS_Experiments` VALUES ('b345b64c-fff9-4e12-9301-c75b450143d8','8061653e-aa94-42dd-bd43-de939bd6e1d8','6c33f360-7667-491d-9822-4bef6c8a5513','24d6c310-16a2-4efd-b09e-071f809d0f07','dfghjkl','4','20','20','936455ab-30f6-4e96-a5c9-59b623c2c4bc','8c56c911-c3de-4d67-86a5-9009a42c921e','a7599c35-d90c-45ca-aa69-e81e36d4ace2','50','10','False','117','2','1.0','10','green','vred,green,dark,red');
/*!40000 ALTER TABLE `DS_Experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_Files`
--

DROP TABLE IF EXISTS `DS_Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Files` (
  `fileid` varchar(100) NOT NULL,
  `filename` varchar(80) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Files`
--

LOCK TABLES `DS_Files` WRITE;
/*!40000 ALTER TABLE `DS_Files` DISABLE KEYS */;
INSERT INTO `DS_Files` VALUES ('02457084-ba27-4385-b747-5380b2e33133','motifsSorted_6c33_a916_2018-12-1414-27-25.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_a916_2018-12-1414-27-25.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('049279c1-ea66-4fe6-a8eb-d34c5951240e','6c33_a916_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_a916_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('04bf1ebe-f196-4181-81f2-82148ecf5af0','0b33-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','/Users/maimac/Documents/JavaEEPRO//DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/new_features/','6c33f360-7667-491d-9822-4bef6c8a5513'),('05216215-05ad-4479-81ff-28a66a7d7dcd','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('07832c93-de85-4218-a4e3-de21925045ca','motifsSorted_6c33_94d0_2018-12-0511-51-38.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_94d0_2018-12-0511-51-38.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('0786f91f-54e7-4b67-b8dd-71199e84059b','6c33_820b_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_820b_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('08d2042b-718d-4df1-93dd-071aa7c94b48','6c33_6c87_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_6c87_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('08da91f9-53b3-4f3a-8f00-c6d5e3fa7391','6c33_94d0_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_94d0_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('0d213fda-1a6e-4a23-a36d-be38e8bc18cb','6c33_2c61_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_2c61_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('101e3235-8664-47a1-8b77-14d989d2053c','motifsSorted_6c33_4fd0_2018-12-1011-53-35.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_4fd0_2018-12-1011-53-35.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('110fe5be-b48a-42b1-a32c-6262367f5bb4','motifsSorted_6c33_546a_2018-12-0509-21-24.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_546a_2018-12-0509-21-24.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1154f420-d644-4b6a-9edb-fe7f989728c1','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('143999ec-1919-4265-8446-088df059c88a','motifsSorted_6c33_fd41_2018-12-1012-14-38.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_fd41_2018-12-1012-14-38.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('163432dc-d72d-4989-81cd-1b1e6cdd712c','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('18c722fb-af62-4bec-b19f-f1460cb5e99d','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1af21411-7ec4-4cdc-b01e-b9ebb6826d28','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1b4d66e9-69ee-4b97-ad8e-e905685658e7','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1cddeec3-7bd9-4587-a2bc-58586c0f0590','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1f30c0ad-df56-42dd-b0b7-c59614480a00','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('1f3ad644-21e1-4b44-8ab9-ee182f866642','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('2062165f-11ff-44a3-b74b-18e2a66f9b64','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('20b97cd6-0709-424c-8586-9fc79ff0979b','6c33_4095_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_4095_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('211cfb86-d920-433f-8336-4e1aa4a826da','integrated-intensity.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/integrated-intensity.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('231a0ef8-fad8-4283-9ad2-926ddb290d53','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('24d6c310-16a2-4efd-b09e-071f809d0f07','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('2b933dbc-2ec5-4296-9ae3-631ef11d8792','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('2c0be5a7-8f0c-4c2f-b268-7a516f3d5ef4','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('2c88e373-81d2-4675-9b9b-e7a917fbdab6','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('3197be70-edbe-4778-a8af-fe1c25cdf664','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('36050ae2-6bbd-49e6-990d-59ed01af252e','4095-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','/Users/maimac/Documents/JavaEEPRO//DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/new_features/4095-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('3e93e8f1-3ded-4532-8269-3cb9334b4fbb','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('42059f71-8639-4efe-90c1-2bf9679e5ce8','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('42c9036f-d65f-45c0-a8ac-869e0062f45a','73d8-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','/Users/maimac/Documents/JavaEEPRO//DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/new_features/','6c33f360-7667-491d-9822-4bef6c8a5513'),('44195a30-007a-4f3d-bda5-b7e775cd8465','peak-intensity.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/peak-intensity.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('47e4f54f-16c0-4d7f-8c32-83abad2d2c77','6c33_f789_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_f789_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('4b84f9b4-b084-4095-a369-6576149fccee','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('4ba8d425-eb82-4604-b803-c0cb0224c38e','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('511a321f-1a3a-4c49-9e2b-13c7d8159a39','6c33_7731_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_7731_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('58d37b78-8d8b-4af8-b32c-c4a3a09de615','6c33_2761_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_2761_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('5e6598a8-6f3b-43a3-bf5e-cd0048bf6748','motifsSorted_6c33_118a_2018-12-0512-15-03.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_118a_2018-12-0512-15-03.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('5f660883-e80b-412a-87aa-021498ff35c5','motifsSorted_6c33_f789_2018-12-1314-43-00.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_f789_2018-12-1314-43-00.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('64748282-74a6-41a2-94b7-f6902fac49de','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('64b61fd0-8a17-4edc-8a78-44eca1a6fea2','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('65060670-3b96-4697-a7d9-f7118e2ab1ec','motifsSorted_6c33_338d_2018-12-0422-20-03.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_338d_2018-12-0422-20-03.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('659bec0f-1e2c-4e5b-9620-70f73794eed4','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('6b77af14-861c-4dbb-94ce-8b4f009637c2','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('6c492730-67c3-41ea-af84-d9cc9be3cb9d','motifsSorted_6c33_e671_2018-12-0504-53-37.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_e671_2018-12-0504-53-37.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('6cbc6c1b-662d-4598-a498-c005a6009778','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('765caed6-7921-4185-94c4-b36167ba3a9a','6c33_0b33_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_0b33_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('76b3e8e2-a267-47be-9b35-1c2243311ad8','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('775f31f8-89a5-48bf-ae8c-62dc9fc1fd1a','motifsSorted_6c33_0b33_2018-12-1714-30-19.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_0b33_2018-12-1714-30-19.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('780ca49e-17c4-42c1-9d2c-e9e51b3f4d3c','motifsSorted_6c33_ea25_2018-12-0503-29-55.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_ea25_2018-12-0503-29-55.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('7a30ce48-ef06-4c5e-9b41-186cbdcfb41d','motifsSorted_6c33_4170_2018-12-1011-40-21.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_4170_2018-12-1011-40-21.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('7ff6ed4b-98fe-42a9-8194-b61dbdf76628','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8046dfc1-7b10-4b66-a1ed-fd37e3c48720','6c33_118a_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_118a_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('84d043d8-d50f-4cf5-b34a-3bd416bdf905','6c33_73d8_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_73d8_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8599a5f7-7cf6-4d1e-858b-bc5d2766929d','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('869a49bc-c1b3-46a0-ad93-1c685f3b8a68','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('87444e54-13da-489f-a00c-73594d88e81d','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('897ebca4-4e2a-423a-b758-16f3794d63d4','motifsSorted_6c33_62d4_2018-12-0418-19-56.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_62d4_2018-12-0418-19-56.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('89b89163-4203-4d29-b1df-e4afc4fa2f87','motifsSorted_6c33_7731_2018-12-0512-05-49.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_7731_2018-12-0512-05-49.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8afdbc9a-012c-42e0-bec7-c3e2801c8d23','motifsSorted_6c33_561a_2018-12-1319-05-18.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_561a_2018-12-1319-05-18.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8b4e719e-d2c3-44fd-b1ea-6f9bdb176237','motifsSorted_6c33_820b_2018-12-0503-23-37.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_820b_2018-12-0503-23-37.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8c56c911-c3de-4d67-86a5-9009a42c921e','6c33_b345_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_b345_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8ce94271-3d1c-4de7-ab5b-d64897e007fb','6c33_4fd0_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_4fd0_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8e796d37-6036-4b29-a422-ec9f7e1042f1','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('8efc8493-691f-4a98-a6b9-9f5a1e44a221','motifsSorted_6c33_4095_2018-12-1714-56-15.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_4095_2018-12-1714-56-15.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('903bf56f-9fd2-4bfe-9136-79aadbdbdc08','6c33_ea25_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_ea25_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('936455ab-30f6-4e96-a5c9-59b623c2c4bc','motifsSorted_6c33_b345_2018-12-1715-19-42.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_b345_2018-12-1715-19-42.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('94e8d8d4-666b-4347-8528-abbbdd1dbc79','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('a1d4b775-390b-4254-b111-6cd3e9ab294c','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('a3e5fdfb-7bfe-4702-b104-5cf9d8c6ef09','motifsSorted_6c33_9868_2018-12-0504-43-05.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_9868_2018-12-0504-43-05.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('a710e463-3bc0-44e4-a232-429b224915a6','motifsSorted_6c33_8f66_2018-12-0503-18-01.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_8f66_2018-12-0503-18-01.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('a7599c35-d90c-45ca-aa69-e81e36d4ace2','b345-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','/Users/maimac/Documents/JavaEEPRO//DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/new_features/b345-6c33-integrated-intensity.combinedfeatures-new.PREDICT.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('ac2edb4a-bd32-43c3-a229-cea4781dacf4','6c33_9868_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_9868_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('ac5d3d63-0da7-4aad-bcd0-7a8c006f59cd','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('afa013e0-78f5-4011-8418-eabfa195b6ab','6c33_98ad_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_98ad_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('b0b23592-e75e-4ce7-9413-9854c2adf218','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('b7a03de6-d045-4845-bf89-4ebb4b86c6f0','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('b8fa8a7b-d37a-4b13-980c-3cdf549b9397','6c33_01cc_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_01cc_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('b939231a-13ba-4f56-a8ec-717248d2a95a','6c33_546a_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_546a_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('ba6b73cb-ddc8-4708-8e2b-c75154395149','6c33_b416_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_b416_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('babf5c08-5561-437b-a43c-946f9a8ecbd6','motifsSorted_6c33_d24f_2018-12-0423-22-28.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_d24f_2018-12-0423-22-28.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('bcba8673-5511-4a6d-8e8c-fbc015cd11ae','6c33_8f66_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_8f66_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('bf74f90c-3c91-4da2-91c5-4c62122067bf','motifsSorted_6c33_efad_2018-12-0514-00-01.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_efad_2018-12-0514-00-01.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('c07232e7-02b7-43c7-9a94-2116f185f5b4','motifsSorted_6c33_c8ee_2018-12-1318-20-10.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_c8ee_2018-12-1318-20-10.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('c2985cf1-0de7-4ded-914d-cb61d3d4cd16','motifsSorted_6c33_f8da_2018-12-1315-40-51.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_f8da_2018-12-1315-40-51.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('c29ffbfe-7b28-4e6d-a4ed-599d1a4b0df3','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('c2fc6f37-ee04-4eb6-8f40-f1092e503cc5','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('c3501621-da6a-4f1c-80ea-b2fc2f22e214','motifsSorted_6c33_73d8_2018-12-1714-18-33.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_73d8_2018-12-1714-18-33.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d0b8cc1e-9bc5-4fb4-af10-ec0502d5d1ed','motifsSorted_6c33_6c87_2018-12-0512-33-29.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_6c87_2018-12-0512-33-29.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d20bd779-2522-4bcb-9467-d6364eaf38b0','6c33_62d4_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_62d4_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d2bcee2f-ac2f-4a62-b314-657899638e1b','6c33_fd41_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_fd41_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d44a6102-1418-46a3-acc6-f47c2016728e','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d941a4e4-f7fa-47e1-ba2e-48b6c30a189c','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e020a583-4f1f-4de6-986b-c445cb2c8f9b','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e0647edb-b6ef-4c32-b08b-6e756c2d8a77','6c33_efad_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_efad_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e1edd6a2-2bd2-4087-a6d5-867dc3b740e0','integrated-intensity.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/integrated-intensity.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e36d1249-d232-455a-be4c-94f6c655fb77','motifsSorted_6c33_2761_2018-12-0511-07-21.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_2761_2018-12-0511-07-21.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e5665908-38b6-47b2-9ead-a3223f03d73d','6c33_561a_integrated-intensity.combinedfeatures.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_561a_integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('e5f3cf9c-1f30-4798-a9fc-2e26e1f04a6e','motifsSorted_6c33_98ad_2018-12-0501-38-03.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_98ad_2018-12-0501-38-03.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('ec14aed0-9f44-443a-94e0-8dfd2bfb202f','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('efc61b62-e0a0-41c0-b23b-ce16a59e2f2b','motifsSorted_6c33_2c61_2018-12-0503-37-23.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_2c61_2018-12-0503-37-23.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('f5af3d4e-c661-427b-bd0c-e3e0cdee90b2','motifsSorted_6c33_b416_2018-12-0505-02-28.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_b416_2018-12-0505-02-28.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('f5d5362e-1760-4a4e-85bf-47f2ebb0d49c','6c33_d24f_integrated-intensity.combinedfeaturesnew.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/6c33_d24f_integrated-intensity.combinedfeaturesnew.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('f6650de1-8c66-4e63-aa34-c1610d975719','all_classes.csv','userfile/all_classes.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('fdbaafe9-b74a-49c1-b378-b3a3b85de712','motifsSorted_6c33_01cc_2018-12-0422-49-25.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/DNAproject/project/silvercopy/data/training_data/motifsSorted_6c33_01cc_2018-12-0422-49-25.csv','6c33f360-7667-491d-9822-4bef6c8a5513');
/*!40000 ALTER TABLE `DS_Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_LibsvmParameterValue`
--

DROP TABLE IF EXISTS `DS_LibsvmParameterValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_LibsvmParameterValue` (
  `thresholdhighvalue` varchar(20) DEFAULT NULL,
  `thresholdlowvalue` varchar(20) DEFAULT NULL,
  `thresholdhigh` varchar(10) DEFAULT NULL,
  `thresholdlow` varchar(10) DEFAULT NULL,
  `verbose` varchar(10) DEFAULT NULL,
  `crossvalidtiontest` varchar(10) DEFAULT NULL,
  `generatenewfeatures` varchar(10) DEFAULT NULL,
  `expid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_LibsvmParameterValue`
--

LOCK TABLES `DS_LibsvmParameterValue` WRITE;
/*!40000 ALTER TABLE `DS_LibsvmParameterValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `DS_LibsvmParameterValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_ParameterCommand`
--

DROP TABLE IF EXISTS `DS_ParameterCommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_ParameterCommand` (
  `paraid` varchar(100) NOT NULL,
  `algid` varchar(100) NOT NULL,
  `paraname` varchar(50) NOT NULL,
  `paratype` varchar(10) DEFAULT NULL,
  `paracommand` varchar(10) DEFAULT NULL,
  `statement` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`paraid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_ParameterCommand`
--

LOCK TABLES `DS_ParameterCommand` WRITE;
/*!40000 ALTER TABLE `DS_ParameterCommand` DISABLE KEYS */;
INSERT INTO `DS_ParameterCommand` VALUES ('3317bcaf-7622-475b-ab3e-21d8e2dbb0b3','8061653e-aa94-42dd-bd43-de939bd6e1d8','verbose','select','-v','same as before but with verbose output'),('5797cdf3-a50a-4fa4-877c-4272b4255bc6','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdlowvalue','value',NULL,'below value'),('5de0f471-909e-4df7-9550-f9e28267ee96','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdhigh','select','-th','above value'),('7453c83e-1624-494d-b43b-8fceb4850ce3','8061653e-aa94-42dd-bd43-de939bd6e1d8','crossvalidtiontest','select','-c','perform cross validation test on features from training file and stop'),('8e3c1c62-b4dd-4d7c-9954-017a169216fc','8061653e-aa94-42dd-bd43-de939bd6e1d8','generatenewfeatures','select','-g','also generate new features'),('b5844e3c-86e7-4705-b3d9-99d42e9c8f00','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdlow','select','-tl','Need below value or not'),('cae7bcf6-546c-4819-a4d5-6180f2eba122','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdhighvalue','value',NULL,'Need above value or not');
/*!40000 ALTER TABLE `DS_ParameterCommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_user`
--

DROP TABLE IF EXISTS `DS_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_user` (
  `userid` varchar(100) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isAdmin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_user`
--

LOCK TABLES `DS_user` WRITE;
/*!40000 ALTER TABLE `DS_user` DISABLE KEYS */;
INSERT INTO `DS_user` VALUES ('1d121540-925b-406e-895e-3803498579dc','Micheal','123','43rwefsd@albany.edu','1400 Cold street','417493573',NULL,NULL,'2018-05-17 02:15:28','no'),('6c33f360-7667-491d-9822-4bef6c8a5513','admin','123','hello123@163.com','1400 hello street apt','5185952345','1','2018-04-19 18:36:07','2018-05-17 02:18:51','yes');
/*!40000 ALTER TABLE `DS_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 15:32:36
