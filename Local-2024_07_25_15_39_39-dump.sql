-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: task_manage
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2024_05_23_143231_create_projects_table',1),(6,'0001_01_01_000000_create_users_table',2),(7,'0001_01_01_000001_create_cache_table',2),(8,'0001_01_01_000002_create_jobs_table',2),(9,'2024_05_23_061317_create_personal_access_tokens_table',2),(10,'2024_05_25_173923_create_projects_table',3),(11,'2024_06_16_022825_create_roles_table',4),(12,'2024_06_16_023235_add_role_id_to_users_table',4),(13,'2024_06_16_025548_add_status_to_users',4),(14,'2024_06_17_085958_add_avatar_to_users_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (7,'App\\Models\\User',1,'loginToken','f521ba4f7f71f85638886eb38c5af2f9f3ee49fd2b10ddf21b40afb925c95918','[\"*\"]','2024-07-21 19:54:17',NULL,'2024-07-21 19:54:06','2024-07-21 19:54:17'),(8,'App\\Models\\User',1,'loginToken','9db940dac01f37f38b711f176f1df4eef584a9624dd0957614bd5af915f74839','[\"*\"]',NULL,NULL,'2024-07-21 23:20:51','2024-07-21 23:20:51'),(9,'App\\Models\\User',1,'loginToken','14c48ca9596c12d4d92417d1a014da6a79e2b53976c4a0e57927077559706f33','[\"*\"]',NULL,NULL,'2024-07-21 23:21:53','2024-07-21 23:21:53');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `visibility` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Project name','description','short desc',1,1,1,'2024-06-05 02:56:28','2024-06-05 02:55:40','2024-06-05 02:56:28'),(2,'Project name','description','short desc',1,1,1,'2024-06-05 02:59:29','2024-06-05 02:55:40','2024-06-05 02:59:29'),(3,'Prof. Kayden Kirlin','Facilis ut voluptas tempora nesciunt sint sed iure. Quibusdam quia officiis veniam quia quo. Vel culpa debitis fugit voluptas ullam dignissimos.','Iste accusantium architecto qui quo harum. Illum vero corporis accusamus nesciunt dolorem nulla quidem. Saepe ut hic sequi molestiae. Consequuntur tempore dolor ut molestiae voluptas.',3,7065677,1,'2024-06-05 03:00:03','2024-06-05 02:55:40','2024-06-05 03:00:03'),(4,'Alfonzo Toy','Ex accusantium consectetur soluta magnam sed labore minus est. Recusandae cum necessitatibus est aut repellendus. Esse qui sapiente culpa. Nulla quod eum quibusdam non corporis.','Odit fuga totam corporis eum voluptatem reprehenderit. Perspiciatis et dolorum qui perferendis. Voluptas voluptas porro et. Quae non aut repellat eveniet aperiam molestiae.',10134912,417747966,1,'2024-06-05 03:01:18','2024-06-05 02:55:40','2024-06-05 03:01:18'),(5,'Adaline Considine MD','Hic quidem iusto enim minima. Culpa maiores in eos illo incidunt sit dolore. Alias ipsa eaque id quibusdam animi aperiam. Sunt omnis in accusamus modi.','Assumenda tempora cupiditate perspiciatis qui sunt rerum esse nam. Quo magnam placeat quis. Tenetur iure ex consequatur ex quo architecto.',700663613,71686755,1,'2024-06-05 03:05:15','2024-06-05 02:55:40','2024-06-05 03:05:15'),(6,'Miss Kattie Bechtelar MD','Natus ut rerum non veniam. Ipsa non sint voluptas. Molestiae expedita veritatis temporibus ullam quod molestiae.','Labore numquam sunt molestias magnam. Ut aut qui qui voluptatum. Ut nostrum enim fuga sit eos ratione.',76858,26,1,'2024-06-05 03:05:30','2024-06-05 02:55:40','2024-06-05 03:05:30'),(7,'Clifford Adams','Maxime a sunt quia. Quas cum eligendi impedit ut. Alias eos facilis magnam suscipit et voluptas nemo.','Sed ut est sapiente nihil sit. Consectetur odio excepturi optio omnis. Molestiae ut iure aut officiis fugiat aut.',759,804216334,1,'2024-06-05 03:05:46','2024-06-05 02:55:40','2024-06-05 03:05:46'),(8,'Joannie Block','Qui consequuntur dolor expedita doloribus. Consequatur qui enim molestias ullam quia repellat blanditiis.','Reprehenderit molestiae tempore eius quos harum aliquam. Ea consectetur maxime ex eaque. Id exercitationem aspernatur et odio. Voluptate ratione dolor amet illum quod in.',0,792287,1,'2024-06-05 03:10:00','2024-06-05 02:55:40','2024-06-05 03:10:00'),(9,'Marion Hills','Sed sunt nesciunt itaque animi. Harum labore quos possimus nemo fugiat ducimus vero. Beatae numquam nesciunt provident ut dolorem amet autem.','Voluptas nisi sit iure dolor. Non delectus officiis eos magni quis explicabo. Nostrum praesentium ut minus voluptatem commodi magni cupiditate.',190,1,1,'2024-06-05 03:11:21','2024-06-05 02:55:40','2024-06-05 03:11:21'),(10,'Dr. Walter Hamill Jr.','At aut tempore odio voluptate corrupti reprehenderit. Id porro doloribus eos illo. Nisi quo ea fuga corporis. Autem deserunt totam possimus vel. Odit commodi molestiae corporis blanditiis.','Rem qui ut ullam odio sint enim beatae repellat. Minima voluptatem veritatis qui dolores. Et quae laudantium nisi est eius voluptates nisi.',3822121,1461,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(11,'Prof. Landen Keeling V','Ad corrupti saepe sit molestiae non. Deleniti eius quod ea perspiciatis culpa distinctio. Consequatur minima ullam totam eveniet aliquid iste debitis vero. Quo amet reprehenderit aperiam facilis.','Autem rerum placeat dolore ut qui nobis quae dolor. Et est maxime at ducimus expedita tempore. Asperiores repudiandae deleniti adipisci aut ut.',87,973101,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(12,'Rodrick Mohr','Nisi qui ut voluptatem perferendis explicabo. Vel repellat dolorem quae totam soluta nisi. Corrupti ut pariatur maiores ipsam saepe veritatis eum.','Voluptas voluptatibus cum placeat. Doloribus fugit soluta quia sint nihil quis modi. Quibusdam qui ipsum voluptatem eos. Molestiae itaque ea nam.',91829469,383362,1,'2024-06-05 03:20:51','2024-06-05 02:55:40','2024-06-05 03:20:51'),(13,'Tiana Bogan','Ut nemo corrupti dolorem rerum et quo corrupti. Aut pariatur dolor ipsa enim delectus.','In sapiente fugiat non provident quaerat. Dolorum nisi sed qui quisquam eius et.',0,74,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(14,'Lempi Feil DDS','Sed illum nostrum excepturi facere magni. Omnis nobis aut animi est velit. Aspernatur eligendi rerum quis nam ratione velit quia.','Voluptates quaerat sint sit porro tempora aut dolores. Voluptas est est fugiat adipisci provident quia. Cum ipsam asperiores illo rem deleniti. Deleniti sit et ratione est rem.',76274651,28272,1,'2024-06-05 03:21:03','2024-06-05 02:55:40','2024-06-05 03:21:03'),(15,'Ron Cole','Et vero et perferendis rerum molestiae. Cumque et molestias et ex eveniet saepe.','Et incidunt iure asperiores expedita ab consequatur. Soluta ea esse qui quod sed quis sunt. Facilis dolores rerum magni incidunt qui necessitatibus.',9274194,2420,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(16,'Josefa Kuhn','Dolore in accusantium voluptates a sapiente ad molestias. Nostrum provident amet molestias quo aut at magnam.','Et eum eius ut sequi molestiae quia deleniti voluptatem. Sit aperiam rerum perferendis. Est eos dolor omnis facilis sed pariatur quia. Error autem nisi sed quia.',426735792,9,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(17,'Maximillian Ortiz','Aut quo ipsum dolorum distinctio. Quia temporibus adipisci iusto cupiditate et aut non. Consequuntur omnis suscipit totam quo beatae vitae architecto.','Vel voluptatem eaque modi ipsam tempore ipsam. Et quas ut asperiores voluptatem deleniti at porro velit. Inventore vel asperiores aut assumenda ut dolor accusamus.',87303,351,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(18,'Patience Feil III','Fugiat odio autem quae repellat cum. Quis ipsum rerum in et ratione. Labore repellendus temporibus ut nam et. Omnis quis cum laudantium labore veniam.','Et est natus alias rerum dicta ullam. Magni iure nulla eum quo qui commodi voluptas. Blanditiis eos est a nam. Molestiae qui sunt harum dolores quibusdam perferendis sunt.',24191538,676137,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(19,'Prof. Brandon McGlynn DVM','Deserunt voluptatibus quis odio sit provident hic. Ullam et rerum dignissimos adipisci tempora laboriosam debitis. Facere inventore ut explicabo.','Id illo vitae numquam est. Voluptate ullam excepturi eligendi maiores error. Voluptatum enim enim incidunt ullam suscipit corrupti veniam.',91396469,4836987,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(20,'Dr. Dock Carter','Eum perferendis et rerum velit et minus. Sed eos in dolor ut autem omnis vel. Consequatur ut ducimus incidunt. At nihil est et quia. Possimus eligendi a iusto. A assumenda hic est.','Neque ut sed reiciendis quia veritatis ut nobis ullam. Et eos sed rem eum voluptas omnis. Officiis excepturi ducimus impedit quo corporis mollitia. Quia nesciunt possimus iste harum dolor ut commodi.',19,1106,1,NULL,'2024-06-05 02:55:40','2024-06-05 02:55:40'),(21,'Miss Zella Konopelski Jr.','Aut veniam rerum eos itaque. Quas dolorem et ipsum nisi ducimus eum ex. In architecto dignissimos voluptas harum. Ut ipsam ipsam culpa sit et tenetur illo tenetur.','Doloribus tenetur labore reprehenderit enim. Ad magnam dolore placeat iure quia est ex. Laboriosam nihil natus voluptas at beatae. Sapiente labore animi et dolores harum illum natus.',14926,12,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(22,'Ms. Octavia Tremblay I','Omnis ipsam dolores iusto aut minus et. Velit et non cum autem ratione. Autem ut accusamus nihil sequi libero sequi. Occaecati veniam est odit enim. Amet consequuntur cum et.','Nostrum cupiditate eligendi ex aliquid qui qui dolore. Fuga aliquam dolorem soluta placeat. Optio inventore odio nihil reiciendis.',5786,9821195,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(23,'Project name','description','short desc',1,1,1,NULL,'2024-06-05 02:55:41','2024-06-05 03:19:39'),(24,'June Bradtke','Quos et sequi nulla recusandae. Sunt et aliquid exercitationem sed odio aut accusamus. Expedita deleniti perferendis aliquam cupiditate possimus.','Voluptatibus architecto nobis est aut harum et atque. Minima ipsa iste aliquam et. Dolor error voluptatem consequatur corporis.',1133,304433083,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(25,'Dr. Deborah Rutherford V','Asperiores a qui porro ut sit. Commodi esse sed quae rerum id blanditiis. Sint nesciunt aliquid quo inventore est. Reiciendis voluptatem est et odit quibusdam dignissimos at. Nisi sit nulla harum.','Minima ad culpa eum. Fugiat non sed occaecati sit temporibus. Aliquam temporibus architecto provident excepturi error autem. Et nulla quo blanditiis eos porro aperiam repellat aut.',401439,3,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(26,'Miss Katharina Morissette','Assumenda soluta sunt ea ipsam quod. Corporis dolor eos magnam quia maiores et fugit. Autem culpa porro excepturi quia magnam.','Rerum qui assumenda possimus minus voluptas sit eius. Quo voluptatem sit sed est. Ipsum pariatur delectus nobis eum sed.',50057679,0,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(27,'Eva Johnston','In aspernatur quae sequi. Enim saepe consectetur odit aut nostrum et repellendus. Natus harum rerum et corporis repellat reprehenderit dolor.','Et aspernatur error doloremque corrupti corrupti. Ab libero illo dolor ut. Voluptas dolorem error a ut et. In aperiam est doloremque alias quibusdam.',46,81,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(28,'Miss Adeline Bailey MD','Iusto libero sequi voluptatem consequatur vel. Sint reiciendis esse voluptatem odio impedit quia illo. Ipsa vel non qui. Voluptatibus temporibus facere odio sed.','Voluptas ipsam atque beatae explicabo temporibus necessitatibus non. Sed quidem quis ut nam culpa. Quidem debitis atque quas enim ipsa eos. Ducimus esse totam ea est nostrum.',201834420,648995,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(29,'Tillman Fahey DVM','Magnam ea incidunt aut quia. In laborum similique quo sunt ex consequatur corrupti. Aliquam quia rerum voluptatibus est facilis. Et non tempore eos omnis voluptates consequatur magnam.','Deserunt consequatur recusandae voluptas. Reprehenderit rerum minus dicta perspiciatis soluta nam harum. Dicta vel quis dolorum qui illum. Ea natus eum sunt ut saepe illo.',549855,568164370,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(30,'Precious Lowe','Ex dolorum sed error et omnis. Ut et consectetur sapiente. Qui qui esse adipisci aut omnis voluptatem repellendus. Sapiente eaque a hic voluptatem neque cumque.','Quos unde cupiditate sed ex quaerat qui. Provident rerum omnis officia ut. Illum aspernatur deleniti aperiam dolorem.',86,7379,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(31,'Herminia Douglas','Deleniti et provident in aut quaerat quae iure. Recusandae qui quas et veniam et itaque facere. Reiciendis minima commodi ea numquam veniam culpa. Labore qui et et incidunt qui.','Molestias culpa eum ex. Aut delectus aperiam pariatur et accusantium. Dolores aperiam ea necessitatibus veritatis aut rem. Cum voluptates fuga sequi esse.',796696774,6576,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(32,'Korey Carroll DDS','Impedit ipsam enim fuga adipisci dolores. In voluptatem ut aut accusamus ut. Omnis voluptas sunt illo quia exercitationem dolorem cumque.','Omnis quod architecto dolor atque. Placeat omnis voluptates itaque tempore et quisquam blanditiis est. Non omnis quo dolores voluptatem. Sint id voluptatibus voluptatibus illum suscipit.',86726000,1,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(33,'Prof. Imogene Schumm','Debitis magnam sint dolor exercitationem laborum rerum perspiciatis sequi. Ipsum voluptates et et facere laboriosam qui. Quasi quia sit similique ut perspiciatis et similique est.','Accusantium natus officiis aliquid. Praesentium voluptatem laboriosam harum sed non animi quidem. Dolorum totam inventore amet illo quia.',9900,2590,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(34,'Hudson Ortiz','Tempora repellat quo amet sit nisi. Similique et quis omnis voluptas. Voluptas officiis omnis dolorum sint.','Eum voluptatum qui dignissimos nemo odio ut ipsam. Ratione ut iste non non. Ad pariatur libero eveniet doloribus voluptas. Sit quo et et alias deserunt perferendis voluptate.',1588,1495,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(35,'Dr. Charlie Stamm PhD','Nesciunt iure rerum animi dolore facere est. Sit assumenda sed omnis sed enim. Non sed inventore placeat. Nostrum dicta nesciunt quod veritatis doloremque provident ullam quo.','Neque repellendus explicabo illo est ad eaque et. Aut porro eum quod cupiditate doloribus ducimus. Optio ut quam non magnam consequatur molestiae.',443693591,3,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(36,'Markus Gaylord','Mollitia qui praesentium assumenda eligendi. Sed nihil possimus aut numquam sapiente facere. Vel ut omnis qui in.','Culpa et totam molestiae quia et. Blanditiis repellendus in consequuntur est aut quia consequatur delectus. Corrupti id rerum reiciendis iste.',0,369809,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(37,'Dr. Toni Aufderhar','Iure atque eligendi cum sit ipsa. Quibusdam reiciendis quod nostrum quis non omnis fugiat.','Dolorem minima culpa adipisci laboriosam. Corporis voluptate cum et harum laboriosam sit quia inventore. Illo excepturi corrupti odit molestiae sit voluptas voluptas.',5,4887047,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(38,'Carter Larson','Id qui at minus saepe et incidunt. Consequatur eius sed enim porro. Tempore qui rerum repellendus. A quisquam qui est iure modi qui non.','Ipsum sint natus velit suscipit in quo nostrum. Quia animi modi incidunt cum sapiente vero. Qui aliquam voluptates atque.',96757427,1446,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(39,'Carey McCullough','Vel vitae velit libero sunt a repudiandae. Ut aut dolor tenetur voluptatem doloribus voluptates assumenda. Facere ut rerum voluptas tempora officia eius.','Eos placeat eius est occaecati. Sequi voluptates saepe sunt earum voluptatibus repudiandae. Laudantium voluptatibus laudantium omnis possimus.',945083,72384,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(40,'Prof. Janelle Franecki II','Quas sed officia ad voluptatibus. Quos nihil ut nam atque. Qui provident at fugiat architecto repudiandae sit. Eligendi eaque earum asperiores.','Maxime quam eos quae excepturi et occaecati non. Rem omnis perspiciatis consequatur dicta et aut dolorem. Velit eos perspiciatis eius. Aliquid minus maiores est esse architecto modi magni maiores.',70987,1149594,1,NULL,'2024-06-05 02:55:41','2024-06-05 02:55:41'),(41,'Casimer Anderson','Exercitationem nulla non distinctio similique rem ea adipisci. Reprehenderit consequatur nostrum quibusdam.','Voluptas perferendis mollitia dolor dicta et minus et. Omnis maxime maxime aspernatur magni molestias aperiam. Qui id repudiandae illum modi enim.',9327,827478311,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(42,'Melyssa Hickle','Corrupti officia cum qui eum occaecati molestiae. Iusto ratione nihil aspernatur necessitatibus aspernatur. Possimus aut et repellat enim sit quos earum. Reiciendis quo in dolorem et accusantium.','Nesciunt ea est quidem iure et eveniet et. Dolores ad voluptatem aliquid fugiat eveniet ad.',8509,50,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(43,'Walton Nienow','Ex voluptatum quia eos dolores ut. Quis aut voluptatem nesciunt necessitatibus nisi qui. Et accusantium corrupti odit deserunt mollitia ut qui.','Consectetur facilis ut animi cupiditate excepturi aut autem laborum. Ipsam ut ex labore quam. Recusandae deserunt et est at consequatur doloremque.',64663,39,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(44,'Prof. Aracely Bins V','Optio quibusdam quia totam molestias. Aliquid perferendis maiores doloremque pariatur eveniet qui. Voluptas perferendis dignissimos in dignissimos maiores.','Reprehenderit iste quo non minus sit. Consequuntur voluptatem labore neque et voluptatum at. Animi dolor cum dolor. Repudiandae odio ab repellendus.',93834,19041128,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(45,'Corene Marks III','Recusandae asperiores quos recusandae commodi. Deserunt rem non dolores perspiciatis voluptas. Eaque aut eius accusantium ea voluptas possimus harum. Modi nobis laudantium ipsa qui.','Cumque suscipit ea sit cumque non. Ipsum dolor voluptates in dolorum non. Esse quis voluptas autem tenetur expedita tempora voluptatum. Quia fugiat atque nisi eos.',107958067,607936184,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(46,'Trevor Hirthe','Repudiandae quibusdam aspernatur dolores commodi. Cupiditate nostrum illo eligendi consectetur. Quis fugiat consequatur voluptas. Reprehenderit explicabo quas at dolorem.','Aut sed quisquam at et quia. Consequuntur minus necessitatibus deleniti non sapiente. Molestiae neque nemo voluptatibus dolore laudantium rem quidem. Quis minus delectus cumque quae ex optio.',353657911,69344387,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(47,'Ms. Yvonne O\'Keefe','Inventore placeat autem sapiente. Ea necessitatibus nam ut. Explicabo ex sed provident fugit repellendus officia qui.','Tenetur debitis unde sunt laboriosam quam. Mollitia dicta laudantium vitae est at. Praesentium aliquam ipsa nemo qui eligendi voluptatem.',82595386,136,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(48,'Lucie Mosciski','Nisi nihil repellat nobis placeat cum quas voluptatem mollitia. Harum ea ab sint et. Sunt est saepe quidem exercitationem minima velit.','Commodi at ut consequatur iusto. Adipisci quia dolor et dolores adipisci et aut.',9907,3,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(49,'Emiliano Pacocha','Omnis facere quia eaque quas vero. Quis culpa quibusdam facere est consequatur. Voluptatem minima quia et perferendis fugit aliquid vel omnis. Voluptas atque distinctio error.','Qui minima labore tenetur deleniti commodi. Optio iusto et sit. Quia eos optio voluptatem sit voluptatem quos voluptatem quod.',5417959,42720,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(50,'Dr. Kathlyn Torp','Praesentium ex neque quia sit. Saepe quisquam voluptate quia vitae laborum aliquid. Velit autem et consequatur perferendis eveniet. Distinctio nemo sit nihil dolorum rerum.','Et quia id placeat velit neque fuga nihil. Quas iusto nulla laborum dolores sed. Aperiam eum aut vel rem tempore soluta est ut.',94078,513,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(51,'Aliya Pollich Sr.','Excepturi odit placeat reiciendis et sit aperiam nihil et. Aliquam ipsum voluptatem qui earum. In ad fuga ad iste nihil inventore consequatur.','Earum soluta molestiae ut cumque quaerat ullam voluptatem. Aperiam qui repellendus maxime quia debitis doloribus voluptas. Occaecati autem adipisci soluta eos voluptatem facilis.',35939539,400,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(52,'Bettie Skiles','Et earum aut qui dolores quos. Reiciendis velit quisquam voluptatum omnis est. Sequi perspiciatis qui quia ad. Molestiae sunt enim modi labore beatae eos. Non alias qui quia rem a quae eveniet.','Corrupti ducimus illo vero voluptates praesentium possimus. Quam non quae voluptas ducimus eius debitis accusamus. Magnam dolores consequatur voluptas architecto reiciendis.',3,51755,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(53,'Angelita Reilly','Omnis eos amet autem quo. Molestiae a sunt mollitia ad. Reprehenderit velit quis maxime odit ut officiis quo.','Aut soluta molestiae dicta. Veritatis nam numquam blanditiis vero omnis ut voluptatum ut.',413661622,15144,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(54,'Orlando Weber','At soluta possimus rerum quaerat molestias labore eveniet. Voluptas deleniti et optio fuga aut laboriosam illum. Labore magni quo sunt iure.','Necessitatibus eum suscipit ducimus adipisci. Impedit id omnis quod quis ducimus perferendis. Consequatur labore sunt minus sint qui.',5840,1,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(55,'Dr. Jess Davis','Nostrum impedit alias nulla ut quidem. Ipsam ut rem iste. Repellat praesentium id sunt omnis. Totam quaerat odit optio cum dolorem quae fugiat sit.','Qui minus voluptatem quia neque unde nisi quaerat. Consequatur aliquam ab consequatur nulla nihil consequatur aut. Esse odit aut et et.',2,375333,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(56,'Dr. Benedict Upton','Porro veritatis temporibus et non veniam. Qui non quia ipsam rerum cumque est. Velit exercitationem molestiae reiciendis ea rerum non vero.','Eos eligendi cumque cum aut. Nihil nisi harum laudantium et in. Aut magnam sit minus enim. Adipisci odit sit accusantium soluta.',75,642319,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(57,'Green Crist','Inventore ut est sequi nulla et aspernatur fuga voluptatum. Quibusdam nihil corrupti asperiores ullam voluptas. Excepturi aut tempore eos id veniam.','Sunt nulla aspernatur ullam et soluta. Ipsum sint omnis commodi dolores doloribus. Quia sit vero adipisci vel labore qui enim. Est architecto vel assumenda et magni.',873,43329,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(58,'Billie Sanford','Magnam adipisci incidunt voluptates quod. Blanditiis est nihil voluptatibus quis et maiores. Qui sapiente repudiandae ut commodi est est.','Adipisci vero debitis nihil est sed. Illum doloribus numquam repellendus aspernatur. Modi dolorum dolorum adipisci suscipit. Voluptatibus omnis et vitae animi repudiandae quis nostrum.',7,1777,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(59,'Maryse Durgan','Consequuntur qui sit ipsa et. Est dicta fuga deleniti voluptatibus eaque. Labore alias dolorem nemo asperiores iste perspiciatis. Molestiae omnis est quae.','Iusto itaque non qui voluptas. Impedit voluptas illo eum similique voluptatibus. Ea vel eum adipisci vitae exercitationem. Maiores deleniti doloremque nam inventore laboriosam sunt.',1237681,1,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(60,'Miss Elinor Cormier','Rerum ipsa illum sit temporibus. Veritatis id est velit facilis neque qui sunt. Voluptatum inventore eos omnis ullam veniam neque.','Inventore praesentium adipisci iure voluptatem quis quasi possimus. Aut laboriosam consectetur voluptas. Id maxime est et. Aut est id qui dolores maxime eum aut quia.',18848,42,1,NULL,'2024-06-05 02:55:43','2024-06-05 02:55:43'),(61,'Project name','description','short desc',1,1,1,NULL,'2024-06-05 02:56:15','2024-06-05 02:56:15'),(62,'Project name','description','short desc',1,1,1,NULL,'2024-06-05 03:18:45','2024-06-05 03:18:45'),(63,'Project name','description','short desc',1,1,1,NULL,'2024-06-05 03:19:04','2024-06-05 03:19:04'),(64,'Project name','description','short desc',1,1,1,NULL,'2024-06-06 02:43:14','2024-06-06 02:43:14'),(65,'Project name','description','short desc',1,1,1,NULL,'2024-06-06 02:45:15','2024-06-06 02:45:15'),(66,'u see','123',NULL,1,1,1,NULL,'2024-06-19 03:40:12','2024-06-19 03:40:12');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policies` json NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','Has full access to all system functions, including creating and managing users, roles, and policies.','[\"user.create\", \"user.read\", \"user.update\", \"project.manage\", \"project.assign\", \"project.delete\", \"project.update\", \"project.read\", \"project.create\", \"user.delete\", \"role.delete\", \"role.read\", \"role.update\", \"role.create\"]',NULL,'2024-06-16 18:46:10','2024-07-21 19:34:10');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('dPUxtlg4lQrgGTpKopXpO2pIAbqFqS1tIj7P4iId',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieTdKUjRUcW9wb0RuSkxDVFI2dk5ROUl0QkV6cWN6MzZjUEVTQnJHdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719547029),('HGL2HPB3q82jOAESATrJJJqZTDWSTl2fYDLH8RTu',NULL,'127.0.0.1','axios/1.7.2','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1hzMlM2c2wxTDd3TkM3eWNaOWNWalp3VkwzdmhRSnVKbXh6S2x4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719388645),('i4Tn1PfMqiaKJFThSksEh8W6IR62li3WgfbIcIOH',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVg3bzJvS3RmbFBGbUlTM3NJYThtZURRVldxYkd2d0JXVERsOEtDcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717644443),('Qr4rS4X8uogZTCZNj8A27MnByRL7ftdLyzoqABET',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieU5uejZlazNyUXdZS3QzTEI3NGNnaVkwdzg3UnhWa2tveWRHa09TSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718793034),('TB1SbARNkbzgn0iP3HXDPrDseD00pahcCjiCt6Yx',NULL,'127.0.0.1','axios/1.7.2','YTozOntzOjY6Il90b2tlbiI7czo0MDoienVOb3Y4MzE0RkZEaHlkSDRkY2dSeVViQ0lCZVpRMWZkQTdPSVRpTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719388652);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','dat03021999@gmail.com','2024-06-05 02:55:36','$2y$12$qyy5ljIVA/DxmZOOX/LDpOcqMa7Z/dBWXQqQ3IrY2EFkiuPpxEHdS','xr06PfvXNh','2024-06-05 02:55:36','2024-07-21 19:54:17',1,1,'avatar/be954c8bd0e86ed8d42f253edfdb4cf3.png'),(2,'User name','dat03021999@gmail.com5',NULL,'$2y$12$ZsXX3nYzHXsoqKxmIvV5muV0W7TzarZE/z/mUc2ZVAzmyF0xEYXby',NULL,'2024-06-16 18:50:05','2024-07-21 19:34:53',1,1,'avatar/44c3fa60ef6af504b7587c58af16fe8f.png'),(12,'User name','dat03021999@gmail.com4',NULL,'$2y$12$xwReWcgnKbuxuQMplCysf.OsevhE2InBTTdih2LZK.Fs7a7w43ShW',NULL,'2024-06-16 19:42:04','2024-06-16 19:42:04',1,1,'avatar/$2y$12$oDc6iVyGWqkLHxkHFgrll.PlqEGUI6TTJCp5lArc5AV4lyLiQV.22.png'),(15,'User name','dat03021999@gmail.com56',NULL,'$2y$12$CE9kuVpB7P32EqM1tOSdLO3gqPImSPK645FYstsPvHZUJSjIHtrgi',NULL,'2024-06-16 19:42:52','2024-06-16 19:42:52',1,1,'avatar/06a9f86908e65cf07e1a180c1b094d63.png'),(16,'User name','dat03021999@gmail.com44',NULL,'$2y$12$ru.EqG/CW7pcSIyq.D8jYedwVXgTJ3Dwe9iPFQ3ycbZdfi67/g.3u',NULL,'2024-06-17 20:40:47','2024-06-17 20:40:47',1,1,'avatar/cdb173e4da98c3d674d63063d1ea6fb7.png');
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

-- Dump completed on 2024-07-25 15:39:39
