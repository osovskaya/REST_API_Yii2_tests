-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: myPhoto
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `album_clients`
--

DROP TABLE IF EXISTS `album_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `access` enum('read','grant') NOT NULL DEFAULT 'read',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `album/clients_ibfk_2` (`user_id`),
  CONSTRAINT `album_clients_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `album_clients_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_clients`
--

LOCK TABLES `album_clients` WRITE;
/*!40000 ALTER TABLE `album_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_images`
--

DROP TABLE IF EXISTS `album_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `image` longblob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `album` (`album_id`),
  CONSTRAINT `album_images_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_images`
--

LOCK TABLES `album_images` WRITE;
/*!40000 ALTER TABLE `album_images` DISABLE KEYS */;
INSERT INTO `album_images` VALUES (5,46,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq�\0\0\0	pHYs\0\0a\0\0a�ø�\0\0IDATx��[yl�}������.���Z\"EI�Hɲdٲx�t�mN�4G�M�W��iXjP���?�\Z6\\�h�Z�����@Z�1�֔D��,ǢDY�(R\\�\"�䒻�{v�����d���^�\r4�˙w��{��y�?���\r���j�����/FL}Ǻ���c��p�P�e�=��LL���4m�������*>��/j;�d���Ȋ]��,�1;9����uND�7���O��\Z#䅀�������\rM�+�k��s�\\O�;1�k��]Ӈ���y��,>�s���c��d�;NW!67Wܺ�kq��y������\r�0�u��N�w��c��N�#F�\Z@�Mڜh�%�Ry������d-���$Rp��EQp�<��[?�G��4@�o{I�؟V��P�X�a=54\"����,$�D�?:�@}����>|D�X^�n5GbE���?�/AumI�mŬ08EQ����\Zхhj�4�}��{�A����e��背�&���$����[�֚p�B��Z�\Zu��چRT���n;�c��ilm��q�@AI�0+H��ο��\'�~����jv��MŶ��M��O�,,<}�����Ŵ	x������d۷i��\n{�f����¤�4c�y%���X�?��\r��0��s===A�N�B�H<~Jߐ��� F��`�Ϊ[��q�#2?	�����(���#��}��WH���Xx�:ս��l��������ᵈ/�]��!��F|h&�\n�k�Bd�oj�\n:����w�M��\\Hw�Mn�����t���tK��}��������x�,9�&!�Ht����(�w�a-0��Wh��d�)k�&ʉ� �`�&�+���l4Nׁ���E$�f�<�w���d���ػg\Z\Z0r�F����?�4�~�Q����a���L�����հX�\r�����D�O�P�4́���^?�Q[Zn<A���$}�D__�����cKKK���j��f��������%�\0!<����*�W��F�1�t;�U�ng#�XL/kBBe�k_x���ƱS��\'k�4��b�3�J��PO���b��ZYV�&��W\\��B�0&\'\'{�h��?jo���^V���	����*(��s�2҄��2��	v��B�&{.�&p��ժ��߽y��۫�ƀC�/\\�G����c1Ѱh�S�с]��>�X�`2Ǖ\n#�¡8v���ChB�͌��5����^��߰��	f�~edd$��߱��HMUհwz���^�|�D��[O���m��S&�\\�rwͺ�k5�S��&��ZI)��\\Q`3�&�\"�D�q}%	�kj��߿�!������T��׿\\�r��><,���N���`���;:8�&�di��ْ��\nb�=��񱅒��Os\Zz�4���м�,Ѩ�x�w�o��S��g0��5gΜ	d2������P���E���S���׮�9���	xa),1����J����Rx�d*�\09zv�d�Mb��u\\�����Sd��~�I���V�ٰ�ͅѹ�Z���S��/�ʭd���7S�y[�~����^�^Y�k�0�	���>=�Mߒx��w\'{�	U�{��;,h$��/Q��������:=0!���m����XD}f誷�j5;;�⵱Y����5:�+�Ǹ7�i��PDG,��Y��UjBm�&�f�U�_��4�O���?��k���>�1ʛ�]�X\\}T�1-zJD,D�LK�ʻ7Q�vd��\Z���3A\\���X	�\'����[�ؽ�� ��i?|�5��e��������twY%5��`AVZ��I,��@K���ސ� ј�WO��ԅc��Ώ�8}�/��^���Z�������\Z��\r3�:��r#�e�s�����4����,JY��I�o\0��qJ���ɵgݱP��f\n���+L����Ci�;]#��<���w\0B���8f�Ռڕ�J�����\Z\Z\'�2\n�V���aÞq$B�yD�	o��?�e��@UU�L&#��u�g� dC�P|���h��}��ǽY	/ T�I��,)��l�B0�B�[������!�+��	��ʪ�B�WVT��f������\Z\ZRg����k��Z䈼����\'�n[�r��ￏD\"a��b��a�#@��v.Ib7�a䀼i�,��#7Y��?4:JY�J�7>�)�v���C�c�,����C!��{/lhڴ	��y���B�״�\"䅀`(�1o<�>f������m�fl����{��V�(���o��A�b$�q����#����16fh@��8��1-R�Z,��>�:p�\r�\n#/�����\no@�|���EBQ5w\r�����������\r}����v̜	�4�\0TN}g���ۛ����Ø������F8���q^������뷚��\Z�w�����e��n���O��p��M�;49O,��v[v�[v�0�\\����BƲ=�K�:���5�J+=A@:(.*B]m�̗���×�3�~�\0�9��[����}*Ԧ\"�s/�D��%�vV�2뮶�&��b���Y���Pc5�p��!��J(����q��%ȩ2Ng��!b��&%\'�q�A��+�lV���9�pl>Jϝ�Ǧ�ڷI�,���k�����KDLq��s�q=BIR2�,�@��M�I�����\\�^�\Z-y�������{�m�~��J\'�C�$B�qm�ا�wz:YW	򦧑%r&@�Wz��&�7�b�۶(���¯��%�����d&I0�|�-�N���&2�=�{v����l��)^Yֺ��~��\"K�� �L�xI�\Z��ugV�Y�~�P]&���@�[�&��#�L�Ŭ��Є/��-c�Ǚ�Mf�H��k�������#�!�K|I��[�	!mI�Ӹ�ZS������#������7��O�<He��.��k�Pb�cbaڝ�lɽ�=�\Z��� �o�Ӡ���82���x<~�����i0!�Ȫȭ\Zd�#�MH#̯1�c\'=ß;ྏ��V5q�b��.~ Ik�W,�gfB�?�Y*⚪�q�0��\0��\r����ݻw;���9xg5T:TĢ	���*\"!*���M�ݡ5c�룣��SL5K\"��\"w�3��J*S����o��ޭ�?�Y�:�\"	.�^A�ص]N�bq\r���5=�u�˸1g���d B���:�\0��`�׾LQu�K7��+�?va`�9�qr�R���(�r/��/~��u�βO;\n�M9e�>x�R�6F&Q��kqM��$��P��p4��\\�j�%�������iYb�Z�Sɣ\Zg�d�[q AU�+g�y�&~��1�*Qd��T�s���i��\"~#U9\n�v��Tc��yi����ô������[ϝ?/v�F�B�-�,�P�Il���s��ͥ\"�9IhQ�a[Q2\\��Z\"+V�e�����������.\rv\'^ط���J�oh�]��X���b�*LƺTĹ\Z�RߢN�;%B�c����g�ޛ�B��+�<E�S�#�,�Ol�����;�m1�.�IR\'_�.Ϝ�h�;::JE�P��������H\0\0\0\0IEND�B`�','2016-04-19 19:31:36'),(6,46,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq�\0\0\0	pHYs\0\0a\0\0a�ø�\0\0IDATx��[yl�}������.���Z\"EI�Hɲdٲx�t�mN�4G�M�W��iXjP���?�\Z6\\�h�Z�����@Z�1�֔D��,ǢDY�(R\\�\"�䒻�{v�����d���^�\r4�˙w��{��y�?���\r���j�����/FL}Ǻ���c��p�P�e�=��LL���4m�������*>��/j;�d���Ȋ]��,�1;9����uND�7���O��\Z#䅀�������\rM�+�k��s�\\O�;1�k��]Ӈ���y��,>�s���c��d�;NW!67Wܺ�kq��y������\r�0�u��N�w��c��N�#F�\Z@�Mڜh�%�Ry������d-���$Rp��EQp�<��[?�G��4@�o{I�؟V��P�X�a=54\"����,$�D�?:�@}����>|D�X^�n5GbE���?�/AumI�mŬ08EQ����\Zхhj�4�}��{�A����e��背�&���$����[�֚p�B��Z�\Zu��چRT���n;�c��ilm��q�@AI�0+H��ο��\'�~����jv��MŶ��M��O�,,<}�����Ŵ	x������d۷i��\n{�f����¤�4c�y%���X�?��\r��0��s===A�N�B�H<~Jߐ��� F��`�Ϊ[��q�#2?	�����(���#��}��WH���Xx�:ս��l��������ᵈ/�]��!��F|h&�\n�k�Bd�oj�\n:����w�M��\\Hw�Mn�����t���tK��}��������x�,9�&!�Ht����(�w�a-0��Wh��d�)k�&ʉ� �`�&�+���l4Nׁ���E$�f�<�w���d���ػg\Z\Z0r�F����?�4�~�Q����a���L�����հX�\r�����D�O�P�4́���^?�Q[Zn<A���$}�D__�����cKKK���j��f��������%�\0!<����*�W��F�1�t;�U�ng#�XL/kBBe�k_x���ƱS��\'k�4��b�3�J��PO���b��ZYV�&��W\\��B�0&\'\'{�h��?jo���^V���	����*(��s�2҄��2��	v��B�&{.�&p��ժ��߽y��۫�ƀC�/\\�G����c1Ѱh�S�с]��>�X�`2Ǖ\n#�¡8v���ChB�͌��5����^��߰��	f�~edd$��߱��HMUհwz���^�|�D��[O���m��S&�\\�rwͺ�k5�S��&��ZI)��\\Q`3�&�\"�D�q}%	�kj��߿�!������T��׿\\�r��><,���N���`���;:8�&�di��ْ��\nb�=��񱅒��Os\Zz�4���м�,Ѩ�x�w�o��S��g0��5gΜ	d2������P���E���S���׮�9���	xa),1����J����Rx�d*�\09zv�d�Mb��u\\�����Sd��~�I���V�ٰ�ͅѹ�Z���S��/�ʭd���7S�y[�~����^�^Y�k�0�	���>=�Mߒx��w\'{�	U�{��;,h$��/Q��������:=0!���m����XD}f誷�j5;;�⵱Y����5:�+�Ǹ7�i��PDG,��Y��UjBm�&�f�U�_��4�O���?��k���>�1ʛ�]�X\\}T�1-zJD,D�LK�ʻ7Q�vd��\Z���3A\\���X	�\'����[�ؽ�� ��i?|�5��e��������twY%5��`AVZ��I,��@K���ސ� ј�WO��ԅc��Ώ�8}�/��^���Z�������\Z��\r3�:��r#�e�s�����4����,JY��I�o\0��qJ���ɵgݱP��f\n���+L����Ci�;]#��<���w\0B���8f�Ռڕ�J�����\Z\Z\'�2\n�V���aÞq$B�yD�	o��?�e��@UU�L&#��u�g� dC�P|���h��}��ǽY	/ T�I��,)��l�B0�B�[������!�+��	��ʪ�B�WVT��f������\Z\ZRg����k��Z䈼����\'�n[�r��ￏD\"a��b��a�#@��v.Ib7�a䀼i�,��#7Y��?4:JY�J�7>�)�v���C�c�,����C!��{/lhڴ	��y���B�״�\"䅀`(�1o<�>f������m�fl����{��V�(���o��A�b$�q����#����16fh@��8��1-R�Z,��>�:p�\r�\n#/�����\no@�|���EBQ5w\r�����������\r}����v̜	�4�\0TN}g���ۛ����Ø������F8���q^������뷚��\Z�w�����e��n���O��p��M�;49O,��v[v�[v�0�\\����BƲ=�K�:���5�J+=A@:(.*B]m�̗���×�3�~�\0�9��[����}*Ԧ\"�s/�D��%�vV�2뮶�&��b���Y���Pc5�p��!��J(����q��%ȩ2Ng��!b��&%\'�q�A��+�lV���9�pl>Jϝ�Ǧ�ڷI�,���k�����KDLq��s�q=BIR2�,�@��M�I�����\\�^�\Z-y�������{�m�~��J\'�C�$B�qm�ا�wz:YW	򦧑%r&@�Wz��&�7�b�۶(���¯��%�����d&I0�|�-�N���&2�=�{v����l��)^Yֺ��~��\"K�� �L�xI�\Z��ugV�Y�~�P]&���@�[�&��#�L�Ŭ��Є/��-c�Ǚ�Mf�H��k�������#�!�K|I��[�	!mI�Ӹ�ZS������#������7��O�<He��.��k�Pb�cbaڝ�lɽ�=�\Z��� �o�Ӡ���82���x<~�����i0!�Ȫȭ\Zd�#�MH#̯1�c\'=ß;ྏ��V5q�b��.~ Ik�W,�gfB�?�Y*⚪�q�0��\0��\r����ݻw;���9xg5T:TĢ	���*\"!*���M�ݡ5c�룣��SL5K\"��\"w�3��J*S����o��ޭ�?�Y�:�\"	.�^A�ص]N�bq\r���5=�u�˸1g���d B���:�\0��`�׾LQu�K7��+�?va`�9�qr�R���(�r/��/~��u�βO;\n�M9e�>x�R�6F&Q��kqM��$��P��p4��\\�j�%�������iYb�Z�Sɣ\Zg�d�[q AU�+g�y�&~��1�*Qd��T�s���i��\"~#U9\n�v��Tc��yi����ô������[ϝ?/v�F�B�-�,�P�Il���s��ͥ\"�9IhQ�a[Q2\\��Z\"+V�e�����������.\rv\'^ط���J�oh�]��X���b�*LƺTĹ\Z�RߢN�;%B�c����g�ޛ�B��+�<E�S�#�,�Ol�����;�m1�.�IR\'_�.Ϝ�h�;::JE�P��������H\0\0\0\0IEND�B`�','2016-04-19 19:31:40');
/*!40000 ALTER TABLE `album_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (46,39,'8888',1,'2016-04-18 14:52:37','2016-04-19 22:18:59'),(47,39,'ne44444',1,'2016-04-18 14:53:04','2016-04-19 10:00:49'),(48,39,'album1',1,'2016-04-18 14:55:00',NULL),(49,39,'album1',1,'2016-04-18 14:56:43',NULL),(55,39,'album1',1,'2016-04-18 15:09:40',NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('admin','37',1460987646),('client','40',1460987968),('client','63',1462430442),('client','64',1462432963),('client','65',1462433725),('client','66',1462436989),('photographer','39',1460987646),('photographer','60',1460987968),('photographer','61',1460987968),('photographer','62',1460987968),('photographer','63',1461051559);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('admin',1,NULL,NULL,NULL,1460585115,1460585115),('client',1,NULL,NULL,NULL,1460995412,1460995412),('createAlbum',2,'Create an album',NULL,NULL,1460585102,1460585102),('deleteAlbum',2,'Delete album',NULL,NULL,1460585102,1460585102),('indexAlbum',2,'Index an album',NULL,NULL,1460585102,1460585102),('indexAllowAlbum',2,'Index allowed album','isAllow',NULL,1460995413,1460995413),('indexAllowImages',2,'Index allow images','isAllow',NULL,1461100347,1461100347),('indexImages',2,'Index images',NULL,NULL,1461100347,1461100347),('photographer',1,NULL,NULL,NULL,1460585115,1460585115),('updateAlbum',2,'Update album',NULL,NULL,1460585102,1460585102),('updateOwnAlbum',2,'Update own album','isAuthor',NULL,1460585130,1460585130),('viewAlbum',2,'View album',NULL,NULL,1460585102,1460585102),('viewAllowAlbum',2,'View allowed album','isAllow',NULL,1460995413,1460995413),('viewOwnAlbum',2,'View own album','isAuthor',NULL,1460633268,1460633268);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('admin','createAlbum'),('photographer','createAlbum'),('admin','deleteAlbum'),('admin','indexAlbum'),('indexAllowAlbum','indexAlbum'),('indexImages','indexAlbum'),('client','indexAllowAlbum'),('photographer','indexAllowAlbum'),('client','indexAllowImages'),('photographer','indexAllowImages'),('admin','indexImages'),('indexAllowImages','indexImages'),('admin','updateAlbum'),('updateOwnAlbum','updateAlbum'),('photographer','updateOwnAlbum'),('admin','viewAlbum'),('viewAllowAlbum','viewAlbum'),('viewOwnAlbum','viewAlbum'),('client','viewAllowAlbum'),('photographer','viewOwnAlbum');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
INSERT INTO `auth_rule` VALUES ('isAllow','O:30:\"app\\controllers\\auth\\AllowRule\":3:{s:4:\"name\";s:7:\"isAllow\";s:9:\"createdAt\";i:1460995412;s:9:\"updatedAt\";i:1460995412;}',1460995412,1460995412),('isAuthor','O:31:\"app\\controllers\\auth\\AuthorRule\":3:{s:4:\"name\";s:8:\"isAuthor\";s:9:\"createdAt\";i:1460585130;s:9:\"updatedAt\";i:1460585130;}',1460585130,1460585130);
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1460360729),('m140506_102106_rbac_init',1460360732);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_images`
--

DROP TABLE IF EXISTS `order_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `image_id` int(10) unsigned NOT NULL,
  `type` enum('print','digital') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order` (`order_id`,`image_id`) USING BTREE,
  KEY `order/images_ibfk_2` (`image_id`),
  CONSTRAINT `order_images_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_images_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `album_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_images`
--

LOCK TABLES `order_images` WRITE;
/*!40000 ALTER TABLE `order_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `status` enum('new','in progress','reject','done') NOT NULL DEFAULT 'new',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` smallint(5) unsigned NOT NULL,
  `limitation` smallint(5) unsigned NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_packages`
--

DROP TABLE IF EXISTS `user_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `package` (`package_id`) USING BTREE,
  KEY `user` (`user_id`) USING BTREE,
  CONSTRAINT `user_packages_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_packages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_packages`
--

LOCK TABLES `user_packages` WRITE;
/*!40000 ALTER TABLE `user_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(100) DEFAULT NULL,
  `role` enum('client','photographer','admin') NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (37,'uKQ0ZyLCg3giWlQ_DDUZCg5JueY8Qfjw','admin','nata','nata','nata','111','2016-04-22 13:19:27','2016-04-18 10:12:09','EJ8QuCSryyx4u5_dqhLB78gJBBpqca_n','$2y$13$NIILQAYRz6Xaw9EbzSkgWu4L9xRz2ew50R7hS/0JioYTf6po11Okq'),(39,'photo','photographer','photo','photo','photo','777','2016-04-19 22:15:15','2016-04-18 13:14:17','wuyn0I4YCH9dCbrVrNhqf9ulAsNarsg4','$2y$13$2t6LdcWo.n7Qeoh8wWlSQ.E1f5gDnAh5eQTHq5nqeIcJpPo4g.lEi'),(40,'mBBnGyhhDnvTyG2q-yKf0IivL8Gg0EwD','client','client','client','client','888','2016-04-19 22:16:16','2016-04-18 13:28:07','Cv2v6ABEIy8CpKZTD1ZXxV6_IuYYtpZD','$2y$13$i1y5Pydpkpevkd2heVQyduL8XqyFaEBZtC9/8oRTbRGTsaYgd8ahi'),(60,'photo1','photographer','photo1','photo1','photo1','111','2016-04-18 14:00:56','2016-04-18 13:58:19','3reYysxB9SuhVrli1aFidc6Sw0sHIx1K','$2y$13$LAE35qvRmChN6BYxwpo2BO7gxPvp6FcC8vHFdljNMCcJlhgqUSlmm'),(61,'photo2','photographer','photo2','photo2','photo2',NULL,NULL,'2016-04-18 13:59:28','VhEFnKnd2CcsKQXpvgV2TZ1IoPseM1QF','$2y$13$1jssnTjsljNdWn6WbeQfBOd3BRkgRsNB6KGbYQRKK5/dgc/fYi/g6'),(62,NULL,'client','','','',NULL,NULL,'2016-05-04 15:02:17',NULL,NULL),(63,'F1wKd-E5SLoovWKMQ853M_QoQAnUHAoP','client','test','test@mail.com','test',NULL,NULL,'2016-05-05 06:40:42','cGIdQ2_N2mFP8zg0XfpsDe8-jrHGCN3d','$2y$13$9m1j8QJWaD4gRZSuT6vd0eenOtgLZ0/mtIDog6KX3OpnZqtFVhEc2'),(64,NULL,'client','test','test2@mail.com','test',NULL,NULL,'2016-05-05 07:22:43','6CqV63r61dd_xw85tuH58PJIeDf_iYCy','$2y$13$g7FUUNrtcVwRTCm7Dv5Z/OoGYzIr7s9o4cBsoQFlflo2Og2Vc5/jy'),(65,'9zbBugnY0hFc99ywTlewXkOBrfaeh9cG','client','test','test3@mail.com','test',NULL,NULL,'2016-05-05 07:35:25','AiRgFaBBEa0d_x0gAJoWREgatVdSuQPg','$2y$13$hIsEynzCYmMN82IyR5LowOiXUi3e09LSitO0IVh/cgO/Rv6ENmOtm'),(66,NULL,'client','test','test4@mail.com','test',NULL,NULL,'2016-05-05 08:29:49','h2Rbdrawuw735kDE8PgavH-AMHMMsQr2','$2y$13$h/obVnLnLTEzzoXdvyiPpe8NRmX.b/pU6Wat8yJ.yd/l9t7gu/X/a');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-05 11:53:34
