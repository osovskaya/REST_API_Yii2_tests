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
INSERT INTO `album_images` VALUES (5,46,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiqÞ\0\0\0	pHYs\0\0a\0\0a•Ã¸¶\0\0IDATxœí[yl×}þÞÌìÁå.åòZ\"EI”HÉ²dÙ²xÄtàmNŠ4GíMòW“ iXjP¶°ë?‚\Z6\\¤h’Z–¤µƒ@ZÃ1âÖ”D“º,Ç¢DY¶(R\\’\"—ä’»Ü{væõ÷†¤d’»ä^ª\r4ð¸Ë™wÌï{¿ë½y‹?àøÿ\r–ïjßãŒëÔû/FL}Çº»¡ãcŠ¼pôPÛe‰=©˜LLÓàÐ4m˜ƒýå£ÿØ÷*>†È/j;Ìdö¸£ÈŠ]÷í,›1;9†«ÃÐuNDè7ãóçOôÿ\Z#ä…€£Ûö´öÝ§\rMÛ+ŒkŠÙs\\OÀ;1Škƒƒ]Ó‡Àø—y¢ÿ,>síàècž•dé;NW!67WÜº®kq¨±y¢˜¡¸¬µ\rÕ0›uøç‚Né›wÖðc§ÆNà#FÖ\Z@ŽMÚœhû%ûRy•õ›ËÖÆd-Ùê$RpñìEQp†<òø[?ÆGˆ¬4@ßo{I’ØŸVº‹P×X¶a=54\"´Æøè,$ÙDõ?:ø@}ø•“ž>|DÈX^în5GbE¯’Ú?ä®/AumIÚmÅ¬08EQ’¡ ¸\ZÑ…hjŒ4}ï‘Ç{ŸAžÐÕÕeçÑèƒŒ±&Š¿’$½ÛóÖ[èÖšpœBø¨Zü\ZuüÉÚ†RTº‹Ón;ïcøýilm©ÄqÓ@AI‘0+HàšÎ¿ýõ\'û~†ÐÚÚjv¦¯MÅ¶êöMŠËOÏ,,<}ùòåøòÅ´	x¹»ËÇßdÛ·i‹®\n{ÚfÿÁ¶î¨€Â¤ñ4cóy%Á˜õXì?Å×\rªö0‹ås===Añ”NçBøH<~Jß¡ð³Þ F®Í`ûÎª[ÂÓq×#2?	«£²ÉÂ(‰ú×#µ}‚„WHøãØXx£:Õ½•‹lèÕÝåŠÅãçÈáµˆ/Â]º˜!áÇF|h&á\nÍkîBdƒojŽ\n:¸öÙÏwÔMïõ\\HwœMn÷“ôñÕtê‰ìtKÛ}íÆØØÀºáÕxì,9‘&!¼HtÒÅä¸ß(Ûw¹a-0¥¬Wh·Àd–)kœ&Ê‰Õ á`û&Ï+½£ïl4N×ÛéãE$ÓfÆ<ôwšŠ“dÀØ»g\Z\Z0rãFëÐÈÈ?§4~ØQ¯Æã©a£˜ÁL…÷ÞðÕ°X•\rë“ªßìDØOæPè4ÌÉüç”^?ºQ[Zn<A«™„$}òD__ý‰þþ­cKKKõêêjã¦Ífƒ»ºº¹ã¾û¶%Õ\0!<—õó’Ì*›WÙîF»1ßt;îª¦™UÒng#±XL/kBBeœk_x¸³îÆ±Sžß\'k³4ûÏb¥3JºþPOÿ­ÜbÄã¹ZYVæ&õßW\\¼¹Bá0&\'\'{ÖhÀó?jo…¢ÿ^V¤ò–»Ü	ïöû®*(¦Ìs¬2Ò„†¦2„¤	vÒÅB‰&{.•&pÎ€ÕªÏùß½yæÌÛ«ëÆ€Cç/\\ðG£ÑÅÿc1Ñ°hÅSùÑ]’†>¾XÌ`2Ç•\n#æÂ¡8vð²’ýChBÍŒé‰õ5¡£££^âüß°’€	fµ~edd$±ºß±±±HMUÕ°wzú‹Â^º|±DâÙ[OúâámŒ³S&“\\ØrwÍºŽk5®S‚&ÐÜZI)®„\\Q`3ù&ƒ\"õD‚q}%	›kj„íß¿¢!Íþ‰ÞÞÞTý’×¿\\ír¾><,Çãñ—Nö÷¿`ØÎ‡;:8ø&“diÙí†Ù’ží’\nbè=¯±ñ±…’Ê‘Os\Zz4¡¨±Ð¼‘,Ñ¨ßxîwêo¹¢S•Ûg0ªë5gÎœ	d2†ôü¡¶ÏPÜù‹E¶ìÜS“‘ð×®Ü9á÷Ê	xa),1¢ù»çJ‹•—±RxòŽd*¼\09zvÜd‘MbæÓu\\º¦ãýËSdëÒ~·I˜‚ÙV„Ù°‰Í…Ñ¹ªZ‚éúSÙô/ÑÊ­dó™•„7Sò²y[ù~‚Žƒó^ô^YÜkü0è	Žöœ>=’Mß’xþÁw\'{Û	UÃ{“°;,h$áÿ/Qè°âäŽ™€¶â:=0!Ëÿm¿ŠÎñ¥XD}fèª·Òj5;;Žâµ±YøâÒÔ5:‘+ÔÇ¸7ŽiŸŠPDG,®ÃY¬ÀUjBm¥&å¶fÅUŽ_ü×4®O­í§²˜?óÒk½£Ù>‡1Ê›Ý]ÊX\\}Tÿ1-zJD,DÒLKàÊ»7Qávd´²\Z‘¨Ž3A\\¸ÄðX	\'­§ð[ê­Ø½Íš ü÷i?|þ5¡”eÿûë§ú¿Œ°Â€twY%5þ”`AVZ¨˜I,˜š@KèØ×ÞÕ Ñ˜ŽWOÎáÔ…c¦óÎœ8}ú/€Ü^º¬ÈZ¾ÞÝ¥î†Ä÷Â’\Z¨š\r3Ó:… r#ìeƒs—‚øûÃ4‹ùžò,JYø÷Iøo\0¹¿qJô™ØÉµgÝ±PïŸýf\n¯†‘+L¤´šCi‘;]#¾ï<Ýÿòw\0BåŸøé8fæÕŒÚ•ÐJ­¼¬”¦\Z\Z\'Ë2\n¬Vˆµ¼aÃžq$B¼yDÞ	oºâ?¨eÜÖ@UU˜L&#¿ÐugÔ dC´P| ­íŸh­ÿ}äòŒ£Ç½Y	/ TÝIªî,)ÕlÆB0¸Bø[àü¯ˆ„¯!È+³ó	œ½Êª­BÂWVT ÐfÃÄÔÊÈš\Z\ZRgšœÿ¤kÿþZäˆ¼šÀ‹Ç\'²n[ár›ƒï¿D\"a¤¨bëÊa·#@öŸv.Ib7èaä€¼iÀ,¥Ò#7Y·ê?4:JYŸJÉ7>…)°vµ·ïCÈc”,ÅÔìÛC!´ß{/lhÚ´	¾ùyÃû‡Bë›×´ï\"ä…€`(Ž1o<§>fçæà÷û±móflª­Åý{÷’Vù(¤ÆÖoÈØAñb$Ûqóâææ#˜òœû¹16fh@¼8¡Ì1-RíZ,¶—>³:p‘\rÆ\n#/‚Ïùýé\no@â|¶ãåEBQ5w\r¯¢¼Üðþ‚€ÙÙÙ\r}€ÆîÎvÌœ	Ð4ã\0TN}g·³µÛ››ô÷Ã˜˜˜À¹·ßF8¼ŽŠq^•õØÈÑè¢ë·š²Û\ZÂw¶·£µ¥eðn·ü©OÁáp¬×MÖ;49O,¦½v[ví[vì0„\\‹©³BÆ²=èK»:¥ŽÌ5ÀJ+=A@:(.*B]mŠÌ—±Œ·Ã—‘3š~›\0«9³¶[šš’ª}*Ô¦\"€s/²DÎð%„vV»2ë®¶¦&£úb¡”ôY×ÅPc5Ãpšë!áüJ(×žñqÊç %È©2Ng™¡!b…¸&%\'˜qîA–È+µlVáèÆ9pl>JÏíÇ¦ŠÚ·I°,™®k˜žŸÀÅKDLqöÝsq=BIR2°,³@œM€I·ŸøÚ\\Ÿ^—\Z-yûûÞÄ»£¸{ëmá~¨‹J\'ÃCû$B×qmÈØ§…wz:YW	ò¦§‘%r&@‘Wzÿ–&7ëb¹Û¶(±§ŽÂ¯´Ý%ãÚƒÆÿd&I0¸|ä-äNÀªÃ&2ª=Í{v‡¡ºlãÐ)^YÖº¢º~ÝØ\"K‚ß äL€xIº\ZÛê¤ugVÀY”~ÞP]&áâÀ@²[º&ËÏ#äL€Å¬¬ÉÐ„/èØ-c½Ç™¤Mf“H¹£k®ëœ÷õööŽ#¬!€K|IÏÒ[Ý	!mIŽÓ¸ŠZSóëñê„Ó#˜¢ÞÍÉÉ7èãO¨<Heñî.£÷kžPbìcbaÚØlÉ½Þ=ä\Z«““ oœÓ ¦±82¹–€x<~ñÚÈÈòi0!´ÈªÈ­\Zdˆ#³MH#Ì¯1àc\'=ÃŸ;à¾ëêV5q’b†ø.~ Ik•W,‡gfB‹?‰Y*âšªê¨qÁ0‘™\0Œƒ\rŸèìÄÝ»w;¿“Þ9xg5T:TÄ¢	£„Ã*\"!*áÅâMàÝ¡5còë££“SL5K\"¨Š\"w±3åîJ*SÜõ­ÏoýêÞ­Î?³Y•:£\"	.Ò^A€Øµ]Nbq\rÃãþ5=³uŽË¸1g…ÃÕd B¯½þ:\0öÕ`–×¾LQu†K7ˆ¨+ç‰?va`à9¤qräRª›©( r/•¢/~¢¾uÿÎ²O;\nÌM9eò>xÝR—6F&Q†«kqM˜$ËÞPÓõp4ÁØ\\Ôj%³Ð«¢úÊí‘iYb£Z‚SÉ£\Zgò¯dÕ[q AUÕ+gÞyç&~—·1Ä*Qd‰ÑTÖsÆâžØi©§\"~#U9\nœv“ÅTc“¾yiž°ïÞÃ´ø¹ÇöíÇ[Ï?/v…F„Bë-Å,ÌPëƒIlàÍ×s¢áÍ¥\"ê9IhQÄa[Q2\\ü¦Z\"+V‹eÿýû÷£ª²—ÅÙÞ.\rv\'^Ø·©ø–JÚohÒ]‰½X¹ìˆb*LÆºTÄ¹\ZÓRß¢NÆ;%B½c±Øù³gÏÞ› B‘È+ï<EŽS¼#ê,´OlŠÓ‰;Æm1Ô.ÇIR\'_Â.ÏœØhÔ;::JE‰P®Åð¿¿¤­ÚïH\0\0\0\0IEND®B`‚','2016-04-19 19:31:36'),(6,46,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiqÞ\0\0\0	pHYs\0\0a\0\0a•Ã¸¶\0\0IDATxœí[yl×}þÞÌìÁå.åòZ\"EI”HÉ²dÙ²xÄtàmNŠ4GíMòW“ iXjP¶°ë?‚\Z6\\¤h’Z–¤µƒ@ZÃ1âÖ”D“º,Ç¢DY¶(R\\’\"—ä’»Ü{væõ÷†¤d’»ä^ª\r4ð¸Ë™wÌï{¿ë½y‹?àøÿ\r–ïjßãŒëÔû/FL}Çº»¡ãcŠ¼pôPÛe‰=©˜LLÓàÐ4m˜ƒýå£ÿØ÷*>†È/j;Ìdö¸£ÈŠ]÷í,›1;9†«ÃÐuNDè7ãóçOôÿ\Z#ä…€£Ûö´öÝ§\rMÛ+ŒkŠÙs\\OÀ;1Škƒƒ]Ó‡Àø—y¢ÿ,>síàècž•dé;NW!67WÜº®kq¨±y¢˜¡¸¬µ\rÕ0›uøç‚Né›wÖðc§ÆNà#FÖ\Z@ŽMÚœhû%ûRy•õ›ËÖÆd-Ùê$RpñìEQp†<òø[?ÆGˆ¬4@ßo{I’ØŸVº‹P×X¶a=54\"´Æøè,$ÙDõ?:ø@}ø•“ž>|DÈX^în5GbE¯’Ú?ä®/AumIÚmÅ¬08EQ’¡ ¸\ZÑ…hjŒ4}ï‘Ç{ŸAžÐÕÕeçÑèƒŒ±&Š¿’$½ÛóÖ[èÖšpœBø¨Zü\ZuüÉÚ†RTº‹Ón;ïcøýilm©ÄqÓ@AI‘0+HàšÎ¿ýõ\'û~†ÐÚÚjv¦¯MÅ¶êöMŠËOÏ,,<}ùòåøòÅ´	x¹»ËÇßdÛ·i‹®\n{ÚfÿÁ¶î¨€Â¤ñ4cóy%Á˜õXì?Å×\rªö0‹ås===Añ”NçBøH<~Jß¡ð³Þ F®Í`ûÎª[ÂÓq×#2?	«£²ÉÂ(‰ú×#µ}‚„WHøãØXx£:Õ½•‹lèÕÝåŠÅãçÈáµˆ/Â]º˜!áÇF|h&á\nÍkîBdƒojŽ\n:¸öÙÏwÔMïõ\\HwœMn÷“ôñÕtê‰ìtKÛ}íÆØØÀºáÕxì,9‘&!¼HtÒÅä¸ß(Ûw¹a-0¥¬Wh·Àd–)kœ&Ê‰Õ á`û&Ï+½£ïl4N×ÛéãE$ÓfÆ<ôwšŠ“dÀØ»g\Z\Z0rãFëÐÈÈ?§4~ØQ¯Æã©a£˜ÁL…÷ÞðÕ°X•\rë“ªßìDØOæPè4ÌÉüç”^?ºQ[Zn<A«™„$}òD__ý‰þþ­cKKKõêêjã¦Ífƒ»ºº¹ã¾û¶%Õ\0!<—õó’Ì*›WÙîF»1ßt;îª¦™UÒng#±XL/kBBeœk_x¸³îÆ±Sžß\'k³4ûÏb¥3JºþPOÿ­ÜbÄã¹ZYVæ&õßW\\¼¹Bá0&\'\'{ÖhÀó?jo…¢ÿ^V¤ò–»Ü	ïöû®*(¦Ìs¬2Ò„†¦2„¤	vÒÅB‰&{.•&pÎ€ÕªÏùß½yæÌÛ«ëÆ€Cç/\\ðG£ÑÅÿc1Ñ°hÅSùÑ]’†>¾XÌ`2Ç•\n#æÂ¡8vð²’ýChBÍŒé‰õ5¡£££^âüß°’€	fµ~edd$±ºß±±±HMUÕ°wzú‹Â^º|±DâÙ[OúâámŒ³S&“\\ØrwÍºŽk5®S‚&ÐÜZI)®„\\Q`3ù&ƒ\"õD‚q}%	›kj„íß¿¢!Íþ‰ÞÞÞTý’×¿\\ír¾><,Çãñ—Nö÷¿`ØÎ‡;:8ø&“diÙí†Ù’ží’\nbè=¯±ñ±…’Ê‘Os\Zz4¡¨±Ð¼‘,Ñ¨ßxîwêo¹¢S•Ûg0ªë5gÎœ	d2†ôü¡¶ÏPÜù‹E¶ìÜS“‘ð×®Ü9á÷Ê	xa),1¢ù»çJ‹•—±RxòŽd*¼\09zvÜd‘MbæÓu\\º¦ãýËSdëÒ~·I˜‚ÙV„Ù°‰Í…Ñ¹ªZ‚éúSÙô/ÑÊ­dó™•„7Sò²y[ù~‚Žƒó^ô^YÜkü0è	Žöœ>=’Mß’xþÁw\'{Û	UÃ{“°;,h$áÿ/Qè°âäŽ™€¶â:=0!Ëÿm¿ŠÎñ¥XD}fèª·Òj5;;Žâµ±YøâÒÔ5:‘+ÔÇ¸7ŽiŸŠPDG,®ÃY¬ÀUjBm¥&å¶fÅUŽ_ü×4®O­í§²˜?óÒk½£Ù>‡1Ê›Ý]ÊX\\}Tÿ1-zJD,DÒLKàÊ»7Qávd´²\Z‘¨Ž3A\\¸ÄðX	\'­§ð[ê­Ø½Íš ü÷i?|þ5¡”eÿûë§ú¿Œ°Â€twY%5þ”`AVZ¨˜I,˜š@KèØ×ÞÕ Ñ˜ŽWOÎáÔ…c¦óÎœ8}ú/€Ü^º¬ÈZ¾ÞÝ¥î†Ä÷Â’\Z¨š\r3Ó:… r#ìeƒs—‚øûÃ4‹ùžò,JYø÷Iøo\0¹¿qJô™ØÉµgÝ±PïŸýf\n¯†‘+L¤´šCi‘;]#¾ï<Ýÿòw\0BåŸøé8fæÕŒÚ•ÐJ­¼¬”¦\Z\Z\'Ë2\n¬Vˆµ¼aÃžq$B¼yDÞ	oºâ?¨eÜÖ@UU˜L&#¿ÐugÔ dC´P| ­íŸh­ÿ}äòŒ£Ç½Y	/ TÝIªî,)ÕlÆB0¸Bø[àü¯ˆ„¯!È+³ó	œ½Êª­BÂWVT ÐfÃÄÔÊÈš\Z\ZRgšœÿ¤kÿþZäˆ¼šÀ‹Ç\'²n[ár›ƒï¿D\"a¤¨bëÊa·#@öŸv.Ib7èaä€¼iÀ,¥Ò#7Y·ê?4:JYŸJÉ7>…)°vµ·ïCÈc”,ÅÔìÛC!´ß{/lhÚ´	¾ùyÃû‡Bë›×´ï\"ä…€`(Ž1o<§>fçæà÷û±móflª­Åý{÷’Vù(¤ÆÖoÈØAñb$Ûqóâææ#˜òœû¹16fh@¼8¡Ì1-RíZ,¶—>³:p‘\rÆ\n#/‚Ïùýé\no@â|¶ãåEBQ5w\r¯¢¼Üðþ‚€ÙÙÙ\r}€ÆîÎvÌœ	Ð4ã\0TN}g·³µÛ››ô÷Ã˜˜˜À¹·ßF8¼ŽŠq^•õØÈÑè¢ë·š²Û\ZÂw¶·£µ¥eðn·ü©OÁáp¬×MÖ;49O,¦½v[ví[vì0„\\‹©³BÆ²=èK»:¥ŽÌ5ÀJ+=A@:(.*B]mŠÌ—±Œ·Ã—‘3š~›\0«9³¶[šš’ª}*Ô¦\"€s/²DÎð%„vV»2ë®¶¦&£úb¡”ôY×ÅPc5Ãpšë!áüJ(×žñqÊç %È©2Ng™¡!b…¸&%\'˜qîA–È+µlVáèÆ9pl>JÏíÇ¦ŠÚ·I°,™®k˜žŸÀÅKDLqöÝsq=BIR2°,³@œM€I·ŸøÚ\\Ÿ^—\Z-yûûÞÄ»£¸{ëmá~¨‹J\'ÃCû$B×qmÈØ§…wz:YW	ò¦§‘%r&@‘Wzÿ–&7ëb¹Û¶(±§ŽÂ¯´Ý%ãÚƒÆÿd&I0¸|ä-äNÀªÃ&2ª=Í{v‡¡ºlãÐ)^YÖº¢º~ÝØ\"K‚ß äL€xIº\ZÛê¤ugVÀY”~ÞP]&áâÀ@²[º&ËÏ#äL€Å¬¬ÉÐ„/èØ-c½Ç™¤Mf“H¹£k®ëœ÷õööŽ#¬!€K|IÏÒ[Ý	!mIŽÓ¸ŠZSóëñê„Ó#˜¢ÞÍÉÉ7èãO¨<Heñî.£÷kžPbìcbaÚØlÉ½Þ=ä\Z«““ oœÓ ¦±82¹–€x<~ñÚÈÈòi0!´ÈªÈ­\Zdˆ#³MH#Ì¯1àc\'=ÃŸ;à¾ëêV5q’b†ø.~ Ik•W,‡gfB‹?‰Y*âšªê¨qÁ0‘™\0Œƒ\rŸèìÄÝ»w;¿“Þ9xg5T:TÄ¢	£„Ã*\"!*áÅâMàÝ¡5còë££“SL5K\"¨Š\"w±3åîJ*SÜõ­ÏoýêÞ­Î?³Y•:£\"	.Ò^A€Øµ]Nbq\rÃãþ5=³uŽË¸1g…ÃÕd B¯½þ:\0öÕ`–×¾LQu†K7ˆ¨+ç‰?va`à9¤qräRª›©( r/•¢/~¢¾uÿÎ²O;\nÌM9eò>xÝR—6F&Q†«kqM˜$ËÞPÓõp4ÁØ\\Ôj%³Ð«¢úÊí‘iYb£Z‚SÉ£\Zgò¯dÕ[q AUÕ+gÞyç&~—·1Ä*Qd‰ÑTÖsÆâžØi©§\"~#U9\nœv“ÅTc“¾yiž°ïÞÃ´ø¹ÇöíÇ[Ï?/v…F„Bë-Å,ÌPëƒIlàÍ×s¢áÍ¥\"ê9IhQÄa[Q2\\ü¦Z\"+V‹eÿýû÷£ª²—ÅÙÞ.\rv\'^Ø·©ø–JÚohÒ]‰½X¹ìˆb*LÆºTÄ¹\ZÓRß¢NÆ;%B½c±Øù³gÏÞ› B‘È+ï<EŽS¼#ê,´OlŠÓ‰;Æm1Ô.ÇIR\'_Â.ÏœØhÔ;::JE‰P®Åð¿¿¤­ÚïH\0\0\0\0IEND®B`‚','2016-04-19 19:31:40');
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
