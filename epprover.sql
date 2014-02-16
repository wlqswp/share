-- MySQL dump 10.13  Distrib 5.5.25a, for Win64 (x86)
--
-- Host: localhost    Database: epp3
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `acc_accounting_relation`
--

DROP TABLE IF EXISTS `acc_accounting_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_accounting_relation` (
  `id_org` int(11) NOT NULL DEFAULT '0',
  `id_acc_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_acc_user`,`id_org`),
  KEY `FK_mxhlh1cmaaxr8c202yu70e6a0` (`id_org`),
  KEY `FK_gt6anlmn4orrwu8r6mekc6qfk` (`id_acc_user`),
  CONSTRAINT `FK_gt6anlmn4orrwu8r6mekc6qfk` FOREIGN KEY (`id_acc_user`) REFERENCES `acc_user_account` (`id`),
  CONSTRAINT `FK_mxhlh1cmaaxr8c202yu70e6a0` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_accounting_relation`
--

LOCK TABLES `acc_accounting_relation` WRITE;
/*!40000 ALTER TABLE `acc_accounting_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_accounting_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_chart_accounts_entity`
--

DROP TABLE IF EXISTS `acc_chart_accounts_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_chart_accounts_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `name_zh` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `parent_code` varchar(255) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `name_lan_key` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_index` (`code`),
  KEY `FK_p1ty2pnqryftjoww9l04xc5e1` (`id_acc_company`),
  CONSTRAINT `FK_p1ty2pnqryftjoww9l04xc5e1` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_chart_accounts_entity`
--

LOCK TABLES `acc_chart_accounts_entity` WRITE;
/*!40000 ALTER TABLE `acc_chart_accounts_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_chart_accounts_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_chart_accounts_entity_log`
--

DROP TABLE IF EXISTS `acc_chart_accounts_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_chart_accounts_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `name_zh` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `parent_code` varchar(255) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_index` (`code`),
  KEY `FK_8rk9wfernsd9dyd3apgyb9u50` (`id_model`),
  CONSTRAINT `FK_8rk9wfernsd9dyd3apgyb9u50` FOREIGN KEY (`id_model`) REFERENCES `acc_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_chart_accounts_entity_log`
--

LOCK TABLES `acc_chart_accounts_entity_log` WRITE;
/*!40000 ALTER TABLE `acc_chart_accounts_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_chart_accounts_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_chart_accounts_mapping`
--

DROP TABLE IF EXISTS `acc_chart_accounts_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_chart_accounts_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `acc_chart_code` varchar(255) DEFAULT NULL,
  `chart_code` varchar(255) DEFAULT NULL,
  `id_acc_chart` int(11) DEFAULT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  `id_chart` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mh3n88ex7ht0h3w3rjgrqvtqa` (`id_acc_chart`),
  KEY `FK_gfykh492eins40q7qw7rv244v` (`id_acc_company`),
  KEY `FK_9eyotqkdls3rsw4ykfj40tcee` (`id_chart`),
  CONSTRAINT `FK_9eyotqkdls3rsw4ykfj40tcee` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_gfykh492eins40q7qw7rv244v` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`),
  CONSTRAINT `FK_mh3n88ex7ht0h3w3rjgrqvtqa` FOREIGN KEY (`id_acc_chart`) REFERENCES `acc_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_chart_accounts_mapping`
--

LOCK TABLES `acc_chart_accounts_mapping` WRITE;
/*!40000 ALTER TABLE `acc_chart_accounts_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_chart_accounts_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_closure_document_entity`
--

DROP TABLE IF EXISTS `acc_closure_document_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_closure_document_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `id_accounting_document` int(11) DEFAULT NULL,
  `id_history` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_48bjj45v9o3cagfnt4nu5167p` (`id_accounting_document`),
  KEY `FK_m6yiayv5i3p2rl03nqdksj221` (`id_history`),
  CONSTRAINT `FK_m6yiayv5i3p2rl03nqdksj221` FOREIGN KEY (`id_history`) REFERENCES `acc_closure_history_entity` (`id`),
  CONSTRAINT `FK_48bjj45v9o3cagfnt4nu5167p` FOREIGN KEY (`id_accounting_document`) REFERENCES `epp_accounting_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_closure_document_entity`
--

LOCK TABLES `acc_closure_document_entity` WRITE;
/*!40000 ALTER TABLE `acc_closure_document_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_closure_document_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_closure_history_entity`
--

DROP TABLE IF EXISTS `acc_closure_history_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_closure_history_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `id_accountant` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `combine_index` (`id_org`,`year`,`month`),
  KEY `FK_nhem7sy96pswo2t532jmls37w` (`id_accountant`),
  KEY `FK_44hvlmdj9t6qo3ensmre9cqtr` (`id_org`),
  CONSTRAINT `FK_44hvlmdj9t6qo3ensmre9cqtr` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_nhem7sy96pswo2t532jmls37w` FOREIGN KEY (`id_accountant`) REFERENCES `acc_user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_closure_history_entity`
--

LOCK TABLES `acc_closure_history_entity` WRITE;
/*!40000 ALTER TABLE `acc_closure_history_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_closure_history_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_company`
--

DROP TABLE IF EXISTS `acc_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_company`
--

LOCK TABLES `acc_company` WRITE;
/*!40000 ALTER TABLE `acc_company` DISABLE KEYS */;
INSERT INTO `acc_company` VALUES (1,NULL,0,NULL,'CN','CNY','会计公司',NULL);
/*!40000 ALTER TABLE `acc_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_document_taxpayable_entity`
--

DROP TABLE IF EXISTS `acc_document_taxpayable_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_document_taxpayable_entity` (
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_accountant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gcyygt8yrvwuakysixnqle8lj` (`id_accountant`),
  KEY `FK_mia0291rw6yfrxhqw02at8ix8` (`id`),
  CONSTRAINT `FK_mia0291rw6yfrxhqw02at8ix8` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_gcyygt8yrvwuakysixnqle8lj` FOREIGN KEY (`id_accountant`) REFERENCES `acc_user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_document_taxpayable_entity`
--

LOCK TABLES `acc_document_taxpayable_entity` WRITE;
/*!40000 ALTER TABLE `acc_document_taxpayable_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_document_taxpayable_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_document_taxpayable_row_entity`
--

DROP TABLE IF EXISTS `acc_document_taxpayable_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_document_taxpayable_row_entity` (
  `rowIndex` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_tax_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3t1odlp7ycdykfvk65gfmy7ky` (`id_department`),
  KEY `FK_i6k39p12ie5p8ej4dbhjtwtug` (`id_project`),
  KEY `FK_oos8iqeaj02irb48fiks0qh6v` (`id_tax_code`),
  KEY `FK_6285yy50rabw6km966qmds6st` (`id`),
  CONSTRAINT `FK_6285yy50rabw6km966qmds6st` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_3t1odlp7ycdykfvk65gfmy7ky` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_i6k39p12ie5p8ej4dbhjtwtug` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_oos8iqeaj02irb48fiks0qh6v` FOREIGN KEY (`id_tax_code`) REFERENCES `epp_tax_code_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_document_taxpayable_row_entity`
--

LOCK TABLES `acc_document_taxpayable_row_entity` WRITE;
/*!40000 ALTER TABLE `acc_document_taxpayable_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_document_taxpayable_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_exchange_rate`
--

DROP TABLE IF EXISTS `acc_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `code_from` char(3) DEFAULT NULL,
  `code_to` char(3) DEFAULT NULL,
  `month` int(11) NOT NULL,
  `rate_end` decimal(18,9) DEFAULT NULL,
  `rate_start` decimal(18,9) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_v6vd5wcvomy3jwub94x7sna3` (`id_acc_company`),
  CONSTRAINT `FK_v6vd5wcvomy3jwub94x7sna3` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_exchange_rate`
--

LOCK TABLES `acc_exchange_rate` WRITE;
/*!40000 ALTER TABLE `acc_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_exchange_rate_log`
--

DROP TABLE IF EXISTS `acc_exchange_rate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_exchange_rate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `code_from` char(3) DEFAULT NULL,
  `code_to` char(3) DEFAULT NULL,
  `month` int(11) NOT NULL,
  `rate_end` decimal(18,9) DEFAULT NULL,
  `rate_start` decimal(18,9) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t08edu6xt6wk39ocic80tn67n` (`id_model`),
  CONSTRAINT `FK_t08edu6xt6wk39ocic80tn67n` FOREIGN KEY (`id_model`) REFERENCES `acc_exchange_rate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_exchange_rate_log`
--

LOCK TABLES `acc_exchange_rate_log` WRITE;
/*!40000 ALTER TABLE `acc_exchange_rate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_exchange_rate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_journal_entry`
--

DROP TABLE IF EXISTS `acc_journal_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_journal_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `credit_code` varchar(255) DEFAULT NULL,
  `debit_code` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_code_index` (`credit_code`),
  KEY `debit_code_index` (`debit_code`),
  KEY `FK_1nrpneiydidqgc353b9dqjt5i` (`id_acc_company`),
  CONSTRAINT `FK_1nrpneiydidqgc353b9dqjt5i` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_journal_entry`
--

LOCK TABLES `acc_journal_entry` WRITE;
/*!40000 ALTER TABLE `acc_journal_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_journal_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_journal_entry_log`
--

DROP TABLE IF EXISTS `acc_journal_entry_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_journal_entry_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `credit_code` varchar(255) DEFAULT NULL,
  `debit_code` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_code_index` (`credit_code`),
  KEY `debit_code_index` (`debit_code`),
  KEY `FK_l8okqw8bm21cwmxtf96w6rn3d` (`id_model`),
  CONSTRAINT `FK_l8okqw8bm21cwmxtf96w6rn3d` FOREIGN KEY (`id_model`) REFERENCES `acc_journal_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_journal_entry_log`
--

LOCK TABLES `acc_journal_entry_log` WRITE;
/*!40000 ALTER TABLE `acc_journal_entry_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_journal_entry_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_tax_code`
--

DROP TABLE IF EXISTS `acc_tax_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_tax_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_lan_key` varchar(255) DEFAULT NULL,
  `percent` decimal(18,9) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_da2cetvcp7l8cn5h6hepmwwx3` (`id_acc_company`),
  CONSTRAINT `FK_da2cetvcp7l8cn5h6hepmwwx3` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_tax_code`
--

LOCK TABLES `acc_tax_code` WRITE;
/*!40000 ALTER TABLE `acc_tax_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_tax_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_tax_code_log`
--

DROP TABLE IF EXISTS `acc_tax_code_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_tax_code_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_lan_key` varchar(255) DEFAULT NULL,
  `percent` decimal(18,9) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hwajcpfpmxxw0d2ajbk2pgykj` (`id_model`),
  CONSTRAINT `FK_hwajcpfpmxxw0d2ajbk2pgykj` FOREIGN KEY (`id_model`) REFERENCES `acc_tax_code` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_tax_code_log`
--

LOCK TABLES `acc_tax_code_log` WRITE;
/*!40000 ALTER TABLE `acc_tax_code_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_tax_code_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_user_account`
--

DROP TABLE IF EXISTS `acc_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `activate` tinyint(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `working_id` varchar(255) DEFAULT NULL,
  `ui_language` char(5) DEFAULT NULL,
  `id_acc_company` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lojtkfh1lq5dcm3oxqq2w2ufi` (`id_acc_company`),
  CONSTRAINT `FK_lojtkfh1lq5dcm3oxqq2w2ufi` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_user_account`
--

LOCK TABLES `acc_user_account` WRITE;
/*!40000 ALTER TABLE `acc_user_account` DISABLE KEYS */;
INSERT INTO `acc_user_account` VALUES (1,NULL,0,1,NULL,NULL,'test@email.com','会计管理员','c4ca4238a0b923820dcc509a6f75849b',NULL,NULL,'zh_CN',1);
/*!40000 ALTER TABLE `acc_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_user_account_log`
--

DROP TABLE IF EXISTS `acc_user_account_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_user_account_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  `assignedOrgNames` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `working_id` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6yrahvq3hiyakyf7iu2392kdl` (`id_model`),
  CONSTRAINT `FK_6yrahvq3hiyakyf7iu2392kdl` FOREIGN KEY (`id_model`) REFERENCES `acc_user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_user_account_log`
--

LOCK TABLES `acc_user_account_log` WRITE;
/*!40000 ALTER TABLE `acc_user_account_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_user_account_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_accounting_document_entity`
--

DROP TABLE IF EXISTS `epp_accounting_document_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_accounting_document_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `accunting_month` int(11) DEFAULT NULL,
  `accunting_year` int(11) DEFAULT NULL,
  `is_close` tinyint(1) DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_submitter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_creattime_close_index` (`id_org`,`accunting_year`,`accunting_month`,`create_time`,`is_close`),
  KEY `FK_6vhwfvubvv3h5cp64u1fcep0q` (`id_document`),
  KEY `FK_118kq5qo3hpmwp8vypterfgo7` (`id_org`),
  KEY `FK_e5bigrfenm37cqywyg1q7u5is` (`id_submitter`),
  CONSTRAINT `FK_e5bigrfenm37cqywyg1q7u5is` FOREIGN KEY (`id_submitter`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_118kq5qo3hpmwp8vypterfgo7` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_6vhwfvubvv3h5cp64u1fcep0q` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_accounting_document_entity`
--

LOCK TABLES `epp_accounting_document_entity` WRITE;
/*!40000 ALTER TABLE `epp_accounting_document_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_accounting_document_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_address_entity`
--

DROP TABLE IF EXISTS `epp_address_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_address_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1inrg00nkfr6a8onbs53opxw4` (`id_org`),
  CONSTRAINT `FK_1inrg00nkfr6a8onbs53opxw4` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_address_entity`
--

LOCK TABLES `epp_address_entity` WRITE;
/*!40000 ALTER TABLE `epp_address_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_address_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_bank_cash_account_entity`
--

DROP TABLE IF EXISTS `epp_bank_cash_account_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_bank_cash_account_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `bank_account_type` varchar(255) DEFAULT NULL,
  `bank_branch_address` varchar(255) DEFAULT NULL,
  `bank_branch_name` varchar(255) DEFAULT NULL,
  `bank_contact_info` varchar(255) DEFAULT NULL,
  `bank_contact_person` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `current_amount` decimal(18,3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `start_amount` decimal(18,3) DEFAULT '0.000',
  `type` int(11) DEFAULT '0',
  `id_chart` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_17gocsrnwxd9lhyrkq0i8o40u` (`id_chart`),
  KEY `FK_s4fbqv88y8hp41vghp8l2pe68` (`id_org`),
  CONSTRAINT `FK_s4fbqv88y8hp41vghp8l2pe68` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_17gocsrnwxd9lhyrkq0i8o40u` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_bank_cash_account_entity`
--

LOCK TABLES `epp_bank_cash_account_entity` WRITE;
/*!40000 ALTER TABLE `epp_bank_cash_account_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_bank_cash_account_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_bank_cash_account_entity_log`
--

DROP TABLE IF EXISTS `epp_bank_cash_account_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_bank_cash_account_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `bank_account_type` varchar(255) DEFAULT NULL,
  `bank_branch_address` varchar(255) DEFAULT NULL,
  `bank_branch_name` varchar(255) DEFAULT NULL,
  `bank_contact_info` varchar(255) DEFAULT NULL,
  `bank_contact_person` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `current_amount` decimal(18,3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `start_amount` decimal(18,3) DEFAULT '0.000',
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4ai4hqh923bmcikhfrpoyci0o` (`id_model`),
  CONSTRAINT `FK_4ai4hqh923bmcikhfrpoyci0o` FOREIGN KEY (`id_model`) REFERENCES `epp_bank_cash_account_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_bank_cash_account_entity_log`
--

LOCK TABLES `epp_bank_cash_account_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_bank_cash_account_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_bank_cash_account_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_bank_cash_account_status_entity`
--

DROP TABLE IF EXISTS `epp_bank_cash_account_status_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_bank_cash_account_status_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `current_value` double DEFAULT NULL,
  `end_value` double DEFAULT NULL,
  `month` int(11) NOT NULL,
  `start_value` double DEFAULT NULL,
  `year` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e6uafnopi0gjtaii6viiyqm8b` (`id_account`),
  CONSTRAINT `FK_e6uafnopi0gjtaii6viiyqm8b` FOREIGN KEY (`id_account`) REFERENCES `epp_bank_cash_account_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_bank_cash_account_status_entity`
--

LOCK TABLES `epp_bank_cash_account_status_entity` WRITE;
/*!40000 ALTER TABLE `epp_bank_cash_account_status_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_bank_cash_account_status_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_customer_entity`
--

DROP TABLE IF EXISTS `epp_customer_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_customer_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2rgcrqxleb28ow6gpkwf5xvyf` (`id_org`),
  CONSTRAINT `FK_2rgcrqxleb28ow6gpkwf5xvyf` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_customer_entity`
--

LOCK TABLES `epp_customer_entity` WRITE;
/*!40000 ALTER TABLE `epp_customer_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_customer_entity_log`
--

DROP TABLE IF EXISTS `epp_customer_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_customer_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lx38w7a89r8im79x58iqx5osl` (`id_model`),
  CONSTRAINT `FK_lx38w7a89r8im79x58iqx5osl` FOREIGN KEY (`id_model`) REFERENCES `epp_customer_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_customer_entity_log`
--

LOCK TABLES `epp_customer_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_customer_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_customer_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_department_entity`
--

DROP TABLE IF EXISTS `epp_department_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_department_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fmu5njb854xf0i4l2ou08hva` (`id_category`),
  KEY `FK_hdp56pluioe36cr41tfr53dev` (`id_org`),
  KEY `FK_7xptsb4twu50t049xm5ap7eph` (`id_parent`),
  CONSTRAINT `FK_7xptsb4twu50t049xm5ap7eph` FOREIGN KEY (`id_parent`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_fmu5njb854xf0i4l2ou08hva` FOREIGN KEY (`id_category`) REFERENCES `sys_category_department_entity` (`id`),
  CONSTRAINT `FK_hdp56pluioe36cr41tfr53dev` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_department_entity`
--

LOCK TABLES `epp_department_entity` WRITE;
/*!40000 ALTER TABLE `epp_department_entity` DISABLE KEYS */;
INSERT INTO `epp_department_entity` VALUES (1,NULL,0,'6602','管理部',3,1,NULL),(2,NULL,0,'6601','销售部',2,1,NULL),(3,NULL,0,'6401','工程部',1,1,NULL);
/*!40000 ALTER TABLE `epp_department_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_department_entity_log`
--

DROP TABLE IF EXISTS `epp_department_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_department_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kgci190b58vktlp28wofqx2b8` (`id_model`),
  KEY `FK_dp4917dmfjsuaot1rqmg84017` (`id_category`),
  CONSTRAINT `FK_dp4917dmfjsuaot1rqmg84017` FOREIGN KEY (`id_category`) REFERENCES `sys_category_department_entity` (`id`),
  CONSTRAINT `FK_kgci190b58vktlp28wofqx2b8` FOREIGN KEY (`id_model`) REFERENCES `epp_department_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_department_entity_log`
--

LOCK TABLES `epp_department_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_department_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_department_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_advance_entity`
--

DROP TABLE IF EXISTS `epp_document_advance_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_advance_entity` (
  `apply_date` datetime NOT NULL,
  `used_by_other_doc` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f6uvtrg1okacoiqdaa1gcwcux` (`id_project`),
  KEY `FK_hgnyq62bmpt5152rxxweucmd2` (`id`),
  CONSTRAINT `FK_hgnyq62bmpt5152rxxweucmd2` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_f6uvtrg1okacoiqdaa1gcwcux` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_advance_entity`
--

LOCK TABLES `epp_document_advance_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_advance_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_advance_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_advance_row_entity`
--

DROP TABLE IF EXISTS `epp_document_advance_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_advance_row_entity` (
  `date_payment` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mypnh7oy2xdr1sc5iyxwmol3m` (`id`),
  CONSTRAINT `FK_mypnh7oy2xdr1sc5iyxwmol3m` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_advance_row_entity`
--

LOCK TABLES `epp_document_advance_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_advance_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_advance_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_attachment_entity`
--

DROP TABLE IF EXISTS `epp_document_attachment_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_attachment_entity` (
  `id` varchar(255) NOT NULL,
  `content` mediumblob,
  `contentType` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `note` varchar(3000) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7qjinmrwimpp3ye6hwchgumi3` (`id_document`),
  KEY `FK_pa5l2cvqdwd0jy3lqr8tt2yid` (`id_employee`),
  CONSTRAINT `FK_pa5l2cvqdwd0jy3lqr8tt2yid` FOREIGN KEY (`id_employee`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_7qjinmrwimpp3ye6hwchgumi3` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_attachment_entity`
--

LOCK TABLES `epp_document_attachment_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_attachment_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_attachment_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_entity`
--

DROP TABLE IF EXISTS `epp_document_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `is_moneydone` tinyint(1) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `is_voucherdone` tinyint(1) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rftqio1jw95x5u6kqixalnmx1` (`id_org`),
  KEY `FK_2jri6etf7fo8c5kascmxqecg9` (`id_owner`),
  CONSTRAINT `FK_2jri6etf7fo8c5kascmxqecg9` FOREIGN KEY (`id_owner`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_rftqio1jw95x5u6kqixalnmx1` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_entity`
--

LOCK TABLES `epp_document_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_expenditure_entity`
--

DROP TABLE IF EXISTS `epp_document_expenditure_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_expenditure_entity` (
  `dueDate` datetime NOT NULL,
  `invoiceDate` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tcl9lx53n2rwm7pv7b20mjslp` (`id_project`),
  KEY `FK_obgkla8n4aryq5r3obqgb7qbc` (`id_supplier`),
  KEY `FK_8arr91v96g7o6gloajfdf419j` (`id`),
  CONSTRAINT `FK_8arr91v96g7o6gloajfdf419j` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_obgkla8n4aryq5r3obqgb7qbc` FOREIGN KEY (`id_supplier`) REFERENCES `epp_supplier_entity` (`id`),
  CONSTRAINT `FK_tcl9lx53n2rwm7pv7b20mjslp` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_expenditure_entity`
--

LOCK TABLES `epp_document_expenditure_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_expenditure_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_expenditure_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_expenditure_row_entity`
--

DROP TABLE IF EXISTS `epp_document_expenditure_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_expenditure_row_entity` (
  `category_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_chart_l1` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_chart_l2` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g9eappvaqf6pk88x41xy21kx3` (`id_chart_l1`),
  KEY `FK_cs7trkojnea18h10sty1r3fte` (`id_department`),
  KEY `FK_oi2bdjktn6w2kggm7rh7itq4r` (`id_chart_l2`),
  KEY `FK_qixp5ciepbbqy98d8p29wk96x` (`id_project`),
  KEY `FK_hdsj180rd3bk5ftptdhyt9b7j` (`id`),
  CONSTRAINT `FK_hdsj180rd3bk5ftptdhyt9b7j` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_cs7trkojnea18h10sty1r3fte` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_g9eappvaqf6pk88x41xy21kx3` FOREIGN KEY (`id_chart_l1`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_oi2bdjktn6w2kggm7rh7itq4r` FOREIGN KEY (`id_chart_l2`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_qixp5ciepbbqy98d8p29wk96x` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_expenditure_row_entity`
--

LOCK TABLES `epp_document_expenditure_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_expenditure_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_expenditure_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_invoice_entity`
--

DROP TABLE IF EXISTS `epp_document_invoice_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_invoice_entity` (
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwah1dcm6jep0uaxom5qiysub` (`id_project`),
  KEY `FK_u08s7ngj8kiuyqebp6ovtavp` (`id`),
  CONSTRAINT `FK_u08s7ngj8kiuyqebp6ovtavp` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_iwah1dcm6jep0uaxom5qiysub` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_invoice_entity`
--

LOCK TABLES `epp_document_invoice_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_invoice_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_invoice_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_invoice_row_entity`
--

DROP TABLE IF EXISTS `epp_document_invoice_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_invoice_row_entity` (
  `id` int(11) NOT NULL,
  `id_chart_l2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qqwfn8tu21tk5hgl335o2lqqt` (`id_chart_l2`),
  KEY `FK_dbppgcfqchhmo4xop9jo1plo5` (`id`),
  CONSTRAINT `FK_dbppgcfqchhmo4xop9jo1plo5` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_qqwfn8tu21tk5hgl335o2lqqt` FOREIGN KEY (`id_chart_l2`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_invoice_row_entity`
--

LOCK TABLES `epp_document_invoice_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_invoice_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_invoice_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_journal_row_entity`
--

DROP TABLE IF EXISTS `epp_document_journal_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_journal_row_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `currency_amount` decimal(18,3) DEFAULT '0.000',
  `chart_code1` varchar(255) DEFAULT NULL,
  `chart_code2` varchar(255) DEFAULT NULL,
  `chart_code3` varchar(255) DEFAULT NULL,
  `chartLevel` int(11) NOT NULL,
  `chart_code` varchar(255) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `inputByCashier` tinyint(1) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `voucher_code` varchar(50) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_chart` int(11) DEFAULT NULL,
  `id_chart1` int(11) NOT NULL,
  `id_chart2` int(11) DEFAULT NULL,
  `id_chart3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_inputByCashier_sysChartAccounts1_index` (`id_org`,`inputByCashier`,`id_chart1`),
  KEY `org_inputByCashier_sysChartAccounts_paymentdate_index` (`id_org`,`inputByCashier`,`id_chart`,`payment_date`),
  KEY `FK_k3jjg59jns43bmokp50x86lj1` (`id_department`),
  KEY `FK_1d2fbuaji5x95hm1v7qmb59vc` (`id_document`),
  KEY `FK_c336e885wfcdx7tgxxhf21vsl` (`id_org`),
  KEY `FK_662es4gdgr8j4cx2klhnenxi8` (`id_project`),
  KEY `FK_2rdi1w7o1t3vvrgrkoxtt722v` (`id_chart`),
  KEY `FK_jjbx16lc1iqmkhdalmpuc42o4` (`id_chart1`),
  KEY `FK_qoewjmcr28xd0axe8xbq8nce2` (`id_chart2`),
  KEY `FK_o0f6ty8csfn2ju96hd40ti4ds` (`id_chart3`),
  CONSTRAINT `FK_o0f6ty8csfn2ju96hd40ti4ds` FOREIGN KEY (`id_chart3`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_1d2fbuaji5x95hm1v7qmb59vc` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_2rdi1w7o1t3vvrgrkoxtt722v` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_662es4gdgr8j4cx2klhnenxi8` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_c336e885wfcdx7tgxxhf21vsl` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_jjbx16lc1iqmkhdalmpuc42o4` FOREIGN KEY (`id_chart1`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_k3jjg59jns43bmokp50x86lj1` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_qoewjmcr28xd0axe8xbq8nce2` FOREIGN KEY (`id_chart2`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_journal_row_entity`
--

LOCK TABLES `epp_document_journal_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_journal_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_journal_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_other_entity`
--

DROP TABLE IF EXISTS `epp_document_other_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_other_entity` (
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jtd3ppdsgl2pctqdkkwhqoqbj` (`id_project`),
  KEY `FK_4cjtvl583ufjk42fr5waefk4n` (`id`),
  CONSTRAINT `FK_4cjtvl583ufjk42fr5waefk4n` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_jtd3ppdsgl2pctqdkkwhqoqbj` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_other_entity`
--

LOCK TABLES `epp_document_other_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_other_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_other_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_other_row_entity`
--

DROP TABLE IF EXISTS `epp_document_other_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_other_row_entity` (
  `category_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_chart_l1` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_chart_l2` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_q9u35gp9ip6wnamwekh6st51e` (`id_chart_l1`),
  KEY `FK_9x8c1585hryoc5es0yq4d5vdk` (`id_department`),
  KEY `FK_hrrdqtba9gt6dd3d636gp0vqo` (`id_chart_l2`),
  KEY `FK_7ssickcwfex4liqm6edkawsda` (`id_project`),
  KEY `FK_o7kb5x56b3g7r31vggq914daa` (`id`),
  CONSTRAINT `FK_o7kb5x56b3g7r31vggq914daa` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_7ssickcwfex4liqm6edkawsda` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_9x8c1585hryoc5es0yq4d5vdk` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_hrrdqtba9gt6dd3d636gp0vqo` FOREIGN KEY (`id_chart_l2`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_q9u35gp9ip6wnamwekh6st51e` FOREIGN KEY (`id_chart_l1`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_other_row_entity`
--

LOCK TABLES `epp_document_other_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_other_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_other_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_row_entity`
--

DROP TABLE IF EXISTS `epp_document_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_row_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `gross_amount` decimal(18,3) DEFAULT '0.000',
  `net_amount` decimal(18,3) DEFAULT '0.000',
  `row_no` int(11) DEFAULT '0',
  `tax_percent` decimal(18,3) DEFAULT '0.000',
  `id_document` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `row_num_index` (`row_no`),
  KEY `FK_i9ixtcp07lrew2ko8vktw2ywg` (`id_document`),
  CONSTRAINT `FK_i9ixtcp07lrew2ko8vktw2ywg` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_row_entity`
--

LOCK TABLES `epp_document_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_salary_entity`
--

DROP TABLE IF EXISTS `epp_document_salary_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_salary_entity` (
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3o7ca8j30eu0cku6hc8dcdq1f` (`id`),
  CONSTRAINT `FK_3o7ca8j30eu0cku6hc8dcdq1f` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_salary_entity`
--

LOCK TABLES `epp_document_salary_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_salary_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_salary_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_salary_row_entity`
--

DROP TABLE IF EXISTS `epp_document_salary_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_salary_row_entity` (
  `id` int(11) NOT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_salarytype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_affrbovptcwo1kyahrtpdiexx` (`id_department`),
  KEY `FK_ihif1053nhbthybuxotouf58o` (`id_project`),
  KEY `FK_5k3fqhj1esdq6qngqapa1ye71` (`id_salarytype`),
  KEY `FK_s4rt5t6uhpkjkmljychw4i8g8` (`id`),
  CONSTRAINT `FK_s4rt5t6uhpkjkmljychw4i8g8` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_5k3fqhj1esdq6qngqapa1ye71` FOREIGN KEY (`id_salarytype`) REFERENCES `sys_salary_type` (`id`),
  CONSTRAINT `FK_affrbovptcwo1kyahrtpdiexx` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_ihif1053nhbthybuxotouf58o` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_salary_row_entity`
--

LOCK TABLES `epp_document_salary_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_salary_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_salary_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_transfer_entity`
--

DROP TABLE IF EXISTS `epp_document_transfer_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_transfer_entity` (
  `apply_date` datetime DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `dest_amount` double DEFAULT NULL,
  `dest_currency` varchar(255) DEFAULT NULL,
  `source_amount` double DEFAULT NULL,
  `source_currency` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_transfer_dest` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_transfer_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applydate_index` (`apply_date`),
  KEY `FK_mk5by0tchbst3odp44g7jfysj` (`id_department`),
  KEY `FK_2d79ldi65h4if13jd7il1q5mh` (`id_transfer_dest`),
  KEY `FK_ktugxnqdqd9q6oh0fjy520klj` (`id_project`),
  KEY `FK_41plh2j98f2f0ttf71wjq5edg` (`id_transfer_source`),
  KEY `FK_g25y3vcaivcqnviri7nn7tg0d` (`id`),
  CONSTRAINT `FK_g25y3vcaivcqnviri7nn7tg0d` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_2d79ldi65h4if13jd7il1q5mh` FOREIGN KEY (`id_transfer_dest`) REFERENCES `epp_bank_cash_account_entity` (`id`),
  CONSTRAINT `FK_41plh2j98f2f0ttf71wjq5edg` FOREIGN KEY (`id_transfer_source`) REFERENCES `epp_bank_cash_account_entity` (`id`),
  CONSTRAINT `FK_ktugxnqdqd9q6oh0fjy520klj` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_mk5by0tchbst3odp44g7jfysj` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_transfer_entity`
--

LOCK TABLES `epp_document_transfer_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_transfer_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_transfer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_transfer_row_entity`
--

DROP TABLE IF EXISTS `epp_document_transfer_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_transfer_row_entity` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b38otfnb6gm57py6ayn2llq6u` (`id`),
  CONSTRAINT `FK_b38otfnb6gm57py6ayn2llq6u` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_transfer_row_entity`
--

LOCK TABLES `epp_document_transfer_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_transfer_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_transfer_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_travel_entity`
--

DROP TABLE IF EXISTS `epp_document_travel_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_travel_entity` (
  `advance_doc_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pj0ly71p1rx15ase32behgfne` (`id_project`),
  KEY `FK_673canknb79j3j2po2tkinqvs` (`id`),
  CONSTRAINT `FK_673canknb79j3j2po2tkinqvs` FOREIGN KEY (`id`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_pj0ly71p1rx15ase32behgfne` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_travel_entity`
--

LOCK TABLES `epp_document_travel_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_travel_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_travel_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_document_travel_row_entity`
--

DROP TABLE IF EXISTS `epp_document_travel_row_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_document_travel_row_entity` (
  `advancePaidAmount` double DEFAULT NULL,
  `advancePaidSysChartAccountId` int(11) NOT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `travel_row_type` varchar(255) DEFAULT NULL,
  `travelPeriod` double DEFAULT NULL,
  `id` int(11) NOT NULL,
  `grant_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hnro7bvonvuuukqoag6b8395` (`grant_type`),
  KEY `FK_oy2tei3wsftu8790mc0h4o7t1` (`id`),
  CONSTRAINT `FK_oy2tei3wsftu8790mc0h4o7t1` FOREIGN KEY (`id`) REFERENCES `epp_document_row_entity` (`id`),
  CONSTRAINT `FK_hnro7bvonvuuukqoag6b8395` FOREIGN KEY (`grant_type`) REFERENCES `epp_travel_grant_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_document_travel_row_entity`
--

LOCK TABLES `epp_document_travel_row_entity` WRITE;
/*!40000 ALTER TABLE `epp_document_travel_row_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_document_travel_row_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_employee_entity`
--

DROP TABLE IF EXISTS `epp_employee_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_employee_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `is_accountant_proxy` tinyint(1) DEFAULT NULL,
  `activate` tinyint(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `working_id` varchar(255) DEFAULT NULL,
  `ui_language` char(5) DEFAULT NULL,
  `org_department` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3lprkyulhiirgh3oqku97e3xu` (`org_department`),
  KEY `FK_nu7q67nj8sg2fkj4l4kkt2bwa` (`id_org`),
  CONSTRAINT `FK_nu7q67nj8sg2fkj4l4kkt2bwa` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_3lprkyulhiirgh3oqku97e3xu` FOREIGN KEY (`org_department`) REFERENCES `epp_department_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_employee_entity`
--

LOCK TABLES `epp_employee_entity` WRITE;
/*!40000 ALTER TABLE `epp_employee_entity` DISABLE KEYS */;
INSERT INTO `epp_employee_entity` VALUES (1,NULL,0,0,1,NULL,NULL,'customer@email.com','公司主管理员','c4ca4238a0b923820dcc509a6f75849b',NULL,'E001','zh_CN',1,1),(2,NULL,0,1,0,NULL,NULL,'proxy@email.com','proxy','c4ca4238a0b923820dcc509a6f75849b',NULL,NULL,'zh_CN',1,1);
/*!40000 ALTER TABLE `epp_employee_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_employee_entity_log`
--

DROP TABLE IF EXISTS `epp_employee_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_employee_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `working_id` varchar(255) DEFAULT NULL,
  `modularString` varchar(255) DEFAULT NULL,
  `roleString` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `assigner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hlxh2g09qxmpfcfbp3x6st7oy` (`id_model`),
  KEY `FK_8x2uryock1banagxldb5ds31t` (`assigner_id`),
  CONSTRAINT `FK_8x2uryock1banagxldb5ds31t` FOREIGN KEY (`assigner_id`) REFERENCES `acc_user_account` (`id`),
  CONSTRAINT `FK_hlxh2g09qxmpfcfbp3x6st7oy` FOREIGN KEY (`id_model`) REFERENCES `epp_employee_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_employee_entity_log`
--

LOCK TABLES `epp_employee_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_employee_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_employee_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_employee_modular_relation`
--

DROP TABLE IF EXISTS `epp_employee_modular_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_employee_modular_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `modular` varchar(255) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kdclo30vqmw6fqkmks50e81ul` (`id_employee`),
  CONSTRAINT `FK_kdclo30vqmw6fqkmks50e81ul` FOREIGN KEY (`id_employee`) REFERENCES `epp_employee_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_employee_modular_relation`
--

LOCK TABLES `epp_employee_modular_relation` WRITE;
/*!40000 ALTER TABLE `epp_employee_modular_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_employee_modular_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_journal_entry_entity`
--

DROP TABLE IF EXISTS `epp_journal_entry_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_journal_entry_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `comment_log` varchar(1000) DEFAULT NULL,
  `currency_amount` decimal(18,3) DEFAULT '0.000',
  `chat_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `id_accountingDocument` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_chart` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_report_info` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c8bg4cn20qsp96he7ye8o1pfr` (`id_accountingDocument`),
  KEY `FK_sv28t5h6tehw1agkoocje1v0h` (`id_document`),
  KEY `FK_agvvfveaikcgy31x2fu35ysy8` (`id_chart`),
  KEY `FK_9vp9l2l8uvr0a5s33tqtty1wx` (`id_org`),
  KEY `FK_sd4v0oul3vnx02181j80s7pma` (`id_report_info`),
  CONSTRAINT `FK_sd4v0oul3vnx02181j80s7pma` FOREIGN KEY (`id_report_info`) REFERENCES `epp_journal_entry_reportinfo_entity` (`id`),
  CONSTRAINT `FK_9vp9l2l8uvr0a5s33tqtty1wx` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_agvvfveaikcgy31x2fu35ysy8` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_c8bg4cn20qsp96he7ye8o1pfr` FOREIGN KEY (`id_accountingDocument`) REFERENCES `epp_accounting_document_entity` (`id`),
  CONSTRAINT `FK_sv28t5h6tehw1agkoocje1v0h` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_journal_entry_entity`
--

LOCK TABLES `epp_journal_entry_entity` WRITE;
/*!40000 ALTER TABLE `epp_journal_entry_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_journal_entry_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_journal_entry_entity_log`
--

DROP TABLE IF EXISTS `epp_journal_entry_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_journal_entry_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `currency_amount` decimal(18,3) DEFAULT '0.000',
  `chat_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_chart` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3212xsg6l1y5xdufqyhl1onwf` (`id_model`),
  KEY `FK_eq0duwohxb4t7i174jjc6ifm6` (`id_document`),
  KEY `FK_mkluw5iel6nbhby74tp1plrno` (`id_chart`),
  CONSTRAINT `FK_mkluw5iel6nbhby74tp1plrno` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`),
  CONSTRAINT `FK_3212xsg6l1y5xdufqyhl1onwf` FOREIGN KEY (`id_model`) REFERENCES `epp_journal_entry_entity` (`id`),
  CONSTRAINT `FK_eq0duwohxb4t7i174jjc6ifm6` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_journal_entry_entity_log`
--

LOCK TABLES `epp_journal_entry_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_journal_entry_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_journal_entry_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_journal_entry_reportinfo_entity`
--

DROP TABLE IF EXISTS `epp_journal_entry_reportinfo_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_journal_entry_reportinfo_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `exchange_rate` double DEFAULT NULL,
  `local_amount` double DEFAULT NULL,
  `localCurrency` varchar(255) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f8b77a0147n7tsn46a3gewas5` (`id_department`),
  KEY `FK_grpuxp8kh285fy2lxl2hvmp4w` (`id_project`),
  CONSTRAINT `FK_grpuxp8kh285fy2lxl2hvmp4w` FOREIGN KEY (`id_project`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_f8b77a0147n7tsn46a3gewas5` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_journal_entry_reportinfo_entity`
--

LOCK TABLES `epp_journal_entry_reportinfo_entity` WRITE;
/*!40000 ALTER TABLE `epp_journal_entry_reportinfo_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_journal_entry_reportinfo_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_organization_entity`
--

DROP TABLE IF EXISTS `epp_organization_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_organization_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `country_code` char(2) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_acc_company` int(11) DEFAULT NULL,
  `id_contact_person` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_huo8ckb39c58030ue0hd546j6` (`id_acc_company`),
  KEY `FK_sxma2q6427jmjgwv8kaab4bmy` (`id_contact_person`),
  CONSTRAINT `FK_sxma2q6427jmjgwv8kaab4bmy` FOREIGN KEY (`id_contact_person`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_huo8ckb39c58030ue0hd546j6` FOREIGN KEY (`id_acc_company`) REFERENCES `acc_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_organization_entity`
--

LOCK TABLES `epp_organization_entity` WRITE;
/*!40000 ALTER TABLE `epp_organization_entity` DISABLE KEYS */;
INSERT INTO `epp_organization_entity` VALUES (1,NULL,0,'CN','CNY','客户公司',1,1);
/*!40000 ALTER TABLE `epp_organization_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_organization_entity_log`
--

DROP TABLE IF EXISTS `epp_organization_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_organization_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  `assignedAccountantNames` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `working_id` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `assigner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_v7i2py83gjihlc748fcheu5d` (`id_model`),
  KEY `FK_81201wdh2b9h17hyesjelayk8` (`assigner_id`),
  CONSTRAINT `FK_81201wdh2b9h17hyesjelayk8` FOREIGN KEY (`assigner_id`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_v7i2py83gjihlc748fcheu5d` FOREIGN KEY (`id_model`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_organization_entity_log`
--

LOCK TABLES `epp_organization_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_organization_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_organization_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_process_entity`
--

DROP TABLE IF EXISTS `epp_process_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_process_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `is_approved_once` tinyint(1) DEFAULT '0',
  `modular_key` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `submit_acc_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `id_accountantsubmittask` int(11) DEFAULT NULL,
  `id_creator` int(11) DEFAULT NULL,
  `id_curtask` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_proctime` int(11) DEFAULT NULL,
  `id_statetask` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ig7dnn2im2jo1982fgd5fpk03` (`id_proctime`),
  KEY `state_index` (`state`),
  KEY `update_date_index` (`update_date`),
  KEY `creator_updatedate_index` (`id_creator`,`update_date`),
  KEY `orgid_submitToAccDate_index` (`id_org`,`submit_acc_date`),
  KEY `FK_gjit17huw0r7vh7l7c67l9jmk` (`id_accountantsubmittask`),
  KEY `FK_rh6652sm9qhvd7hui89uf8o1y` (`id_creator`),
  KEY `FK_8lbkokfhxrlsd4and3eerpcuw` (`id_curtask`),
  KEY `FK_77uvdgc8bko8lqujc18wnb3nw` (`id_document`),
  KEY `FK_hp74a3hyclaxkqkjqiwst0y4d` (`id_org`),
  KEY `FK_ig7dnn2im2jo1982fgd5fpk03` (`id_proctime`),
  KEY `FK_mlsxvo40cttrv4hiu7clbvkeu` (`id_statetask`),
  CONSTRAINT `FK_mlsxvo40cttrv4hiu7clbvkeu` FOREIGN KEY (`id_statetask`) REFERENCES `epp_process_task_entity` (`id`),
  CONSTRAINT `FK_77uvdgc8bko8lqujc18wnb3nw` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_8lbkokfhxrlsd4and3eerpcuw` FOREIGN KEY (`id_curtask`) REFERENCES `epp_process_task_entity` (`id`),
  CONSTRAINT `FK_gjit17huw0r7vh7l7c67l9jmk` FOREIGN KEY (`id_accountantsubmittask`) REFERENCES `epp_process_task_entity` (`id`),
  CONSTRAINT `FK_hp74a3hyclaxkqkjqiwst0y4d` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_ig7dnn2im2jo1982fgd5fpk03` FOREIGN KEY (`id_proctime`) REFERENCES `epp_process_time_entity` (`id`),
  CONSTRAINT `FK_rh6652sm9qhvd7hui89uf8o1y` FOREIGN KEY (`id_creator`) REFERENCES `epp_employee_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_process_entity`
--

LOCK TABLES `epp_process_entity` WRITE;
/*!40000 ALTER TABLE `epp_process_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_process_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_process_task_entity`
--

DROP TABLE IF EXISTS `epp_process_task_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_process_task_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `action_date` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `id_owner_accountant` int(11) DEFAULT NULL,
  `id_owner_employee` int(11) DEFAULT NULL,
  `id_prevTask` int(11) DEFAULT NULL,
  `id_process` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cyvfq2y1bodlvn28gimvqgvif` (`id_owner_accountant`),
  KEY `FK_345uj2mno9jths9ws7n2wk01v` (`id_owner_employee`),
  KEY `FK_ngn6rva5yp6p75o4pr08xiool` (`id_prevTask`),
  KEY `FK_m64v5nwh4xhb3l1um72o9621u` (`id_process`),
  CONSTRAINT `FK_m64v5nwh4xhb3l1um72o9621u` FOREIGN KEY (`id_process`) REFERENCES `epp_process_entity` (`id`),
  CONSTRAINT `FK_345uj2mno9jths9ws7n2wk01v` FOREIGN KEY (`id_owner_employee`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_cyvfq2y1bodlvn28gimvqgvif` FOREIGN KEY (`id_owner_accountant`) REFERENCES `acc_user_account` (`id`),
  CONSTRAINT `FK_ngn6rva5yp6p75o4pr08xiool` FOREIGN KEY (`id_prevTask`) REFERENCES `epp_process_task_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_process_task_entity`
--

LOCK TABLES `epp_process_task_entity` WRITE;
/*!40000 ALTER TABLE `epp_process_task_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_process_task_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_process_time_entity`
--

DROP TABLE IF EXISTS `epp_process_time_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_process_time_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `documentSubmitTime` datetime DEFAULT NULL,
  `timeSubmitToAccountant` datetime DEFAULT NULL,
  `timeSubmitToCashier` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_process_time_entity`
--

LOCK TABLES `epp_process_time_entity` WRITE;
/*!40000 ALTER TABLE `epp_process_time_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_process_time_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_project_entity`
--

DROP TABLE IF EXISTS `epp_project_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_project_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `contract_amount` decimal(18,3) DEFAULT '0.000',
  `currency_code` char(3) DEFAULT NULL,
  `include_vat` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `id_creator` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3jm8ggu0dcha9agbuy0guk8rn` (`id_creator`),
  KEY `FK_7xk8epoaorbq7fs7yq3ws9i45` (`customer`),
  KEY `FK_9gwrkh4heg3w2c3ke0g1kgatm` (`id_department`),
  KEY `FK_mjc50seuoixy3936qyepoqmx7` (`id_org`),
  CONSTRAINT `FK_mjc50seuoixy3936qyepoqmx7` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_3jm8ggu0dcha9agbuy0guk8rn` FOREIGN KEY (`id_creator`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_7xk8epoaorbq7fs7yq3ws9i45` FOREIGN KEY (`customer`) REFERENCES `epp_customer_entity` (`id`),
  CONSTRAINT `FK_9gwrkh4heg3w2c3ke0g1kgatm` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_project_entity`
--

LOCK TABLES `epp_project_entity` WRITE;
/*!40000 ALTER TABLE `epp_project_entity` DISABLE KEYS */;
INSERT INTO `epp_project_entity` VALUES (1,'2013-12-01 00:00:00',0,'P001',0.000,NULL,NULL,'项目1号',NULL,'2013-12-01',1,NULL,1,1);
/*!40000 ALTER TABLE `epp_project_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_project_entity_log`
--

DROP TABLE IF EXISTS `epp_project_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_project_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `contract_amount` decimal(18,3) DEFAULT '0.000',
  `currency_code` char(3) DEFAULT NULL,
  `include_vat` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5rgkq9yfggga6s60shvwltlx2` (`id_model`),
  KEY `FK_k7gipa1a84f0672rl51n8jxt2` (`customer`),
  KEY `FK_79gbpvewwlxjt3i8iin75hlu3` (`id_department`),
  CONSTRAINT `FK_79gbpvewwlxjt3i8iin75hlu3` FOREIGN KEY (`id_department`) REFERENCES `epp_department_entity` (`id`),
  CONSTRAINT `FK_5rgkq9yfggga6s60shvwltlx2` FOREIGN KEY (`id_model`) REFERENCES `epp_project_entity` (`id`),
  CONSTRAINT `FK_k7gipa1a84f0672rl51n8jxt2` FOREIGN KEY (`customer`) REFERENCES `epp_customer_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_project_entity_log`
--

LOCK TABLES `epp_project_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_project_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_project_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_receiptcode_bookkeeper_entity`
--

DROP TABLE IF EXISTS `epp_receiptcode_bookkeeper_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_receiptcode_bookkeeper_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `autoincrement` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `document_type` int(11) DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `all_index` (`document_type`,`id_org`,`year`,`month`,`day`),
  KEY `FK_cfkajads46t8qidhlnk31yfui` (`id_org`),
  CONSTRAINT `FK_cfkajads46t8qidhlnk31yfui` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_receiptcode_bookkeeper_entity`
--

LOCK TABLES `epp_receiptcode_bookkeeper_entity` WRITE;
/*!40000 ALTER TABLE `epp_receiptcode_bookkeeper_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_receiptcode_bookkeeper_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_supplier_entity`
--

DROP TABLE IF EXISTS `epp_supplier_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_supplier_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `bank_account_info` varchar(255) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_creator` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_crjr0xtdgc0fl0njf0u6obgkp` (`id_creator`),
  KEY `FK_4xkeajelhekmwhv2nbxjolg8w` (`id_org`),
  CONSTRAINT `FK_4xkeajelhekmwhv2nbxjolg8w` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_crjr0xtdgc0fl0njf0u6obgkp` FOREIGN KEY (`id_creator`) REFERENCES `epp_employee_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_supplier_entity`
--

LOCK TABLES `epp_supplier_entity` WRITE;
/*!40000 ALTER TABLE `epp_supplier_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_supplier_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_supplier_entity_log`
--

DROP TABLE IF EXISTS `epp_supplier_entity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_supplier_entity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `type_operation` varchar(255) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `name_operator` varchar(255) DEFAULT NULL,
  `type_operator` varchar(255) DEFAULT NULL,
  `bank_account_info` varchar(255) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_io7oihrnhk0ojjb03gqu6v8ye` (`id_model`),
  CONSTRAINT `FK_io7oihrnhk0ojjb03gqu6v8ye` FOREIGN KEY (`id_model`) REFERENCES `epp_supplier_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_supplier_entity_log`
--

LOCK TABLES `epp_supplier_entity_log` WRITE;
/*!40000 ALTER TABLE `epp_supplier_entity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_supplier_entity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_tax_code_entity`
--

DROP TABLE IF EXISTS `epp_tax_code_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_tax_code_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_lan_key` varchar(255) DEFAULT NULL,
  `percent` decimal(18,9) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_md8dyyjvymmnl3yclyke8pktw` (`id_org`),
  CONSTRAINT `FK_md8dyyjvymmnl3yclyke8pktw` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_tax_code_entity`
--

LOCK TABLES `epp_tax_code_entity` WRITE;
/*!40000 ALTER TABLE `epp_tax_code_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_tax_code_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epp_travel_grant_entry`
--

DROP TABLE IF EXISTS `epp_travel_grant_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epp_travel_grant_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `daily_allowance` decimal(18,3) DEFAULT '0.000',
  `description` varchar(300) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g6c1dxsa41hokyb1a02jsttux` (`id_org`),
  CONSTRAINT `FK_g6c1dxsa41hokyb1a02jsttux` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epp_travel_grant_entry`
--

LOCK TABLES `epp_travel_grant_entry` WRITE;
/*!40000 ALTER TABLE `epp_travel_grant_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `epp_travel_grant_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_request_data_entity`
--

DROP TABLE IF EXISTS `password_request_data_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_request_data_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_request_date` datetime DEFAULT NULL,
  `id_accountant` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h7evu6tc6n3poiwgvuxp1bcqn` (`id_accountant`),
  KEY `FK_t7wbmlcgch7k5goguvsqbb4xc` (`id_employee`),
  CONSTRAINT `FK_t7wbmlcgch7k5goguvsqbb4xc` FOREIGN KEY (`id_employee`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_h7evu6tc6n3poiwgvuxp1bcqn` FOREIGN KEY (`id_accountant`) REFERENCES `acc_user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_request_data_entity`
--

LOCK TABLES `password_request_data_entity` WRITE;
/*!40000 ALTER TABLE `password_request_data_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_request_data_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_accounts_payable_entity`
--

DROP TABLE IF EXISTS `report_accounts_payable_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_accounts_payable_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `department_project_info` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hb14hbdjr2px7sj6snosvd3q1` (`id_document`),
  CONSTRAINT `FK_hb14hbdjr2px7sj6snosvd3q1` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_accounts_payable_entity`
--

LOCK TABLES `report_accounts_payable_entity` WRITE;
/*!40000 ALTER TABLE `report_accounts_payable_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_accounts_payable_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_bank_cash_account_money_log`
--

DROP TABLE IF EXISTS `sys_bank_cash_account_money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_bank_cash_account_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `amount` double NOT NULL,
  `cashierId` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_row` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hcyoe0jnt4m7dqlb0kvohbum` (`id_account`),
  KEY `FK_eauxits82xfnxymdv9lldhs5x` (`id_org`),
  KEY `FK_c55ediv31s36olsggo63017oq` (`id_row`),
  CONSTRAINT `FK_c55ediv31s36olsggo63017oq` FOREIGN KEY (`id_row`) REFERENCES `epp_document_journal_row_entity` (`id`),
  CONSTRAINT `FK_eauxits82xfnxymdv9lldhs5x` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_hcyoe0jnt4m7dqlb0kvohbum` FOREIGN KEY (`id_account`) REFERENCES `epp_bank_cash_account_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_bank_cash_account_money_log`
--

LOCK TABLES `sys_bank_cash_account_money_log` WRITE;
/*!40000 ALTER TABLE `sys_bank_cash_account_money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_bank_cash_account_money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_department_entity`
--

DROP TABLE IF EXISTS `sys_category_department_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_department_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `chart_code` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_lan_key` varchar(255) DEFAULT NULL,
  `id_chart` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cislcs0xlyuappodkt4qn2g8o` (`id_chart`),
  CONSTRAINT `FK_cislcs0xlyuappodkt4qn2g8o` FOREIGN KEY (`id_chart`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_department_entity`
--

LOCK TABLES `sys_category_department_entity` WRITE;
/*!40000 ALTER TABLE `sys_category_department_entity` DISABLE KEYS */;
INSERT INTO `sys_category_department_entity` VALUES (1,'2014-02-16 19:09:51',0,1,'6401','主营业务','department_category_1',156),(2,'2014-02-16 19:09:51',0,1,'6601','销售','department_category_2',168),(3,'2014-02-16 19:09:51',0,1,'6602','管理','department_category_3',169);
/*!40000 ALTER TABLE `sys_category_department_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_chart_accounts_entity`
--

DROP TABLE IF EXISTS `sys_chart_accounts_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_chart_accounts_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `account_category` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `chart_level` int(11) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `fullname_en` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `parent_code` varchar(32) DEFAULT NULL,
  `sep_str` varchar(4) DEFAULT NULL,
  `dc_type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chart_code_index` (`code`),
  KEY `FK_ifbpjtdrdbmt9i8rdcmw9to8l` (`id_org`),
  KEY `FK_jgw3b6o0exydje5kgbvnk404c` (`id_parent`),
  CONSTRAINT `FK_ifbpjtdrdbmt9i8rdcmw9to8l` FOREIGN KEY (`id_org`) REFERENCES `epp_organization_entity` (`id`),
  CONSTRAINT `FK_jgw3b6o0exydje5kgbvnk404c` FOREIGN KEY (`id_parent`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_chart_accounts_entity`
--

LOCK TABLES `sys_chart_accounts_entity` WRITE;
/*!40000 ALTER TABLE `sys_chart_accounts_entity` DISABLE KEYS */;
INSERT INTO `sys_chart_accounts_entity` VALUES (1,'2014-02-16 19:09:50',0,1,1,1,'1001',NULL,'现金',NULL,'现金',NULL,NULL,'-',1,NULL,NULL,NULL),(2,'2014-02-16 19:09:50',0,1,1,1,'1002',NULL,'银行存款',NULL,'银行存款',NULL,NULL,'-',1,NULL,NULL,NULL),(3,'2014-02-16 19:09:50',1,1,1,1,'1003',NULL,'存放中央银行款项',NULL,'存放中央银行款项',NULL,NULL,'-',0,NULL,NULL,NULL),(4,'2014-02-16 19:09:50',1,1,1,1,'1011',NULL,'存放同业',NULL,'存放同业',NULL,NULL,'-',0,NULL,NULL,NULL),(5,'2014-02-16 19:09:50',1,1,1,1,'1012',NULL,'其它货币资金',NULL,'其它货币资金',NULL,NULL,'-',1,NULL,NULL,NULL),(6,'2014-02-16 19:09:50',1,1,1,1,'1015',NULL,'其它货币基金',NULL,'其它货币基金',NULL,NULL,'-',0,NULL,NULL,NULL),(7,'2014-02-16 19:09:50',1,1,1,1,'1021',NULL,'结算备付金',NULL,'结算备付金',NULL,NULL,'-',0,NULL,NULL,NULL),(8,'2014-02-16 19:09:50',1,1,1,1,'1031',NULL,'存出保证金',NULL,'存出保证金',NULL,NULL,'-',0,NULL,NULL,NULL),(9,'2014-02-16 19:09:50',1,1,1,1,'1051',NULL,'拆出资金',NULL,'拆出资金',NULL,NULL,'-',0,NULL,NULL,NULL),(10,'2014-02-16 19:09:50',1,1,1,1,'1101',NULL,'交易性金融资产',NULL,'交易性金融资产',NULL,NULL,'-',1,NULL,NULL,NULL),(11,'2014-02-16 19:09:50',1,1,1,1,'1111',NULL,'买入返售金融资产',NULL,'买入返售金融资产',NULL,NULL,'-',0,NULL,NULL,NULL),(12,'2014-02-16 19:09:50',1,1,1,1,'1121',NULL,'应收票据',NULL,'应收票据',NULL,NULL,'-',1,NULL,NULL,NULL),(13,'2014-02-16 19:09:50',1,1,1,1,'1122',NULL,'应收帐款',NULL,'应收帐款',NULL,NULL,'-',1,NULL,NULL,NULL),(14,'2014-02-16 19:09:50',1,1,1,1,'1123',NULL,'预付帐款',NULL,'预付帐款',NULL,NULL,'-',1,NULL,NULL,NULL),(15,'2014-02-16 19:09:50',1,1,1,1,'1131',NULL,'应收股利',NULL,'应收股利',NULL,NULL,'-',1,NULL,NULL,NULL),(16,'2014-02-16 19:09:50',1,1,1,1,'1132',NULL,'应收利息',NULL,'应收利息',NULL,NULL,'-',1,NULL,NULL,NULL),(17,'2014-02-16 19:09:50',1,1,1,1,'1201',NULL,'应收代位追偿款',NULL,'应收代位追偿款',NULL,NULL,'-',0,NULL,NULL,NULL),(18,'2014-02-16 19:09:50',1,1,1,1,'1211',NULL,'应收保护储金',NULL,'应收保护储金',NULL,NULL,'-',0,NULL,NULL,NULL),(19,'2014-02-16 19:09:50',1,1,1,1,'1212',NULL,'应收分保账款',NULL,'应收分保账款',NULL,NULL,'-',0,NULL,NULL,NULL),(20,'2014-02-16 19:09:50',1,1,1,1,'1213',NULL,'应收分保合同准备金',NULL,'应收分保合同准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(21,'2014-02-16 19:09:50',1,1,1,1,'1214',NULL,'应收分保未到期责任准备金',NULL,'应收分保未到期责任准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(22,'2014-02-16 19:09:50',1,1,1,1,'1215',NULL,'应收分保保险责任准备金',NULL,'应收分保保险责任准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(23,'2014-02-16 19:09:50',1,1,1,1,'1221',NULL,'其它应收款',NULL,'其它应收款',NULL,NULL,'-',1,NULL,NULL,NULL),(24,'2014-02-16 19:09:50',1,1,1,1,'1231',NULL,'坏帐准备',NULL,'坏帐准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(25,'2014-02-16 19:09:50',1,1,1,1,'1241',NULL,'未完工劳务成本',NULL,'未完工劳务成本',NULL,NULL,'-',0,NULL,NULL,NULL),(26,'2014-02-16 19:09:50',1,1,1,1,'1251',NULL,'待摊费用',NULL,'待摊费用',NULL,NULL,'-',0,NULL,NULL,NULL),(27,'2014-02-16 19:09:50',1,1,1,1,'1301',NULL,'贴现资产',NULL,'贴现资产',NULL,NULL,'-',0,NULL,NULL,NULL),(28,'2014-02-16 19:09:50',1,1,1,1,'1302',NULL,'拆出资金',NULL,'拆出资金',NULL,NULL,'-',0,NULL,NULL,NULL),(29,'2014-02-16 19:09:50',1,1,1,1,'1303',NULL,'贷款',NULL,'贷款',NULL,NULL,'-',0,NULL,NULL,NULL),(30,'2014-02-16 19:09:50',1,1,1,1,'1304',NULL,'贷款损失准备',NULL,'贷款损失准备',NULL,NULL,'-',0,NULL,NULL,NULL),(31,'2014-02-16 19:09:50',1,1,1,1,'1311',NULL,'代理兑付证券',NULL,'代理兑付证券',NULL,NULL,'-',0,NULL,NULL,NULL),(32,'2014-02-16 19:09:50',1,1,1,1,'1321',NULL,'代理业务资产',NULL,'代理业务资产',NULL,NULL,'-',0,NULL,NULL,NULL),(33,'2014-02-16 19:09:50',1,1,1,1,'1322',NULL,'受托代销商品',NULL,'受托代销商品',NULL,NULL,'-',1,NULL,NULL,NULL),(34,'2014-02-16 19:09:50',1,1,1,1,'1401',NULL,'材料采购',NULL,'材料采购',NULL,NULL,'-',1,NULL,NULL,NULL),(35,'2014-02-16 19:09:50',1,1,1,1,'1402',NULL,'在途物资',NULL,'在途物资',NULL,NULL,'-',1,NULL,NULL,NULL),(36,'2014-02-16 19:09:50',1,1,1,1,'1403',NULL,'原材料',NULL,'原材料',NULL,NULL,'-',1,NULL,NULL,NULL),(37,'2014-02-16 19:09:50',1,1,1,1,'1404',NULL,'材料成本差异',NULL,'材料成本差异',NULL,NULL,'-',1,NULL,NULL,NULL),(38,'2014-02-16 19:09:50',1,1,1,1,'1405',NULL,'库存商品',NULL,'库存商品',NULL,NULL,'-',1,NULL,NULL,NULL),(39,'2014-02-16 19:09:50',1,1,1,1,'1406',NULL,'发出商品',NULL,'发出商品',NULL,NULL,'-',1,NULL,NULL,NULL),(40,'2014-02-16 19:09:50',1,1,1,1,'1407',NULL,'商品进销差价',NULL,'商品进销差价',NULL,NULL,'-',-1,NULL,NULL,NULL),(41,'2014-02-16 19:09:50',1,1,1,1,'1408',NULL,'委托加工物资',NULL,'委托加工物资',NULL,NULL,'-',1,NULL,NULL,NULL),(42,'2014-02-16 19:09:50',1,1,1,1,'1411',NULL,'周转材料',NULL,'周转材料',NULL,NULL,'-',1,NULL,NULL,NULL),(43,'2014-02-16 19:09:50',1,1,1,1,'1412',NULL,'包装物及低值易耗品',NULL,'包装物及低值易耗品',NULL,NULL,'-',0,NULL,NULL,NULL),(44,'2014-02-16 19:09:50',1,1,1,1,'1421',NULL,'消耗性生物资产',NULL,'消耗性生物资产',NULL,NULL,'-',0,NULL,NULL,NULL),(45,'2014-02-16 19:09:50',1,1,1,1,'1431',NULL,'贵金属',NULL,'贵金属',NULL,NULL,'-',0,NULL,NULL,NULL),(46,'2014-02-16 19:09:50',1,1,1,1,'1441',NULL,'抵债资产',NULL,'抵债资产',NULL,NULL,'-',0,NULL,NULL,NULL),(47,'2014-02-16 19:09:50',1,1,1,1,'1451',NULL,'损余物资',NULL,'损余物资',NULL,NULL,'-',0,NULL,NULL,NULL),(48,'2014-02-16 19:09:50',1,1,1,1,'1461',NULL,'融资租赁资产',NULL,'融资租赁资产',NULL,NULL,'-',0,NULL,NULL,NULL),(49,'2014-02-16 19:09:50',1,1,1,1,'1471',NULL,'存货跌价准备',NULL,'存货跌价准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(50,'2014-02-16 19:09:50',1,1,1,1,'1501',NULL,'持有至到期投资',NULL,'持有至到期投资',NULL,NULL,'-',1,NULL,NULL,NULL),(51,'2014-02-16 19:09:50',1,1,1,1,'1502',NULL,'持有至到期投资减值准备',NULL,'持有至到期投资减值准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(52,'2014-02-16 19:09:50',1,1,1,1,'1503',NULL,'可供出售金融资产',NULL,'可供出售金融资产',NULL,NULL,'-',1,NULL,NULL,NULL),(53,'2014-02-16 19:09:50',1,1,1,1,'1504',NULL,'长期债券投资',NULL,'长期债券投资',NULL,NULL,'-',0,NULL,NULL,NULL),(54,'2014-02-16 19:09:50',1,1,1,1,'1505',NULL,'长期债券投资减值准备',NULL,'长期债券投资减值准备',NULL,NULL,'-',0,NULL,NULL,NULL),(55,'2014-02-16 19:09:50',1,1,1,1,'1511',NULL,'长期股权投资',NULL,'长期股权投资',NULL,NULL,'-',1,NULL,NULL,NULL),(56,'2014-02-16 19:09:50',1,1,1,1,'1512',NULL,'长期股权投资减值准备',NULL,'长期股权投资减值准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(57,'2014-02-16 19:09:50',1,1,1,1,'1521',NULL,'投资性房地产',NULL,'投资性房地产',NULL,NULL,'-',1,NULL,NULL,NULL),(58,'2014-02-16 19:09:50',1,1,1,1,'1531',NULL,'长期应收款',NULL,'长期应收款',NULL,NULL,'-',1,NULL,NULL,NULL),(59,'2014-02-16 19:09:50',1,1,1,1,'1532',NULL,'未实现融资收益',NULL,'未实现融资收益',NULL,NULL,'-',1,NULL,NULL,NULL),(60,'2014-02-16 19:09:50',1,1,1,1,'1541',NULL,'存出资本保证金',NULL,'存出资本保证金',NULL,NULL,'-',0,NULL,NULL,NULL),(61,'2014-02-16 19:09:50',1,1,1,1,'1551',NULL,'存出资本保证金',NULL,'存出资本保证金',NULL,NULL,'-',0,NULL,NULL,NULL),(62,'2014-02-16 19:09:50',1,1,1,1,'1601',NULL,'固定资产',NULL,'固定资产',NULL,NULL,'-',1,NULL,NULL,NULL),(63,'2014-02-16 19:09:50',1,1,1,1,'1602',NULL,'累计折旧',NULL,'累计折旧',NULL,NULL,'-',-1,NULL,NULL,NULL),(64,'2014-02-16 19:09:50',1,1,1,1,'1603',NULL,'固定资产减值准备',NULL,'固定资产减值准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(65,'2014-02-16 19:09:50',1,1,1,1,'1604',NULL,'在建工程',NULL,'在建工程',NULL,NULL,'-',1,NULL,NULL,NULL),(66,'2014-02-16 19:09:50',1,1,1,1,'1605',NULL,'工程物资',NULL,'工程物资',NULL,NULL,'-',1,NULL,NULL,NULL),(67,'2014-02-16 19:09:50',1,1,1,1,'1606',NULL,'固定资产清理',NULL,'固定资产清理',NULL,NULL,'-',1,NULL,NULL,NULL),(68,'2014-02-16 19:09:50',1,1,1,1,'1611',NULL,'融资租赁资产',NULL,'融资租赁资产',NULL,NULL,'-',0,NULL,NULL,NULL),(69,'2014-02-16 19:09:50',1,1,1,1,'1612',NULL,'未担保余值',NULL,'未担保余值',NULL,NULL,'-',0,NULL,NULL,NULL),(70,'2014-02-16 19:09:50',1,1,1,1,'1621',NULL,'生产性生物资产',NULL,'生产性生物资产',NULL,NULL,'-',0,NULL,NULL,NULL),(71,'2014-02-16 19:09:50',1,1,1,1,'1622',NULL,'生产性生物资产累计折旧',NULL,'生产性生物资产累计折旧',NULL,NULL,'-',0,NULL,NULL,NULL),(72,'2014-02-16 19:09:50',1,1,1,1,'1623',NULL,'公益性生物资产',NULL,'公益性生物资产',NULL,NULL,'-',0,NULL,NULL,NULL),(73,'2014-02-16 19:09:50',1,1,1,1,'1631',NULL,'油气资产',NULL,'油气资产',NULL,NULL,'-',0,NULL,NULL,NULL),(74,'2014-02-16 19:09:50',1,1,1,1,'1632',NULL,'累计折耗',NULL,'累计折耗',NULL,NULL,'-',0,NULL,NULL,NULL),(75,'2014-02-16 19:09:50',1,1,1,1,'1701',NULL,'无形资产',NULL,'无形资产',NULL,NULL,'-',1,NULL,NULL,NULL),(76,'2014-02-16 19:09:50',1,1,1,1,'1702',NULL,'累计摊销',NULL,'累计摊销',NULL,NULL,'-',-1,NULL,NULL,NULL),(77,'2014-02-16 19:09:50',1,1,1,1,'1703',NULL,'无形资产减值准备',NULL,'无形资产减值准备',NULL,NULL,'-',-1,NULL,NULL,NULL),(78,'2014-02-16 19:09:50',1,1,1,1,'1711',NULL,'商誉',NULL,'商誉',NULL,NULL,'-',1,NULL,NULL,NULL),(79,'2014-02-16 19:09:50',1,1,1,1,'1801',NULL,'长期待摊费用',NULL,'长期待摊费用',NULL,NULL,'-',1,NULL,NULL,NULL),(80,'2014-02-16 19:09:50',1,1,1,1,'1811',NULL,'递延所得税资产',NULL,'递延所得税资产',NULL,NULL,'-',1,NULL,NULL,NULL),(81,'2014-02-16 19:09:50',1,1,1,1,'1821',NULL,'独立账户资产',NULL,'独立账户资产',NULL,NULL,'-',0,NULL,NULL,NULL),(82,'2014-02-16 19:09:50',1,1,1,1,'1901',NULL,'待处理财产损溢',NULL,'待处理财产损溢',NULL,NULL,'-',1,NULL,NULL,NULL),(83,'2014-02-16 19:09:50',1,2,1,1,'2001',NULL,'短期借款',NULL,'短期借款',NULL,NULL,'-',-1,NULL,NULL,NULL),(84,'2014-02-16 19:09:50',1,2,1,1,'2002',NULL,'存入保证金',NULL,'存入保证金',NULL,NULL,'-',-1,NULL,NULL,NULL),(85,'2014-02-16 19:09:50',1,2,1,1,'2003',NULL,'拆入资金',NULL,'拆入资金',NULL,NULL,'-',-1,NULL,NULL,NULL),(86,'2014-02-16 19:09:50',1,2,1,1,'2004',NULL,'向中央银行借款',NULL,'向中央银行借款',NULL,NULL,'-',-1,NULL,NULL,NULL),(87,'2014-02-16 19:09:50',1,2,1,1,'2011',NULL,'同业存放',NULL,'同业存放',NULL,NULL,'-',-1,NULL,NULL,NULL),(88,'2014-02-16 19:09:50',1,2,1,1,'2012',NULL,'吸收存款',NULL,'吸收存款',NULL,NULL,'-',-1,NULL,NULL,NULL),(89,'2014-02-16 19:09:50',1,2,1,1,'2021',NULL,'贴现负债',NULL,'贴现负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(90,'2014-02-16 19:09:50',1,2,1,1,'2101',NULL,'交易性金融负债',NULL,'交易性金融负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(91,'2014-02-16 19:09:50',1,2,1,1,'2111',NULL,'专出回购金融资产款',NULL,'专出回购金融资产款',NULL,NULL,'-',-1,NULL,NULL,NULL),(92,'2014-02-16 19:09:50',1,2,1,1,'2201',NULL,'应付票据',NULL,'应付票据',NULL,NULL,'-',-1,NULL,NULL,NULL),(93,'2014-02-16 19:09:50',1,2,1,1,'2202',NULL,'应付帐款',NULL,'应付帐款',NULL,NULL,'-',-1,NULL,NULL,NULL),(94,'2014-02-16 19:09:50',1,2,1,1,'2205',NULL,'预收帐款',NULL,'预收帐款',NULL,NULL,'-',-1,NULL,NULL,NULL),(95,'2014-02-16 19:09:50',1,2,1,1,'2211',NULL,'应付职工薪酬',NULL,'应付职工薪酬',NULL,NULL,'-',-1,NULL,NULL,NULL),(96,'2014-02-16 19:09:50',1,2,1,1,'2221',NULL,'应交税费',NULL,'应交税费',NULL,NULL,'-',-1,NULL,NULL,NULL),(97,'2014-02-16 19:09:50',1,2,1,1,'2231',NULL,'应付股利',NULL,'应付股利',NULL,NULL,'-',-1,NULL,NULL,NULL),(98,'2014-02-16 19:09:50',1,2,1,1,'2232',NULL,'应付利息',NULL,'应付利息',NULL,NULL,'-',-1,NULL,NULL,NULL),(99,'2014-02-16 19:09:50',1,2,1,1,'2241',NULL,'其它应付款',NULL,'其它应付款',NULL,NULL,'-',-1,NULL,NULL,NULL),(100,'2014-02-16 19:09:50',1,2,1,1,'2251',NULL,'应付保户红利',NULL,'应付保户红利',NULL,NULL,'-',-1,NULL,NULL,NULL),(101,'2014-02-16 19:09:50',1,2,1,1,'2261',NULL,'应付分保帐款',NULL,'应付分保帐款',NULL,NULL,'-',-1,NULL,NULL,NULL),(102,'2014-02-16 19:09:50',1,2,1,1,'2311',NULL,'代理买卖证券款',NULL,'代理买卖证券款',NULL,NULL,'-',-1,NULL,NULL,NULL),(103,'2014-02-16 19:09:50',1,2,1,1,'2312',NULL,'代理承销证券款',NULL,'代理承销证券款',NULL,NULL,'-',-1,NULL,NULL,NULL),(104,'2014-02-16 19:09:50',1,2,1,1,'2313',NULL,'代理兑付证券款',NULL,'代理兑付证券款',NULL,NULL,'-',-1,NULL,NULL,NULL),(105,'2014-02-16 19:09:50',1,2,1,1,'2314',NULL,'代理业务负债',NULL,'代理业务负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(106,'2014-02-16 19:09:50',1,2,1,1,'2401',NULL,'递延收益',NULL,'递延收益',NULL,NULL,'-',-1,NULL,NULL,NULL),(107,'2014-02-16 19:09:50',1,2,1,1,'2411',NULL,'递延税款',NULL,'递延税款',NULL,NULL,'-',-1,NULL,NULL,NULL),(108,'2014-02-16 19:09:50',1,2,1,1,'2501',NULL,'长期借款',NULL,'长期借款',NULL,NULL,'-',-1,NULL,NULL,NULL),(109,'2014-02-16 19:09:50',1,2,1,1,'2502',NULL,'长期债券',NULL,'长期债券',NULL,NULL,'-',-1,NULL,NULL,NULL),(110,'2014-02-16 19:09:50',1,2,1,1,'2503',NULL,'应付债券',NULL,'应付债券',NULL,NULL,'-',-1,NULL,NULL,NULL),(111,'2014-02-16 19:09:50',1,2,1,1,'2601',NULL,'未到期责任准备金',NULL,'未到期责任准备金',NULL,NULL,'-',-1,NULL,NULL,NULL),(112,'2014-02-16 19:09:50',1,2,1,1,'2602',NULL,'保险责任准备金',NULL,'保险责任准备金',NULL,NULL,'-',-1,NULL,NULL,NULL),(113,'2014-02-16 19:09:50',1,2,1,1,'2611',NULL,'保户储金',NULL,'保户储金',NULL,NULL,'-',-1,NULL,NULL,NULL),(114,'2014-02-16 19:09:50',1,2,1,1,'2621',NULL,'独立账户负债',NULL,'独立账户负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(115,'2014-02-16 19:09:50',1,2,1,1,'2701',NULL,'长期应付款',NULL,'长期应付款',NULL,NULL,'-',-1,NULL,NULL,NULL),(116,'2014-02-16 19:09:50',1,2,1,1,'2702',NULL,'未确认融资费用',NULL,'未确认融资费用',NULL,NULL,'-',-1,NULL,NULL,NULL),(117,'2014-02-16 19:09:50',1,2,1,1,'2711',NULL,'专项应付款',NULL,'专项应付款',NULL,NULL,'-',-1,NULL,NULL,NULL),(118,'2014-02-16 19:09:50',1,2,1,1,'2801',NULL,'预计负债',NULL,'预计负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(119,'2014-02-16 19:09:50',1,2,1,1,'2802',NULL,'预提费用',NULL,'预提费用',NULL,NULL,'-',-1,NULL,NULL,NULL),(120,'2014-02-16 19:09:50',1,2,1,1,'2803',NULL,'待转资产价值',NULL,'待转资产价值',NULL,NULL,'-',-1,NULL,NULL,NULL),(121,'2014-02-16 19:09:50',1,2,1,1,'2901',NULL,'递延所得税负债',NULL,'递延所得税负债',NULL,NULL,'-',-1,NULL,NULL,NULL),(122,'2014-02-16 19:09:50',1,3,1,1,'3001',NULL,'清算资金往来',NULL,'清算资金往来',NULL,NULL,'-',0,NULL,NULL,NULL),(123,'2014-02-16 19:09:50',1,3,1,1,'3002',NULL,'货币兑换',NULL,'货币兑换',NULL,NULL,'-',0,NULL,NULL,NULL),(124,'2014-02-16 19:09:50',1,3,1,1,'3003',NULL,'外汇买卖',NULL,'外汇买卖',NULL,NULL,'-',0,NULL,NULL,NULL),(125,'2014-02-16 19:09:50',1,3,1,1,'3101',NULL,'衍生工具',NULL,'衍生工具',NULL,NULL,'-',0,NULL,NULL,NULL),(126,'2014-02-16 19:09:50',1,3,1,1,'3201',NULL,'套期工具',NULL,'套期工具',NULL,NULL,'-',0,NULL,NULL,NULL),(127,'2014-02-16 19:09:50',1,3,1,1,'3202',NULL,'被套期项目',NULL,'被套期项目',NULL,NULL,'-',0,NULL,NULL,NULL),(128,'2014-02-16 19:09:50',1,4,1,1,'4001',NULL,'实收资本',NULL,'实收资本',NULL,NULL,'-',-1,NULL,NULL,NULL),(129,'2014-02-16 19:09:50',1,4,1,1,'4002',NULL,'资本公积',NULL,'资本公积',NULL,NULL,'-',-1,NULL,NULL,NULL),(130,'2014-02-16 19:09:50',1,4,1,1,'4101',NULL,'盈余公积',NULL,'盈余公积',NULL,NULL,'-',-1,NULL,NULL,NULL),(131,'2014-02-16 19:09:50',1,4,1,1,'4102',NULL,'一般风险准备',NULL,'一般风险准备',NULL,NULL,'-',0,NULL,NULL,NULL),(132,'2014-02-16 19:09:50',1,4,1,1,'4103',NULL,'本年利润',NULL,'本年利润',NULL,NULL,'-',-1,NULL,NULL,NULL),(133,'2014-02-16 19:09:50',1,4,1,1,'4104',NULL,'利润分配',NULL,'利润分配',NULL,NULL,'-',-1,NULL,NULL,NULL),(134,'2014-02-16 19:09:50',1,4,1,1,'4201',NULL,'库存股',NULL,'库存股',NULL,NULL,'-',1,NULL,NULL,NULL),(135,'2014-02-16 19:09:50',1,5,1,1,'5001',NULL,'生产成本',NULL,'生产成本',NULL,NULL,'-',1,NULL,NULL,NULL),(136,'2014-02-16 19:09:50',1,5,1,1,'5101',NULL,'制造费用',NULL,'制造费用',NULL,NULL,'-',1,NULL,NULL,NULL),(137,'2014-02-16 19:09:50',1,5,1,1,'5201',NULL,'劳务成本',NULL,'劳务成本',NULL,NULL,'-',1,NULL,NULL,NULL),(138,'2014-02-16 19:09:50',1,5,1,1,'5301',NULL,'研发支出',NULL,'研发支出',NULL,NULL,'-',1,NULL,NULL,NULL),(139,'2014-02-16 19:09:50',1,5,1,1,'5401',NULL,'工程施工',NULL,'工程施工',NULL,NULL,'-',1,NULL,NULL,NULL),(140,'2014-02-16 19:09:50',1,5,1,1,'5402',NULL,'工程结算',NULL,'工程结算',NULL,NULL,'-',1,NULL,NULL,NULL),(141,'2014-02-16 19:09:50',1,5,1,1,'5403',NULL,'机械作业',NULL,'机械作业',NULL,NULL,'-',1,NULL,NULL,NULL),(142,'2014-02-16 19:09:50',1,6,1,1,'6001',NULL,'主营业务收入',NULL,'主营业务收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(143,'2014-02-16 19:09:50',1,6,1,1,'6011',NULL,'利息收入',NULL,'利息收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(144,'2014-02-16 19:09:50',1,6,1,1,'6021',NULL,'手续费收入',NULL,'手续费收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(145,'2014-02-16 19:09:50',1,6,1,1,'6031',NULL,'保费收入',NULL,'保费收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(146,'2014-02-16 19:09:50',1,6,1,1,'6032',NULL,'分保费收入',NULL,'分保费收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(147,'2014-02-16 19:09:50',1,6,1,1,'6041',NULL,'租赁收入',NULL,'租赁收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(148,'2014-02-16 19:09:50',1,6,1,1,'6051',NULL,'其它业务收入',NULL,'其它业务收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(149,'2014-02-16 19:09:50',1,6,1,1,'6061',NULL,'汇兑损益',NULL,'汇兑损益',NULL,NULL,'-',0,NULL,NULL,NULL),(150,'2014-02-16 19:09:50',1,6,1,1,'6101',NULL,'公允价值变动损益',NULL,'公允价值变动损益',NULL,NULL,'-',-1,NULL,NULL,NULL),(151,'2014-02-16 19:09:50',1,6,1,1,'6111',NULL,'投资收益',NULL,'投资收益',NULL,NULL,'-',-1,NULL,NULL,NULL),(152,'2014-02-16 19:09:50',1,6,1,1,'6201',NULL,'摊回保险责任准备金',NULL,'摊回保险责任准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(153,'2014-02-16 19:09:50',1,6,1,1,'6202',NULL,'摊回赔付支出',NULL,'摊回赔付支出',NULL,NULL,'-',1,NULL,NULL,NULL),(154,'2014-02-16 19:09:50',1,6,1,1,'6203',NULL,'摊回分保费用',NULL,'摊回分保费用',NULL,NULL,'-',1,NULL,NULL,NULL),(155,'2014-02-16 19:09:50',1,6,1,1,'6301',NULL,'营业外收入',NULL,'营业外收入',NULL,NULL,'-',-1,NULL,NULL,NULL),(156,'2014-02-16 19:09:50',1,6,1,1,'6401',NULL,'主营业务成本',NULL,'主营业务成本',NULL,NULL,'-',1,NULL,NULL,NULL),(157,'2014-02-16 19:09:50',1,6,1,1,'6402',NULL,'其它业务支出',NULL,'其它业务支出',NULL,NULL,'-',1,NULL,NULL,NULL),(158,'2014-02-16 19:09:50',1,6,1,1,'6405',NULL,'营业税金及附加',NULL,'营业税金及附加',NULL,NULL,'-',1,NULL,NULL,NULL),(159,'2014-02-16 19:09:50',1,6,1,1,'6411',NULL,'利息支出',NULL,'利息支出',NULL,NULL,'-',1,NULL,NULL,NULL),(160,'2014-02-16 19:09:50',1,6,1,1,'6421',NULL,'手续费支出',NULL,'手续费支出',NULL,NULL,'-',1,NULL,NULL,NULL),(161,'2014-02-16 19:09:50',1,6,1,1,'6501',NULL,'提取未到期责任准备金',NULL,'提取未到期责任准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(162,'2014-02-16 19:09:50',1,6,1,1,'6502',NULL,'撮保险责任准备金',NULL,'撮保险责任准备金',NULL,NULL,'-',0,NULL,NULL,NULL),(163,'2014-02-16 19:09:50',1,6,1,1,'6511',NULL,'赔付支出',NULL,'赔付支出',NULL,NULL,'-',1,NULL,NULL,NULL),(164,'2014-02-16 19:09:50',1,6,1,1,'6521',NULL,'保户红利支出',NULL,'保户红利支出',NULL,NULL,'-',1,NULL,NULL,NULL),(165,'2014-02-16 19:09:50',1,6,1,1,'6531',NULL,'退保金',NULL,'退保金',NULL,NULL,'-',0,NULL,NULL,NULL),(166,'2014-02-16 19:09:50',1,6,1,1,'6541',NULL,'分出保费',NULL,'分出保费',NULL,NULL,'-',0,NULL,NULL,NULL),(167,'2014-02-16 19:09:50',1,6,1,1,'6542',NULL,'分保费用',NULL,'分保费用',NULL,NULL,'-',1,NULL,NULL,NULL),(168,'2014-02-16 19:09:50',1,6,1,1,'6601',NULL,'销售费用',NULL,'销售费用',NULL,NULL,'-',1,NULL,NULL,NULL),(169,'2014-02-16 19:09:50',1,6,1,1,'6602',NULL,'管理费用',NULL,'管理费用',NULL,NULL,'-',1,NULL,NULL,NULL),(170,'2014-02-16 19:09:50',1,6,1,1,'6603',NULL,'财务费用',NULL,'财务费用',NULL,NULL,'-',1,NULL,NULL,NULL),(171,'2014-02-16 19:09:50',1,6,1,1,'6604',NULL,'勘探费用',NULL,'勘探费用',NULL,NULL,'-',1,NULL,NULL,NULL),(172,'2014-02-16 19:09:50',1,6,1,1,'6701',NULL,'资产减值损失',NULL,'资产减值损失',NULL,NULL,'-',1,NULL,NULL,NULL),(173,'2014-02-16 19:09:50',1,6,1,1,'6711',NULL,'营业外支出',NULL,'营业外支出',NULL,NULL,'-',1,NULL,NULL,NULL),(174,'2014-02-16 19:09:50',1,6,1,1,'6801',NULL,'所得税',NULL,'所得税',NULL,NULL,'-',1,NULL,NULL,NULL),(175,'2014-02-16 19:09:50',1,6,1,1,'6901',NULL,'以前年度损益调整',NULL,'以前年度损益调整',NULL,NULL,'-',1,NULL,NULL,NULL),(232,'2014-02-16 19:09:50',0,6,1,2,'01',NULL,'营业外支出-固定资产盘亏',NULL,'固定资产盘亏',NULL,'6711','-',1,NULL,NULL,173),(233,'2014-02-16 19:09:50',0,6,1,2,'02',NULL,'营业外支出-处置资产损失',NULL,'处置资产损失',NULL,'6711','-',1,NULL,NULL,173),(234,'2014-02-16 19:09:50',0,6,1,2,'03',NULL,'营业外支出-计提各项减值准备',NULL,'计提各项减值准备',NULL,'6711','-',1,NULL,NULL,173),(235,'2014-02-16 19:09:50',0,6,1,2,'04',NULL,'营业外支出-罚款支出',NULL,'罚款支出',NULL,'6711','-',1,NULL,NULL,173),(236,'2014-02-16 19:09:50',0,6,1,2,'05',NULL,'营业外支出-捐赠支出',NULL,'捐赠支出',NULL,'6711','-',1,NULL,NULL,173),(237,'2014-02-16 19:09:50',0,6,1,2,'06',NULL,'营业外支出-非常损失',NULL,'非常损失',NULL,'6711','-',1,NULL,NULL,173),(238,'2014-02-16 19:09:50',0,6,1,2,'98',NULL,'营业外支出-摊管理部费用',NULL,'摊管理部费用',NULL,'6711','-',1,NULL,NULL,173),(239,'2014-02-16 19:09:50',0,1,1,2,'01',NULL,'其它应收款-单位',NULL,'单位',NULL,'1221','-',1,NULL,NULL,23),(240,'2014-02-16 19:09:50',0,1,1,2,'02',NULL,'其它应收款-个人',NULL,'个人',NULL,'1221','-',1,NULL,NULL,23),(241,'2014-02-16 19:09:50',0,1,1,2,'03',NULL,'其它应收款-其它',NULL,'其它',NULL,'1221','-',1,NULL,NULL,23),(242,'2014-02-16 19:09:50',0,2,1,2,'01',NULL,'其它应付款-单位',NULL,'单位',NULL,'2241','-',-1,NULL,NULL,99),(243,'2014-02-16 19:09:50',0,2,1,2,'02',NULL,'其它应付款-个人',NULL,'个人',NULL,'2241','-',-1,NULL,NULL,99),(244,'2014-02-16 19:09:50',0,2,1,2,'03',NULL,'其它应付款-其它',NULL,'其它',NULL,'2241','-',-1,NULL,NULL,99),(245,'2014-02-16 19:09:50',0,2,1,2,'01',NULL,'应交税费-应交增值税',NULL,'应交增值税',NULL,'2221','-',-1,NULL,NULL,96),(246,'2014-02-16 19:09:50',0,2,1,3,'01',NULL,'应交税费-应交增值税-进项税额',NULL,'进项税额',NULL,'01','-',-1,NULL,NULL,245),(247,'2014-02-16 19:09:50',0,2,1,3,'02',NULL,'应交税费-应交增值税-已交税金',NULL,'已交税金',NULL,'01','-',-1,NULL,NULL,245),(248,'2014-02-16 19:09:50',0,2,1,3,'03',NULL,'应交税费-应交增值税-减免税款',NULL,'减免税款',NULL,'01','-',-1,NULL,NULL,245),(249,'2014-02-16 19:09:50',0,2,1,3,'04',NULL,'应交税费-应交增值税-出口抵减内销产品应纳税额',NULL,'出口抵减内销产品应纳税额',NULL,'01','-',-1,NULL,NULL,245),(250,'2014-02-16 19:09:50',0,2,1,3,'05',NULL,'应交税费-应交增值税-转出未交增值税',NULL,'转出未交增值税',NULL,'01','-',-1,NULL,NULL,245),(251,'2014-02-16 19:09:50',0,2,1,3,'06',NULL,'应交税费-应交增值税-销项税额',NULL,'销项税额',NULL,'01','-',-1,NULL,NULL,245),(252,'2014-02-16 19:09:50',0,2,1,3,'07',NULL,'应交税费-应交增值税-出口退税',NULL,'出口退税',NULL,'01','-',-1,NULL,NULL,245),(253,'2014-02-16 19:09:50',0,2,1,3,'08',NULL,'应交税费-应交增值税-进项税额转出',NULL,'进项税额转出',NULL,'01','-',-1,NULL,NULL,245),(254,'2014-02-16 19:09:50',0,2,1,3,'09',NULL,'应交税费-应交增值税-转出多交增值税',NULL,'转出多交增值税',NULL,'01','-',-1,NULL,NULL,245),(255,'2014-02-16 19:09:50',0,2,1,3,'10',NULL,'应交税费-应交增值税-待抵扣税额',NULL,'待抵扣税额',NULL,'01','-',-1,NULL,NULL,245),(256,'2014-02-16 19:09:50',0,2,1,2,'02',NULL,'应交税费-未交增值税',NULL,'未交增值税',NULL,'2221','-',-1,NULL,NULL,96),(257,'2014-02-16 19:09:50',0,2,1,2,'03',NULL,'应交税费-应交营业税',NULL,'应交营业税',NULL,'2221','-',-1,NULL,NULL,96),(258,'2014-02-16 19:09:50',0,2,1,2,'04',NULL,'应交税费-应交消费税',NULL,'应交消费税',NULL,'2221','-',-1,NULL,NULL,96),(259,'2014-02-16 19:09:50',0,2,1,2,'05',NULL,'应交税费-应交资源税',NULL,'应交资源税',NULL,'2221','-',-1,NULL,NULL,96),(260,'2014-02-16 19:09:50',0,2,1,2,'06',NULL,'应交税费-应交所得税',NULL,'应交所得税',NULL,'2221','-',-1,NULL,NULL,96),(261,'2014-02-16 19:09:50',0,2,1,2,'07',NULL,'应交税费-应交土地增值税',NULL,'应交土地增值税',NULL,'2221','-',-1,NULL,NULL,96),(262,'2014-02-16 19:09:50',0,2,1,2,'08',NULL,'应交税费-应交城市维护建设税',NULL,'应交城市维护建设税',NULL,'2221','-',-1,NULL,NULL,96),(263,'2014-02-16 19:09:50',0,2,1,2,'09',NULL,'应交税费-应交教育费附加',NULL,'应交教育费附加',NULL,'2221','-',-1,NULL,NULL,96),(264,'2014-02-16 19:09:50',0,2,1,2,'10',NULL,'应交税费-应交房产税',NULL,'应交房产税',NULL,'2221','-',-1,NULL,NULL,96),(265,'2014-02-16 19:09:50',0,2,1,2,'11',NULL,'应交税费-应交土地使用税',NULL,'应交土地使用税',NULL,'2221','-',-1,NULL,NULL,96),(266,'2014-02-16 19:09:50',0,2,1,2,'12',NULL,'应交税费-应交车船使用税',NULL,'应交车船使用税',NULL,'2221','-',-1,NULL,NULL,96),(267,'2014-02-16 19:09:50',0,2,1,2,'13',NULL,'应交税费-应交个人所得税',NULL,'应交个人所得税',NULL,'2221','-',-1,NULL,NULL,96),(268,'2014-02-16 19:09:50',0,2,1,2,'14',NULL,'应交税费-应交矿产资源补偿费',NULL,'应交矿产资源补偿费',NULL,'2221','-',-1,NULL,NULL,96),(269,'2014-02-16 19:09:50',0,2,1,2,'99',NULL,'应交税费-其它应交款',NULL,'其它应交款',NULL,'2221','-',-1,NULL,NULL,96),(270,'2014-02-16 19:09:50',0,2,1,2,'01',NULL,'应付职工薪酬-工资',NULL,'工资',NULL,'2211','-',-1,NULL,NULL,95),(271,'2014-02-16 19:09:50',0,2,1,2,'02',NULL,'应付职工薪酬-职工福利',NULL,'职工福利',NULL,'2211','-',-1,NULL,NULL,95),(272,'2014-02-16 19:09:50',0,2,1,2,'03',NULL,'应付职工薪酬-社会保险费',NULL,'社会保险费',NULL,'2211','-',-1,NULL,NULL,95),(273,'2014-02-16 19:09:50',0,2,1,2,'04',NULL,'应付职工薪酬-住房公积金',NULL,'住房公积金',NULL,'2211','-',-1,NULL,NULL,95),(274,'2014-02-16 19:09:50',0,2,1,2,'05',NULL,'应付职工薪酬-工会经费',NULL,'工会经费',NULL,'2211','-',-1,NULL,NULL,95),(275,'2014-02-16 19:09:50',0,2,1,2,'06',NULL,'应付职工薪酬-职工教育经费',NULL,'职工教育经费',NULL,'2211','-',-1,NULL,NULL,95),(276,'2014-02-16 19:09:50',0,2,1,2,'07',NULL,'应付职工薪酬-解除职工劳动关系补偿',NULL,'解除职工劳动关系补偿',NULL,'2211','-',-1,NULL,NULL,95),(277,'2014-02-16 19:09:50',0,2,1,2,'08',NULL,'应付职工薪酬-股份支付',NULL,'股份支付',NULL,'2211','-',-1,NULL,NULL,95),(6001,'2014-02-16 19:09:50',0,6,1,2,'01',NULL,'销售费用-办公费',NULL,'办公费',NULL,'6601','-',1,NULL,NULL,168),(6002,'2014-02-16 19:09:50',0,6,1,2,'02',NULL,'销售费用-房租费',NULL,'房租费',NULL,'6601','-',1,NULL,NULL,168),(6003,'2014-02-16 19:09:50',0,6,1,2,'03',NULL,'销售费用-水电气费',NULL,'水电气费',NULL,'6601','-',1,NULL,NULL,168),(6004,'2014-02-16 19:09:50',0,6,1,2,'04',NULL,'销售费用-物业管理费',NULL,'物业管理费',NULL,'6601','-',1,NULL,NULL,168),(6005,'2014-02-16 19:09:50',0,6,1,2,'05',NULL,'销售费用-运输费',NULL,'运输费',NULL,'6601','-',1,NULL,NULL,168),(6006,'2014-02-16 19:09:50',0,6,1,2,'06',NULL,'销售费用-交通费',NULL,'交通费',NULL,'6601','-',1,NULL,NULL,168),(6007,'2014-02-16 19:09:50',0,6,1,2,'07',NULL,'销售费用-车辆费',NULL,'车辆费',NULL,'6601','-',1,NULL,NULL,168),(6008,'2014-02-16 19:09:50',0,6,1,2,'08',NULL,'销售费用-邮电费',NULL,'邮电费',NULL,'6601','-',1,NULL,NULL,168),(6009,'2014-02-16 19:09:50',0,6,1,2,'09',NULL,'销售费用-通讯费',NULL,'通讯费',NULL,'6601','-',1,NULL,NULL,168),(6010,'2014-02-16 19:09:50',0,6,1,2,'10',NULL,'销售费用-维修费',NULL,'维修费',NULL,'6601','-',1,NULL,NULL,168),(6011,'2014-02-16 19:09:50',0,6,1,2,'11',NULL,'销售费用-广告费',NULL,'广告费',NULL,'6601','-',1,NULL,NULL,168),(6012,'2014-02-16 19:09:50',0,6,1,2,'12',NULL,'销售费用-展会费',NULL,'展会费',NULL,'6601','-',1,NULL,NULL,168),(6013,'2014-02-16 19:09:50',0,6,1,2,'13',NULL,'销售费用-交际应酬费',NULL,'交际应酬费',NULL,'6601','-',1,NULL,NULL,168),(6014,'2014-02-16 19:09:50',0,6,1,2,'14',NULL,'销售费用-市场宣传费',NULL,'市场宣传费',NULL,'6601','-',1,NULL,NULL,168),(6015,'2014-02-16 19:09:50',0,6,1,2,'15',NULL,'销售费用-咨询顾问费',NULL,'咨询顾问费',NULL,'6601','-',1,NULL,NULL,168),(6016,'2014-02-16 19:09:50',0,6,1,2,'16',NULL,'销售费用-研发费',NULL,'研发费',NULL,'6601','-',1,NULL,NULL,168),(6017,'2014-02-16 19:09:50',0,6,1,2,'17',NULL,'销售费用-培训费',NULL,'培训费',NULL,'6601','-',1,NULL,NULL,168),(6018,'2014-02-16 19:09:50',0,6,1,2,'18',NULL,'销售费用-会议费',NULL,'会议费',NULL,'6601','-',1,NULL,NULL,168),(6019,'2014-02-16 19:09:50',0,6,1,2,'19',NULL,'销售费用-折旧费',NULL,'折旧费',NULL,'6601','-',1,NULL,NULL,168),(6020,'2014-02-16 19:09:50',0,6,1,2,'20',NULL,'销售费用-坏账损失',NULL,'坏账损失',NULL,'6601','-',1,NULL,NULL,168),(6021,'2014-02-16 19:09:50',0,6,1,2,'21',NULL,'销售费用-差旅费',NULL,'差旅费',NULL,'6601','-',1,NULL,NULL,168),(6051,'2014-02-16 19:09:50',0,6,1,2,'51',NULL,'销售费用-工资',NULL,'工资',NULL,'6601','-',1,NULL,NULL,168),(6052,'2014-02-16 19:09:50',0,6,1,2,'52',NULL,'销售费用-津贴补助',NULL,'津贴补助',NULL,'6601','-',1,NULL,NULL,168),(6053,'2014-02-16 19:09:50',0,6,1,2,'53',NULL,'销售费用-奖金',NULL,'奖金',NULL,'6601','-',1,NULL,NULL,168),(6054,'2014-02-16 19:09:50',0,6,1,2,'54',NULL,'销售费用-保险费',NULL,'保险费',NULL,'6601','-',1,NULL,NULL,168),(6055,'2014-02-16 19:09:50',0,6,1,2,'55',NULL,'销售费用-公积金',NULL,'公积金',NULL,'6601','-',1,NULL,NULL,168),(6056,'2014-02-16 19:09:50',0,6,1,2,'56',NULL,'销售费用-工会经费',NULL,'工会经费',NULL,'6601','-',1,NULL,NULL,168),(6057,'2014-02-16 19:09:50',0,6,1,2,'57',NULL,'销售费用-福利费',NULL,'福利费',NULL,'6601','-',1,NULL,NULL,168),(6058,'2014-02-16 19:09:50',0,6,1,2,'58',NULL,'销售费用-辞退福利',NULL,'辞退福利',NULL,'6601','-',1,NULL,NULL,168),(6059,'2014-02-16 19:09:50',0,6,1,2,'59',NULL,'销售费用-非货币性福利',NULL,'非货币性福利',NULL,'6601','-',1,NULL,NULL,168),(6060,'2014-02-16 19:09:50',0,6,1,2,'60',NULL,'销售费用-销售佣金',NULL,'销售佣金',NULL,'6601','-',1,NULL,NULL,168),(6061,'2014-02-16 19:09:50',0,6,1,2,'61',NULL,'销售费用-劳动保护费',NULL,'劳动保护费',NULL,'6601','-',1,NULL,NULL,168),(6097,'2014-02-16 19:09:50',0,6,1,2,'97',NULL,'销售费用-其它资产摊销',NULL,'其它资产摊销',NULL,'6601','-',1,NULL,NULL,168),(6098,'2014-02-16 19:09:50',0,6,1,2,'98',NULL,'销售费用-税金',NULL,'税金',NULL,'6601','-',1,NULL,NULL,168),(6099,'2014-02-16 19:09:50',0,6,1,2,'99',NULL,'销售费用-其它',NULL,'其它',NULL,'6601','-',1,NULL,NULL,168),(6981,'2014-02-16 19:09:50',0,6,1,3,'01',NULL,'销售费用-营业税',NULL,'营业税',NULL,'6601','-',1,NULL,NULL,168),(6982,'2014-02-16 19:09:50',0,6,1,3,'02',NULL,'销售费用-消费税',NULL,'消费税',NULL,'6601','-',1,NULL,NULL,168),(6983,'2014-02-16 19:09:50',0,6,1,3,'03',NULL,'销售费用-资源税',NULL,'资源税',NULL,'6601','-',1,NULL,NULL,168),(6984,'2014-02-16 19:09:50',0,6,1,3,'04',NULL,'销售费用-所得税',NULL,'所得税',NULL,'6601','-',1,NULL,NULL,168),(6985,'2014-02-16 19:09:50',0,6,1,3,'05',NULL,'销售费用-土地价值税',NULL,'土地价值税',NULL,'6601','-',1,NULL,NULL,168),(6986,'2014-02-16 19:09:50',0,6,1,3,'06',NULL,'销售费用-城建税',NULL,'城建税',NULL,'6601','-',1,NULL,NULL,168),(6987,'2014-02-16 19:09:50',0,6,1,3,'07',NULL,'销售费用-房产税',NULL,'房产税',NULL,'6601','-',1,NULL,NULL,168),(6988,'2014-02-16 19:09:50',0,6,1,3,'08',NULL,'销售费用-土地使用税',NULL,'土地使用税',NULL,'6601','-',1,NULL,NULL,168),(6989,'2014-02-16 19:09:50',0,6,1,3,'09',NULL,'销售费用-车船使用税',NULL,'车船使用税',NULL,'6601','-',1,NULL,NULL,168),(7001,'2014-02-16 19:09:50',0,6,1,2,'01',NULL,'管理费用-办公费',NULL,'办公费',NULL,'6602','-',1,NULL,NULL,169),(7002,'2014-02-16 19:09:50',0,6,1,2,'02',NULL,'管理费用-房租费',NULL,'房租费',NULL,'6602','-',1,NULL,NULL,169),(7003,'2014-02-16 19:09:50',0,6,1,2,'03',NULL,'管理费用-水电气费',NULL,'水电气费',NULL,'6602','-',1,NULL,NULL,169),(7004,'2014-02-16 19:09:50',0,6,1,2,'04',NULL,'管理费用-物业管理费',NULL,'物业管理费',NULL,'6602','-',1,NULL,NULL,169),(7005,'2014-02-16 19:09:50',0,6,1,2,'05',NULL,'管理费用-运输费',NULL,'运输费',NULL,'6602','-',1,NULL,NULL,169),(7006,'2014-02-16 19:09:50',0,6,1,2,'06',NULL,'管理费用-交通费',NULL,'交通费',NULL,'6602','-',1,NULL,NULL,169),(7007,'2014-02-16 19:09:50',0,6,1,2,'07',NULL,'管理费用-车辆费',NULL,'车辆费',NULL,'6602','-',1,NULL,NULL,169),(7008,'2014-02-16 19:09:50',0,6,1,2,'08',NULL,'管理费用-邮电费',NULL,'邮电费',NULL,'6602','-',1,NULL,NULL,169),(7009,'2014-02-16 19:09:50',0,6,1,2,'09',NULL,'管理费用-通讯费',NULL,'通讯费',NULL,'6602','-',1,NULL,NULL,169),(7010,'2014-02-16 19:09:50',0,6,1,2,'10',NULL,'管理费用-维修费',NULL,'维修费',NULL,'6602','-',1,NULL,NULL,169),(7011,'2014-02-16 19:09:50',0,6,1,2,'11',NULL,'管理费用-广告费',NULL,'广告费',NULL,'6602','-',1,NULL,NULL,169),(7012,'2014-02-16 19:09:50',0,6,1,2,'12',NULL,'管理费用-展会费',NULL,'展会费',NULL,'6602','-',1,NULL,NULL,169),(7013,'2014-02-16 19:09:50',0,6,1,2,'13',NULL,'管理费用-交际应酬费',NULL,'交际应酬费',NULL,'6602','-',1,NULL,NULL,169),(7014,'2014-02-16 19:09:50',0,6,1,2,'14',NULL,'管理费用-市场宣传费',NULL,'市场宣传费',NULL,'6602','-',1,NULL,NULL,169),(7015,'2014-02-16 19:09:50',0,6,1,2,'15',NULL,'管理费用-咨询顾问费',NULL,'咨询顾问费',NULL,'6602','-',1,NULL,NULL,169),(7016,'2014-02-16 19:09:50',0,6,1,2,'16',NULL,'管理费用-研发费',NULL,'研发费',NULL,'6602','-',1,NULL,NULL,169),(7017,'2014-02-16 19:09:50',0,6,1,2,'17',NULL,'管理费用-培训费',NULL,'培训费',NULL,'6602','-',1,NULL,NULL,169),(7018,'2014-02-16 19:09:50',0,6,1,2,'18',NULL,'管理费用-会议费',NULL,'会议费',NULL,'6602','-',1,NULL,NULL,169),(7019,'2014-02-16 19:09:50',0,6,1,2,'19',NULL,'管理费用-折旧费',NULL,'折旧费',NULL,'6602','-',1,NULL,NULL,169),(7020,'2014-02-16 19:09:50',0,6,1,2,'20',NULL,'管理费用-坏账损失',NULL,'坏账损失',NULL,'6602','-',1,NULL,NULL,169),(7021,'2014-02-16 19:09:50',0,6,1,2,'21',NULL,'管理费用-差旅费',NULL,'差旅费',NULL,'6602','-',1,NULL,NULL,169),(7022,'2014-02-16 19:09:50',0,6,1,2,'51',NULL,'管理费用-工资',NULL,'工资',NULL,'6602','-',1,NULL,NULL,169),(7023,'2014-02-16 19:09:50',0,6,1,2,'52',NULL,'管理费用-津贴补助',NULL,'津贴补助',NULL,'6602','-',1,NULL,NULL,169),(7024,'2014-02-16 19:09:50',0,6,1,2,'53',NULL,'管理费用-奖金',NULL,'奖金',NULL,'6602','-',1,NULL,NULL,169),(7025,'2014-02-16 19:09:50',0,6,1,2,'54',NULL,'管理费用-保险费',NULL,'保险费',NULL,'6602','-',1,NULL,NULL,169),(7055,'2014-02-16 19:09:50',0,6,1,2,'55',NULL,'管理费用-公积金',NULL,'公积金',NULL,'6602','-',1,NULL,NULL,169),(7056,'2014-02-16 19:09:50',0,6,1,2,'56',NULL,'管理费用-工会经费',NULL,'工会经费',NULL,'6602','-',1,NULL,NULL,169),(7057,'2014-02-16 19:09:50',0,6,1,2,'57',NULL,'管理费用-福利费',NULL,'福利费',NULL,'6602','-',1,NULL,NULL,169),(7058,'2014-02-16 19:09:50',0,6,1,2,'58',NULL,'管理费用-辞退福利',NULL,'辞退福利',NULL,'6602','-',1,NULL,NULL,169),(7059,'2014-02-16 19:09:50',0,6,1,2,'59',NULL,'管理费用-非货币性福利',NULL,'非货币性福利',NULL,'6602','-',1,NULL,NULL,169),(7060,'2014-02-16 19:09:50',0,6,1,2,'60',NULL,'管理费用-销售佣金',NULL,'销售佣金',NULL,'6602','-',1,NULL,NULL,169),(7061,'2014-02-16 19:09:50',0,6,1,2,'61',NULL,'管理费用-劳动保护费',NULL,'劳动保护费',NULL,'6602','-',1,NULL,NULL,169),(7097,'2014-02-16 19:09:50',0,6,1,2,'97',NULL,'管理费用-其它资产摊销',NULL,'其它资产摊销',NULL,'6602','-',1,NULL,NULL,169),(7098,'2014-02-16 19:09:50',0,6,1,2,'98',NULL,'管理费用-税金',NULL,'税金',NULL,'6602','-',1,NULL,NULL,169),(7099,'2014-02-16 19:09:50',0,6,1,2,'99',NULL,'管理费用-其它',NULL,'其它',NULL,'6602','-',1,NULL,NULL,169),(7981,'2014-02-16 19:09:50',0,6,1,3,'01',NULL,'管理费用-营业税',NULL,'营业税',NULL,'6602','-',1,NULL,NULL,169),(7982,'2014-02-16 19:09:50',0,6,1,3,'02',NULL,'管理费用-消费税',NULL,'消费税',NULL,'6602','-',1,NULL,NULL,169),(7983,'2014-02-16 19:09:50',0,6,1,3,'03',NULL,'管理费用-资源税',NULL,'资源税',NULL,'6602','-',1,NULL,NULL,169),(7984,'2014-02-16 19:09:50',0,6,1,3,'04',NULL,'管理费用-所得税',NULL,'所得税',NULL,'6602','-',1,NULL,NULL,169),(7985,'2014-02-16 19:09:50',0,6,1,3,'05',NULL,'管理费用-土地价值税',NULL,'土地价值税',NULL,'6602','-',1,NULL,NULL,169),(7986,'2014-02-16 19:09:50',0,6,1,3,'06',NULL,'管理费用-城建税',NULL,'城建税',NULL,'6602','-',1,NULL,NULL,169),(7987,'2014-02-16 19:09:50',0,6,1,3,'07',NULL,'管理费用-房产税',NULL,'房产税',NULL,'6602','-',1,NULL,NULL,169),(7988,'2014-02-16 19:09:50',0,6,1,3,'08',NULL,'管理费用-土地使用税',NULL,'土地使用税',NULL,'6602','-',1,NULL,NULL,169),(7989,'2014-02-16 19:09:50',0,6,1,3,'09',NULL,'管理费用-车船使用税',NULL,'车船使用税',NULL,'6602','-',1,NULL,NULL,169),(8001,'2014-02-16 19:09:50',0,6,1,2,'01',NULL,'主营业务成本-办公费',NULL,'办公费',NULL,'6401','-',1,NULL,NULL,156),(8002,'2014-02-16 19:09:50',0,6,1,2,'02',NULL,'主营业务成本-房租费',NULL,'房租费',NULL,'6401','-',1,NULL,NULL,156),(8003,'2014-02-16 19:09:50',0,6,1,2,'03',NULL,'主营业务成本-水电气费',NULL,'水电气费',NULL,'6401','-',1,NULL,NULL,156),(8004,'2014-02-16 19:09:50',0,6,1,2,'04',NULL,'主营业务成本-物业管理费',NULL,'物业管理费',NULL,'6401','-',1,NULL,NULL,156),(8005,'2014-02-16 19:09:50',0,6,1,2,'05',NULL,'主营业务成本-运输费',NULL,'运输费',NULL,'6401','-',1,NULL,NULL,156),(8006,'2014-02-16 19:09:50',0,6,1,2,'06',NULL,'主营业务成本-交通费',NULL,'交通费',NULL,'6401','-',1,NULL,NULL,156),(8007,'2014-02-16 19:09:50',0,6,1,2,'07',NULL,'主营业务成本-车辆费',NULL,'车辆费',NULL,'6401','-',1,NULL,NULL,156),(8008,'2014-02-16 19:09:50',0,6,1,2,'08',NULL,'主营业务成本-邮电费',NULL,'邮电费',NULL,'6401','-',1,NULL,NULL,156),(8009,'2014-02-16 19:09:50',0,6,1,2,'09',NULL,'主营业务成本-通讯费',NULL,'通讯费',NULL,'6401','-',1,NULL,NULL,156),(8010,'2014-02-16 19:09:50',0,6,1,2,'10',NULL,'主营业务成本-维修费',NULL,'维修费',NULL,'6401','-',1,NULL,NULL,156),(8011,'2014-02-16 19:09:50',0,6,1,2,'11',NULL,'主营业务成本-广告费',NULL,'广告费',NULL,'6401','-',1,NULL,NULL,156),(8012,'2014-02-16 19:09:50',0,6,1,2,'12',NULL,'主营业务成本-展会费',NULL,'展会费',NULL,'6401','-',1,NULL,NULL,156),(8013,'2014-02-16 19:09:50',0,6,1,2,'13',NULL,'主营业务成本-交际应酬费',NULL,'交际应酬费',NULL,'6401','-',1,NULL,NULL,156),(8014,'2014-02-16 19:09:50',0,6,1,2,'14',NULL,'主营业务成本-市场宣传费',NULL,'市场宣传费',NULL,'6401','-',1,NULL,NULL,156),(8015,'2014-02-16 19:09:50',0,6,1,2,'15',NULL,'主营业务成本-咨询顾问费',NULL,'咨询顾问费',NULL,'6401','-',1,NULL,NULL,156),(8016,'2014-02-16 19:09:50',0,6,1,2,'16',NULL,'主营业务成本-研发费',NULL,'研发费',NULL,'6401','-',1,NULL,NULL,156),(8017,'2014-02-16 19:09:50',0,6,1,2,'17',NULL,'主营业务成本-培训费',NULL,'培训费',NULL,'6401','-',1,NULL,NULL,156),(8018,'2014-02-16 19:09:50',0,6,1,2,'18',NULL,'主营业务成本-会议费',NULL,'会议费',NULL,'6401','-',1,NULL,NULL,156),(8019,'2014-02-16 19:09:50',0,6,1,2,'19',NULL,'主营业务成本-折旧费',NULL,'折旧费',NULL,'6401','-',1,NULL,NULL,156),(8020,'2014-02-16 19:09:50',0,6,1,2,'20',NULL,'主营业务成本-坏账损失',NULL,'坏账损失',NULL,'6401','-',1,NULL,NULL,156),(8021,'2014-02-16 19:09:50',0,6,1,2,'21',NULL,'主营业务成本-差旅费',NULL,'差旅费',NULL,'6401','-',1,NULL,NULL,156),(8051,'2014-02-16 19:09:50',0,6,1,2,'51',NULL,'主营业务成本-工资',NULL,'工资',NULL,'6401','-',1,NULL,NULL,156),(8052,'2014-02-16 19:09:50',0,6,1,2,'52',NULL,'主营业务成本-津贴补助',NULL,'津贴补助',NULL,'6401','-',1,NULL,NULL,156),(8053,'2014-02-16 19:09:50',0,6,1,2,'53',NULL,'主营业务成本-奖金',NULL,'奖金',NULL,'6401','-',1,NULL,NULL,156),(8054,'2014-02-16 19:09:50',0,6,1,2,'54',NULL,'主营业务成本-保险费',NULL,'保险费',NULL,'6401','-',1,NULL,NULL,156),(8055,'2014-02-16 19:09:50',0,6,1,2,'55',NULL,'主营业务成本-公积金',NULL,'公积金',NULL,'6401','-',1,NULL,NULL,156),(8056,'2014-02-16 19:09:50',0,6,1,2,'56',NULL,'主营业务成本-工会经费',NULL,'工会经费',NULL,'6401','-',1,NULL,NULL,156),(8057,'2014-02-16 19:09:50',0,6,1,2,'57',NULL,'主营业务成本-福利费',NULL,'福利费',NULL,'6401','-',1,NULL,NULL,156),(8058,'2014-02-16 19:09:50',0,6,1,2,'58',NULL,'主营业务成本-辞退福利',NULL,'辞退福利',NULL,'6401','-',1,NULL,NULL,156),(8059,'2014-02-16 19:09:50',0,6,1,2,'59',NULL,'主营业务成本-非货币性福利',NULL,'非货币性福利',NULL,'6401','-',1,NULL,NULL,156),(8060,'2014-02-16 19:09:50',0,6,1,2,'60',NULL,'主营业务成本-销售佣金',NULL,'销售佣金',NULL,'6401','-',1,NULL,NULL,156),(8061,'2014-02-16 19:09:50',0,6,1,2,'61',NULL,'主营业务成本-劳动保护费',NULL,'劳动保护费',NULL,'6401','-',1,NULL,NULL,156),(8097,'2014-02-16 19:09:50',0,6,1,2,'97',NULL,'主营业务成本-其它资产摊销',NULL,'其它资产摊销',NULL,'6401','-',1,NULL,NULL,156),(8098,'2014-02-16 19:09:50',0,6,1,2,'98',NULL,'主营业务成本-税金',NULL,'税金',NULL,'6401','-',1,NULL,NULL,156),(8099,'2014-02-16 19:09:50',0,6,1,2,'99',NULL,'主营业务成本-其它',NULL,'其它',NULL,'6401','-',1,NULL,NULL,156),(8981,'2014-02-16 19:09:50',0,6,1,3,'01',NULL,'主营业务成本-营业税',NULL,'营业税',NULL,'6401','-',1,NULL,NULL,156),(8982,'2014-02-16 19:09:50',0,6,1,3,'02',NULL,'主营业务成本-消费税',NULL,'消费税',NULL,'6401','-',1,NULL,NULL,156),(8983,'2014-02-16 19:09:50',0,6,1,3,'03',NULL,'主营业务成本-资源税',NULL,'资源税',NULL,'6401','-',1,NULL,NULL,156),(8984,'2014-02-16 19:09:50',0,6,1,3,'04',NULL,'主营业务成本-所得税',NULL,'所得税',NULL,'6401','-',1,NULL,NULL,156),(8985,'2014-02-16 19:09:50',0,6,1,3,'05',NULL,'主营业务成本-土地价值税',NULL,'土地价值税',NULL,'6401','-',1,NULL,NULL,156),(8986,'2014-02-16 19:09:50',0,6,1,3,'06',NULL,'主营业务成本-城建税',NULL,'城建税',NULL,'6401','-',1,NULL,NULL,156),(8987,'2014-02-16 19:09:50',0,6,1,3,'07',NULL,'主营业务成本-房产税',NULL,'房产税',NULL,'6401','-',1,NULL,NULL,156),(8988,'2014-02-16 19:09:50',0,6,1,3,'08',NULL,'主营业务成本-土地使用税',NULL,'土地使用税',NULL,'6401','-',1,NULL,NULL,156),(8989,'2014-02-16 19:09:50',0,6,1,3,'09',NULL,'主营业务成本-车船使用税',NULL,'车船使用税',NULL,'6401','-',1,NULL,NULL,156);
/*!40000 ALTER TABLE `sys_chart_accounts_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_noti_history_entity`
--

DROP TABLE IF EXISTS `sys_noti_history_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_noti_history_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `noti_type` varchar(255) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `to_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_noti_history_entity`
--

LOCK TABLES `sys_noti_history_entity` WRITE;
/*!40000 ALTER TABLE `sys_noti_history_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_noti_history_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notification_entry_entity`
--

DROP TABLE IF EXISTS `sys_notification_entry_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notification_entry_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `send_email` tinyint(1) DEFAULT NULL,
  `send_sms` tinyint(1) DEFAULT NULL,
  `email_template_content` varchar(3000) DEFAULT NULL,
  `email_template_title` varchar(1000) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `recipientType` varchar(255) DEFAULT NULL,
  `sms_template_content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `searching_index` (`recipientType`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notification_entry_entity`
--

LOCK TABLES `sys_notification_entry_entity` WRITE;
/*!40000 ALTER TABLE `sys_notification_entry_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_notification_entry_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_operation_history`
--

DROP TABLE IF EXISTS `sys_operation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_operation_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `operator_type` varchar(255) DEFAULT NULL,
  `id_accountant` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l5p407rk1rs50gs1pyxb96528` (`id_accountant`),
  KEY `FK_8owes5ldumbq07lhhajg12ae2` (`id_document`),
  KEY `FK_g71n1dbse7kn7g1bps8u94xa1` (`id_employee`),
  CONSTRAINT `FK_g71n1dbse7kn7g1bps8u94xa1` FOREIGN KEY (`id_employee`) REFERENCES `epp_employee_entity` (`id`),
  CONSTRAINT `FK_8owes5ldumbq07lhhajg12ae2` FOREIGN KEY (`id_document`) REFERENCES `epp_document_entity` (`id`),
  CONSTRAINT `FK_l5p407rk1rs50gs1pyxb96528` FOREIGN KEY (`id_accountant`) REFERENCES `acc_user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_operation_history`
--

LOCK TABLES `sys_operation_history` WRITE;
/*!40000 ALTER TABLE `sys_operation_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_entity`
--

DROP TABLE IF EXISTS `sys_role_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `role_isForOrg` tinyint(1) DEFAULT NULL,
  `role_lan` varchar(255) DEFAULT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_entity`
--

LOCK TABLES `sys_role_entity` WRITE;
/*!40000 ALTER TABLE `sys_role_entity` DISABLE KEYS */;
INSERT INTO `sys_role_entity` VALUES (1,'2014-02-16 19:09:50',0,0,'ROLE_ACC_NORMAL','ROLE_ACC_NORMAL'),(2,'2014-02-16 19:09:50',0,0,'ROLE_ACC_ADMIN','ROLE_ACC_ADMIN'),(3,'2014-02-16 19:09:50',0,1,'ROLE_ORG_NORMAL','ROLE_ORG_NORMAL'),(4,'2014-02-16 19:09:50',0,1,'ROLE_ORG_ADMIN','ROLE_ORG_ADMIN'),(5,'2014-02-16 19:09:50',0,1,'ROLE_ORG_CASHIER','ROLE_ORG_CASHIER');
/*!40000 ALTER TABLE `sys_role_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_salary_type`
--

DROP TABLE IF EXISTS `sys_salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_salary_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remove` tinyint(1) NOT NULL,
  `debit_level_2_code` varchar(2) DEFAULT NULL,
  `lan_key` varchar(255) DEFAULT NULL,
  `id_chart_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k2j0x4aawxbcqns96tudt5rs` (`id_chart_credit`),
  CONSTRAINT `FK_k2j0x4aawxbcqns96tudt5rs` FOREIGN KEY (`id_chart_credit`) REFERENCES `sys_chart_accounts_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_salary_type`
--

LOCK TABLES `sys_salary_type` WRITE;
/*!40000 ALTER TABLE `sys_salary_type` DISABLE KEYS */;
INSERT INTO `sys_salary_type` VALUES (1,'2014-02-16 19:09:52',0,'51','salary_type_base_pay',270),(2,'2014-02-16 19:09:52',0,'51','salary_type_personal_income_tax',267),(3,'2014-02-16 19:09:52',0,'55','salary_type_housing_fund_individual',273),(4,'2014-02-16 19:09:52',0,'55','salary_type_housing_fund_company',273),(5,'2014-02-16 19:09:52',0,'54','salary_type_social_insurance_individual',272),(6,'2014-02-16 19:09:52',0,'54','salary_type_social_insurance_company',272),(7,'2014-02-16 19:09:52',0,'53','salary_type_bonus',270),(8,'2014-02-16 19:09:52',0,'52','salary_type_allowance',270),(9,'2014-02-16 19:09:52',0,'57','salary_type_employee_benefits',271),(10,'2014-02-16 19:09:52',0,'56','salary_type_union_funds',274),(11,'2014-02-16 19:09:52',0,'17','salary_type_employee_education_funds',275),(12,'2014-02-16 19:09:52',0,'59','salary_type_nonmonetary_benefits',271),(13,'2014-02-16 19:09:52',0,'52','salary_type_disabled_security_fund',271),(14,'2014-02-16 19:09:52',0,'58','salary_type_termination_benefits',276),(15,'2014-02-16 19:09:52',0,'51','salary_type_sharebased_payments',270),(17,'2014-02-16 19:09:52',0,'52','salary_type_housing_subsidies',271);
/*!40000 ALTER TABLE `sys_salary_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_id_index` (`entity_id`),
  KEY `entityid_entitytype_index` (`entity_id`,`entity_type`),
  KEY `FK_fxu3td9m5o7qov1kbdvmn0g0x` (`role_id`),
  CONSTRAINT `FK_fxu3td9m5o7qov1kbdvmn0g0x` FOREIGN KEY (`role_id`) REFERENCES `sys_role_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,'ACCOUNTANT',1),(2,1,'ACCOUNTANT',2),(3,1,'ORG_EMPLOYEE',3),(4,1,'ORG_EMPLOYEE',4);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-16 19:12:14
