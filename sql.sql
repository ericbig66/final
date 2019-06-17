CREATE DATABASE  IF NOT EXISTS `datasheet` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `datasheet`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: datasheet
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `identity`
--

DROP TABLE IF EXISTS `identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `identity` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `idname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abmin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identity`
--

LOCK TABLES `identity` WRITE;
/*!40000 ALTER TABLE `identity` DISABLE KEYS */;
INSERT INTO `identity` VALUES (1,'abmin1','ohshit','9487@cycu.edu.tw','1000/01/01','1','abmin1',NULL,'girl'),(2,'user1','12345abc','1234@cycu.edu.tw','1000/01/01','0','user1',NULL,'girl'),(3,'user2','6789bca','5678@cycu.edu.tw','1000/01/02','0','user2',NULL,'boy'),(4,'拉拉','123456','123@gmail.com','1234/01/01',NULL,'abc','123123','female'),(5,'秋雲紋','1','123@12','',NULL,'123132','','male'),(6,'512224','512224','512224@gmail.com','2019-06-04',NULL,'512224','512224','female'),(7,'aaa','aaa','aaa@aa','2019-05-29',NULL,'aa','aa','male'),(8,'123','123','123@123aa','2019-01-31',NULL,'123','123','female'),(9,'1231','123','123@123','2019-05-28',NULL,'123','123','male');
/*!40000 ALTER TABLE `identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `proid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'紅色磚紋壁紙','1','1000','1000','user1','桃園市平鎮區','2019/9/21'),(2,'淺色磚紋壁紙','2','1000','2000','user2','台北市永和區','2019/9/11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produces`
--

DROP TABLE IF EXISTS `produces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `produces` (
  `proid` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supaddress` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saleamount` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce2` varchar(1000) DEFAULT NULL,
  `pic1` varchar(200) DEFAULT NULL,
  `pic2` varchar(200) DEFAULT NULL,
  `pic3` varchar(200) DEFAULT NULL,
  `pic4` varchar(200) DEFAULT NULL,
  `pic5` varchar(200) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `introduce3` varchar(45) DEFAULT NULL,
  `pic_demo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produces`
--

LOCK TABLES `produces` WRITE;
/*!40000 ALTER TABLE `produces` DISABLE KEYS */;
INSERT INTO `produces` VALUES (1,'紅色磚紋壁紙','1000','A供貨商','桃園市中壢區','50','50','<div class=\"tab-pane fade show active chinese-font px-3\" id=\"product_detail\" role=\"tabpanel\" aria-labelledby=\"product_detail_tab\"><!-- 後端注意:從h2開始到最後一個ol均需存進資料庫 --><h2 class=\"chinese-font mt-3\">磚紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價</li><li>免費樣品索取，詳情請洽客服人員</li></ol><!-- 我是最後一個ol --></div>','img/wallpaper/brick_red.jpg','img/wallpaper/brick_blue.jpg','img/wallpaper/brick_green.jpg','img/wallpaper/brick_light.jpg','img/wallpaper/brick_dark.jpg','wallpaper','豪放、闊氣','img/wallpaper/brick_red_demo.jpg'),(2,'紅色纖維壁紙','1000','A供貨商','桃園市中壢區','30','70','<h2 class=\"chinese-font mt-3\">纖維壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><!-- 纖維的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>纖維壁紙表面具有材質印花使觸感更真實</li><li>纖維系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如纖維縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/fabric_red.jpg','img/wallpaper/fabric_blue.jpg','img/wallpaper/fabric_green.jpg','img/wallpaper/fabric_light.jpg','img/wallpaper/fabric_dark.jpg','wallpaper','布int','img/wallpaper/fabric_red_demo.jpg'),(3,'紅色大理石壁紙','1000','A供貨商','桃園市中壢區','10','90','<h2 class=\"chinese-font mt-3\">大理石風壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：marble_red</li><!-- 大理石風的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>大理石風壁紙表面具有抗眩光塗料使強光變得更加柔和</li><li>大理石風系列之產品不可使用清潔劑擦拭，請以酒精代替</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如壁紙表面有殘髒汙請用酒精棉擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/marble_red.jpg','img/wallpaper/marble_blue.jpg','img/wallpaper/marble_green.jpg','img/wallpaper/marble_light.jpg','img/wallpaper/marble_dark.jpg','wallpaper','大理石int','img/wallpaper/marble_red_demo.jpg'),(4,'紅色木紋壁紙','1000','B供貨商','桃園市中壢區','20','0','<h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：wood_red</li><!-- 木紋的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>木紋壁紙表面具有材質印花使觸感更真實</li><li>木紋系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如木紋縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/wood_red.jpg','img/wallpaper/wood_blue.jpg','img/wallpaper/wood_green.jpg','img/wallpaper/wood_light.jpg','img/wallpaper/wood_dark.jpg','wallpaper','清淨、自然、典雅','img/wallpaper/wood_red_demo.jpg'),(5,'藍色磚紋壁紙','1000','A供貨商','桃園市中壢區','50','50','<div class=\"tab-pane fade show active chinese-font px-3\" id=\"product_detail\" role=\"tabpanel\" aria-labelledby=\"product_detail_tab\"><!-- 後端注意:從h2開始到最後一個ol均需存進資料庫 --><h2 class=\"chinese-font mt-3\">磚紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價</li><li>免費樣品索取，詳情請洽客服人員</li></ol><!-- 我是最後一個ol --></div>','img/wallpaper/brick_blue.jpg','img/wallpaper/brick_red.jpg','img/wallpaper/brick_green.jpg','img/wallpaper/brick_light.jpg','img/wallpaper/brick_dark.jpg','wallpaper','豪放、闊氣','img/wallpaper/brick_blue_demo.jpg'),(6,'綠色磚紋壁紙','1000','A供貨商','桃園市中壢區','50','50','<div class=\"tab-pane fade show active chinese-font px-3\" id=\"product_detail\" role=\"tabpanel\" aria-labelledby=\"product_detail_tab\"><!-- 後端注意:從h2開始到最後一個ol均需存進資料庫 --><h2 class=\"chinese-font mt-3\">磚紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價</li><li>免費樣品索取，詳情請洽客服人員</li></ol><!-- 我是最後一個ol --></div>','img/wallpaper/brick_green.jpg','img/wallpaper/brick_blue.jpg','img/wallpaper/brick_red.jpg','img/wallpaper/brick_light.jpg','img/wallpaper/brick_dark.jpg','wallpaper','豪放、闊氣','img/wallpaper/brick_green_demo.jpg'),(7,'深色磚紋壁紙','1000','A供貨商','桃園市中壢區','50','50','<div class=\"tab-pane fade show active chinese-font px-3\" id=\"product_detail\" role=\"tabpanel\" aria-labelledby=\"product_detail_tab\"><!-- 後端注意:從h2開始到最後一個ol均需存進資料庫 --><h2 class=\"chinese-font mt-3\">磚紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價</li><li>免費樣品索取，詳情請洽客服人員</li></ol><!-- 我是最後一個ol --></div>','img/wallpaper/brick_dark.jpg','img/wallpaper/brick_blue.jpg','img/wallpaper/brick_green.jpg','img/wallpaper/brick_red.jpg','img/wallpaper/brick_light.jpg','wallpaper','豪放、闊氣','img/wallpaper/brick_dark_demo.jpg'),(8,'淺色磚紋壁紙','1000','A供貨商','桃園市中壢區','50','50',' <div class=\"tab-pane fade show active chinese-font px-3\" id=\"product_detail\" role=\"tabpanel\" aria-labelledby=\"product_detail_tab\"><!-- 後端注意:從h2開始到最後一個ol均需存進資料庫 --><h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價</li><li>免費樣品索取，詳情請洽客服人員</li></ol><!-- 我是最後一個ol --></div>','img/wallpaper/brick_light.jpg','img/wallpaper/brick_blue.jpg','img/wallpaper/brick_green.jpg','img/wallpaper/brick_light.jpg','img/wallpaper/brick_red.jpg','wallpaper','豪放、闊氣','img/wallpaper/brick_light_demo.jpg'),(9,'藍色纖維壁紙','1000','A供貨商','桃園市中壢區','30','70','<h2 class=\"chinese-font mt-3\">纖維壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><!-- 纖維的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>纖維壁紙表面具有材質印花使觸感更真實</li><li>纖維系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如纖維縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/fabric_blue.jpg','img/wallpaper/fabric_red.jpg','img/wallpaper/fabric_green.jpg','img/wallpaper/fabric_light.jpg','img/wallpaper/fabric_dark.jpg','wallpaper','布int','img/wallpaper/fabric_blue_demo.jpg'),(10,'綠色纖維壁紙','1000','A供貨商','桃園市中壢區','30','0','<h2 class=\"chinese-font mt-3\">纖維壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><!-- 纖維的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>纖維壁紙表面具有材質印花使觸感更真實</li><li>纖維系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如纖維縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/fabric_green.jpg','img/wallpaper/fabric_blue.jpg','img/wallpaper/fabric_red.jpg','img/wallpaper/fabric_light.jpg','img/wallpaper/fabric_dark.jpg','wallpaper','布int','img/wallpaper/fabric_green_demo.jpg'),(11,'深色纖維壁紙','1000','A供貨商','桃園市中壢區','30','70','<h2 class=\"chinese-font mt-3\">纖維壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><!-- 纖維的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>纖維壁紙表面具有材質印花使觸感更真實</li><li>纖維系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如纖維縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/fabric_dark.jpg','img/wallpaper/fabric_blue.jpg','img/wallpaper/fabric_green.jpg','img/wallpaper/fabric_light.jpg','img/wallpaper/fabric_red.jpg','wallpaper','布int','img/wallpaper/fabric_dark_demo.jpg'),(12,'淺色纖維壁紙','1000','A供貨商','桃園市中壢區','30','70','<h2 class=\"chinese-font mt-3\">纖維壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：brick_red</li><!-- 纖維的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>纖維壁紙表面具有材質印花使觸感更真實</li><li>纖維系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如纖維縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/fabric_light.jpg','img/wallpaper/fabric_blue.jpg','img/wallpaper/fabric_green.jpg','img/wallpaper/fabric_red.jpg','img/wallpaper/fabric_dark.jpg','wallpaper','布int','img/wallpaper/fabric_light_demo.jpg'),(13,'藍色大理石壁紙','1000','A供貨商','桃園市中壢區','10','90','<h2 class=\"chinese-font mt-3\">大理石風壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：marble_red</li><!-- 大理石風的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>大理石風壁紙表面具有抗眩光塗料使強光變得更加柔和</li><li>大理石風系列之產品不可使用清潔劑擦拭，請以酒精代替</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如壁紙表面有殘髒汙請用酒精棉擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/marble_blue.jpg','img/wallpaper/marble_red.jpg','img/wallpaper/marble_green.jpg','img/wallpaper/marble_light.jpg','img/wallpaper/marble_dark.jpg','wallpaper','大理石int','img/wallpaper/marble_blue_demo.jpg'),(14,'綠色大理石壁紙','1000','A供貨商','桃園市中壢區','10','90','<h2 class=\"chinese-font mt-3\">大理石風壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：marble_red</li><!-- 大理石風的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>大理石風壁紙表面具有抗眩光塗料使強光變得更加柔和</li><li>大理石風系列之產品不可使用清潔劑擦拭，請以酒精代替</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如壁紙表面有殘髒汙請用酒精棉擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/marble_green.jpg','img/wallpaper/marble_blue.jpg','img/wallpaper/marble_red.jpg','img/wallpaper/marble_light.jpg','img/wallpaper/marble_dark.jpg','wallpaper','大理石int','img/wallpaper/marble_green_demo.jpg'),(15,'深色大理石壁紙','1000','A供貨商','桃園市中壢區','10','0','<h2 class=\"chinese-font mt-3\">大理石風壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：marble_red</li><!-- 大理石風的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>大理石風壁紙表面具有抗眩光塗料使強光變得更加柔和</li><li>大理石風系列之產品不可使用清潔劑擦拭，請以酒精代替</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如壁紙表面有殘髒汙請用酒精棉擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/marble_dark.jpg','img/wallpaper/marble_blue.jpg','img/wallpaper/marble_green.jpg','img/wallpaper/marble_light.jpg','img/wallpaper/marble_red.jpg','wallpaper','大理石int','img/wallpaper/marble_dark_demo.jpg'),(16,'淺色大理石壁紙','1000','A供貨商','桃園市中壢區','10','90','<h2 class=\"chinese-font mt-3\">大理石風壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：marble_red</li><!-- 大理石風的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>大理石風壁紙表面具有抗眩光塗料使強光變得更加柔和</li><li>大理石風系列之產品不可使用清潔劑擦拭，請以酒精代替</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如壁紙表面有殘髒汙請用酒精棉擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/marble_light.jpg','img/wallpaper/marble_blue.jpg','img/wallpaper/marble_green.jpg','img/wallpaper/marble_red.jpg','img/wallpaper/marble_dark.jpg','wallpaper','大理石int','img/wallpaper/marble_light_demo.jpg'),(17,'藍色木紋壁紙','1000','B供貨商','桃園市中壢區','20','0','<h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：wood_red</li><!-- 木紋的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>木紋壁紙表面具有材質印花使觸感更真實</li><li>木紋系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如木紋縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/wood_blue.jpg','img/wallpaper/wood_red.jpg','img/wallpaper/wood_green.jpg','img/wallpaper/wood_light.jpg','img/wallpaper/wood_dark.jpg','wallpaper','清淨、自然、典雅','img/wallpaper/wood_blue_demo.jpg'),(18,'綠色木紋壁紙','1000','B供貨商','桃園市中壢區','20','0','<h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：wood_red</li><!-- 木紋的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>木紋壁紙表面具有材質印花使觸感更真實</li><li>木紋系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如木紋縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/wood_green.jpg','img/wallpaper/wood_blue.jpg','img/wallpaper/wood_red.jpg','img/wallpaper/wood_light.jpg','img/wallpaper/wood_dark.jpg','wallpaper','清淨、自然、典雅','img/wallpaper/wood_green_demo.jpg'),(19,'深色木紋壁紙','1000','B供貨商','桃園市中壢區','20','80','<h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：wood_red</li><!-- 木紋的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>木紋壁紙表面具有材質印花使觸感更真實</li><li>木紋系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如木紋縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/wood_dark.jpg','img/wallpaper/wood_blue.jpg','img/wallpaper/wood_green.jpg','img/wallpaper/wood_light.jpg','img/wallpaper/wood_red.jpg','wallpaper','清淨、自然、典雅','img/wallpaper/wood_dark_demo.jpg'),(20,'淺色木紋壁紙','1000','B供貨商','桃園市中壢區','20','80','<h2 class=\"chinese-font mt-3\">木紋壁紙</h2><!-- 待修改 --><div class=\"spec-title text-white\" style=\"background:lightgray;width:100%\">規格及使用注意事項：</div><ol start=\"1\"><li>商品型號：wood_red</li><!-- 木紋的商品都用這個，型號請自行修改 --><li>尺寸：2公尺 x 3公尺</li><li>黏貼後請放置約三天待多餘空氣自動排出</li><li>遇到髒時請勿使用強酸或強鹼清潔劑，以免損壞保護層</li><li>請勿將高溫電器放置壁紙旁以免壁紙變色</li><li>本產品保固期限為一年(僅限非人為破壞瑕疵)</li><li>本產品經拆封後無瑕疵即不可退(換)貨</li><li>木紋壁紙表面具有材質印花使觸感更真實</li><li>木紋系列之產品如縫隙間有灰塵可用牙刷將其刷出</li></ol>使用說明：<ol><li>用清水或酒精將牆面擦拭乾淨</li><li>將壁紙之背膠慢慢撕開</li><li>一邊撕下背膠一邊將撕開的部分貼齊牆角</li><li>完成黏貼後若有小氣泡時請勿將物品靠在壁紙上</li><li>請放置約3天後即可自動排出所有多餘空氣</li><li>如木紋縫隙間有殘留的碎屑請用濕抹布擦拭即可</li></ol>額外服務:<ol><li>壁紙黏貼服務，一通電話到府免費估價 (03)265-1995</li><li>免費樣品索取，詳情請洽客服人員 (03)265-1887</li></ol><!-- 我是最後一個ol -->','img/wallpaper/wood_light.jpg','img/wallpaper/wood_blue.jpg','img/wallpaper/wood_green.jpg','img/wallpaper/wood_red.jpg','img/wallpaper/wood_dark.jpg','wallpaper','清淨、自然、典雅','img/wallpaper/wood_light_demo.jpg');
/*!40000 ALTER TABLE `produces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation深色大理石壁紙`
--

DROP TABLE IF EXISTS `proevaluation深色大理石壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation深色大理石壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation深色大理石壁紙`
--

LOCK TABLES `proevaluation深色大理石壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation深色大理石壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation深色大理石壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation深色大理石壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation深色木紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation深色木紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation深色木紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation深色木紋壁紙`
--

LOCK TABLES `proevaluation深色木紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation深色木紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation深色木紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation深色木紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation深色磚紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation深色磚紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation深色磚紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation深色磚紋壁紙`
--

LOCK TABLES `proevaluation深色磚紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation深色磚紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation深色磚紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation深色磚紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation深色纖維壁紙`
--

DROP TABLE IF EXISTS `proevaluation深色纖維壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation深色纖維壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation深色纖維壁紙`
--

LOCK TABLES `proevaluation深色纖維壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation深色纖維壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation深色纖維壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation深色纖維壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation淺色大理石壁紙`
--

DROP TABLE IF EXISTS `proevaluation淺色大理石壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation淺色大理石壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation淺色大理石壁紙`
--

LOCK TABLES `proevaluation淺色大理石壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation淺色大理石壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation淺色大理石壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation淺色大理石壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation淺色木紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation淺色木紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation淺色木紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation淺色木紋壁紙`
--

LOCK TABLES `proevaluation淺色木紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation淺色木紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation淺色木紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation淺色木紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation淺色磚紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation淺色磚紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation淺色磚紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation淺色磚紋壁紙`
--

LOCK TABLES `proevaluation淺色磚紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation淺色磚紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation淺色磚紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation淺色磚紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation淺色纖維壁紙`
--

DROP TABLE IF EXISTS `proevaluation淺色纖維壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation淺色纖維壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation淺色纖維壁紙`
--

LOCK TABLES `proevaluation淺色纖維壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation淺色纖維壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation淺色纖維壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation淺色纖維壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation紅色大理石壁紙`
--

DROP TABLE IF EXISTS `proevaluation紅色大理石壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation紅色大理石壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation紅色大理石壁紙`
--

LOCK TABLES `proevaluation紅色大理石壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation紅色大理石壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation紅色大理石壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation紅色大理石壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation紅色木紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation紅色木紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation紅色木紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation紅色木紋壁紙`
--

LOCK TABLES `proevaluation紅色木紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation紅色木紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation紅色木紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation紅色木紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation紅色磚紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation紅色磚紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation紅色磚紋壁紙` (
  `idname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation紅色磚紋壁紙`
--

LOCK TABLES `proevaluation紅色磚紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation紅色磚紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation紅色磚紋壁紙` VALUES ('user1','3','3'),('user2','2','2'),('user3','3','3'),('user4','4','4'),('user5','5','5');
/*!40000 ALTER TABLE `proevaluation紅色磚紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation紅色纖維壁紙`
--

DROP TABLE IF EXISTS `proevaluation紅色纖維壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation紅色纖維壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation紅色纖維壁紙`
--

LOCK TABLES `proevaluation紅色纖維壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation紅色纖維壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation紅色纖維壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation紅色纖維壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation綠色大理石壁紙`
--

DROP TABLE IF EXISTS `proevaluation綠色大理石壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation綠色大理石壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation綠色大理石壁紙`
--

LOCK TABLES `proevaluation綠色大理石壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation綠色大理石壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation綠色大理石壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation綠色大理石壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation綠色木紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation綠色木紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation綠色木紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation綠色木紋壁紙`
--

LOCK TABLES `proevaluation綠色木紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation綠色木紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation綠色木紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation綠色木紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation綠色磚紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation綠色磚紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation綠色磚紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation綠色磚紋壁紙`
--

LOCK TABLES `proevaluation綠色磚紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation綠色磚紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation綠色磚紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation綠色磚紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation綠色纖維壁紙`
--

DROP TABLE IF EXISTS `proevaluation綠色纖維壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation綠色纖維壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation綠色纖維壁紙`
--

LOCK TABLES `proevaluation綠色纖維壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation綠色纖維壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation綠色纖維壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation綠色纖維壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation藍色大理石壁紙`
--

DROP TABLE IF EXISTS `proevaluation藍色大理石壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation藍色大理石壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation藍色大理石壁紙`
--

LOCK TABLES `proevaluation藍色大理石壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation藍色大理石壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation藍色大理石壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation藍色大理石壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation藍色木紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation藍色木紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation藍色木紋壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation藍色木紋壁紙`
--

LOCK TABLES `proevaluation藍色木紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation藍色木紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation藍色木紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation藍色木紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation藍色磚紋壁紙`
--

DROP TABLE IF EXISTS `proevaluation藍色磚紋壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation藍色磚紋壁紙` (
  `idname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation藍色磚紋壁紙`
--

LOCK TABLES `proevaluation藍色磚紋壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation藍色磚紋壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation藍色磚紋壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation藍色磚紋壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proevaluation藍色纖維壁紙`
--

DROP TABLE IF EXISTS `proevaluation藍色纖維壁紙`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proevaluation藍色纖維壁紙` (
  `idname` varchar(45) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proevaluation藍色纖維壁紙`
--

LOCK TABLES `proevaluation藍色纖維壁紙` WRITE;
/*!40000 ALTER TABLE `proevaluation藍色纖維壁紙` DISABLE KEYS */;
INSERT INTO `proevaluation藍色纖維壁紙` VALUES ('user1','2','2'),('user2','3','3'),('user3','4','4'),('user4','5','5'),('user5','1','1');
/*!40000 ALTER TABLE `proevaluation藍色纖維壁紙` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registered` (
  `reg_num` int(11) NOT NULL AUTO_INCREMENT,
  `reg_account` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_pwd` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_birthday` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`reg_num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES (1,'abmin1','ohshit','王曉明','male','1000/01/01','apple@gmail.com','桃園市平鎮區'),(2,'abmin1','ohshit','李小美','female','1999/01/01','bus@gmail.com','桃園市桃園區'),(3,'user2','6789bca','蘇小妹','male','2000/10/10','cat@gmail.com','桃園市中壢區'),(4,'ms940016','ms880110','邱筠文','female','1999/01/10','ms940016@gmail.com','台北市中山區');
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shoppingcart` (
  `idnum` varchar(45) NOT NULL,
  `proid` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
INSERT INTO `shoppingcart` VALUES ('user1','紅色磚紋壁紙','2');
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wishlist` (
  `userid` varchar(45) NOT NULL,
  `proid` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`,`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('1','6'),('2','1'),('2','2'),('2','5'),('3','7'),('4','5');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'datasheet'
--

--
-- Dumping routines for database 'datasheet'
--
/*!50003 DROP FUNCTION IF EXISTS `wish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `wish`() RETURNS int(11)
BEGIN
declare abc int;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `outwish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `outwish`(in acc varchar(45))
BEGIN
declare accin varchar(50);
declare pron varchar(50);
select userid into accin from identity where account = acc;
select proid from wishlist where userid = accin;
select proname from produces where proid = (select proid from wishlist where userid = accin);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchwish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchwish`(in acc varchar(45))
BEGIN
declare id int(10);
select userid into id from identity where account = acc;
select * from wishlist where userid = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 20:25:55
