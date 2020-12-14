-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 03:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem veniam in nesciunt veritatis.', 'Porro eligendi dolorem quis. Temporibus in ea odit dolor dolorem tenetur. Occaecati rerum totam laborum fugiat sint corporis dolores.', 4, 7, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(2, 'Est assumenda culpa asperiores accusantium labore consectetur laboriosam.', 'Temporibus voluptatem officiis nihil asperiores. Modi sint nulla est tempore consequatur. Et doloremque earum est dolorum dolore libero molestiae. Hic cum laborum eligendi delectus numquam.', 5, 9, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(3, 'Quod odit velit distinctio omnis et perferendis.', 'Iusto provident tenetur accusamus ullam adipisci sit. Et aliquid non explicabo ullam nobis autem qui. Itaque cumque et molestiae qui adipisci magnam totam eius. Est earum esse omnis ad amet.', 3, 16, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(4, 'Porro itaque sit est enim illum.', 'Aut nihil voluptas non velit. Delectus voluptatibus voluptatem harum tempora eum qui. Eius quaerat molestiae et quidem. Corporis exercitationem cum perspiciatis eligendi et. Rerum dolores voluptatem odit nesciunt laborum.', 3, 49, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(5, 'Ex qui blanditiis culpa laboriosam qui et.', 'Autem ut impedit quas eum est magnam. Quis enim quo vero architecto nemo laborum placeat. Consectetur est reprehenderit ab ipsum occaecati architecto. Qui est distinctio sed dolor cumque quia.', 1, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(6, 'Dolor sint beatae inventore natus quas.', 'Et quos adipisci quae sint reprehenderit sint. Natus dicta incidunt impedit vel aliquid iste quaerat. Ut esse id quis et. Quod et enim impedit aspernatur totam sit.', 5, 39, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(7, 'Sed molestiae nihil itaque quasi molestias assumenda iusto.', 'Dolorem voluptate corrupti dolor harum similique. Et cum officiis recusandae. Magni assumenda corrupti maiores eos quia. Asperiores alias consequatur in corrupti provident sequi.', 6, 35, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(8, 'Magni fugiat commodi quia sunt quis nisi exercitationem.', 'Excepturi laudantium dolores ut enim voluptate. Omnis ut aut aspernatur dolores veritatis necessitatibus. Blanditiis quia enim nemo velit.', 6, 6, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(9, 'Ut dolorem libero corporis doloremque esse eaque voluptate.', 'Enim earum a quisquam aut quasi. Modi saepe repudiandae accusantium ullam aut. Earum enim et quae autem exercitationem necessitatibus quo.', 1, 43, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(10, 'Soluta aut ut totam atque rerum amet.', 'Nam voluptatem ea iusto quis aut illum debitis consectetur. Inventore temporibus voluptatibus qui et maxime cumque. Occaecati ut animi eligendi.', 4, 41, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(11, 'Modi reiciendis nostrum expedita.', 'Itaque dolorem rerum dignissimos eveniet. Harum aut sunt occaecati. Aliquid quis adipisci molestias mollitia qui possimus. Provident exercitationem qui eum eum voluptatem. Eveniet tenetur ut vel earum beatae repellat quia dicta.', 3, 44, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(12, 'Tenetur aperiam sunt cupiditate tempore tempore rerum temporibus.', 'Rerum suscipit qui ipsum itaque esse enim accusantium. Et quasi atque repellat culpa corrupti.', 3, 23, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(13, 'Iure dolor voluptatem eius quasi nulla ut non.', 'In quidem consectetur et neque. Et natus eligendi iste labore sequi consequatur quidem. Libero magni qui veritatis ducimus est consectetur alias. Praesentium qui saepe consectetur magnam impedit hic.', 2, 38, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(14, 'Aliquam nisi saepe sit quod.', 'Eaque assumenda delectus et quod repellat cum. Doloremque reprehenderit aperiam temporibus voluptatum. Aut nisi dolor ratione id aut ad possimus.', 1, 26, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(15, 'Molestias minima autem eum ut laborum.', 'Sit est vero dolor quisquam reprehenderit nulla. Voluptas qui quas quas sed itaque est tempore dolorem. Autem tenetur tempore omnis a ratione. Accusantium dolor nobis expedita minus.', 6, 36, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(16, 'Dolor quas ut ab eligendi minima.', 'Sed adipisci et adipisci doloribus consequatur dolorum. Earum illo ut aliquid molestiae aut minus. Dolores consequuntur inventore tenetur sit. Mollitia officiis necessitatibus officiis ut fugiat eaque consequuntur.', 6, 38, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(17, 'Hic autem dolore accusantium architecto quia similique.', 'Laboriosam perferendis velit aut nesciunt rerum fuga nemo. Veritatis minima alias quia accusamus. Ut non facilis illo expedita quidem facere.', 2, 18, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(18, 'Porro rerum sequi neque eius aut.', 'Omnis non consequuntur ipsam ea est consequuntur reiciendis. Dolorem repudiandae sapiente temporibus id. Omnis molestias consequatur provident tempore ut ut amet. Mollitia sed nostrum aut quia.', 5, 27, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(19, 'Ut optio quis occaecati qui.', 'Iste nihil repellendus pariatur ut dolorem voluptate quos. Numquam aspernatur voluptatem sunt. Voluptatem nulla voluptas a nam est.', 4, 42, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(20, 'Voluptas aperiam sequi suscipit harum commodi.', 'Est nesciunt autem aut. Minus aut temporibus debitis adipisci. Laboriosam voluptatem cupiditate ea consectetur. Autem error ratione et asperiores totam.', 5, 5, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(21, 'Minima rerum aperiam fugit qui eos.', 'Qui et dicta nobis fuga sint commodi nobis. Error inventore sed consequuntur illum. Reprehenderit aliquam aut qui et ut nesciunt.', 2, 9, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(22, 'Ipsam est blanditiis laudantium aliquam.', 'Voluptas facere eos et. Temporibus dolorem quia saepe optio et. Dolorem praesentium eos sunt aliquam. Autem facilis ipsa rerum esse a.', 1, 49, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(23, 'Molestiae id nihil dolorem est ut.', 'Ut rerum vitae et. Voluptatem animi quod libero. Sunt quis est asperiores dignissimos.', 6, 4, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(24, 'Asperiores a non saepe facilis.', 'Quas qui soluta repudiandae vero. A repudiandae repellat facilis pariatur voluptatem. Ipsam voluptas nobis pariatur porro possimus qui quas sed.', 6, 29, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(25, 'Qui numquam impedit qui repellat eos deleniti sapiente.', 'Nobis nemo consectetur laborum repudiandae earum magnam. Ut velit hic harum explicabo. Dolor tempora perferendis neque. Praesentium eos provident at et.', 5, 7, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(26, 'Provident fuga sint impedit id in.', 'Atque similique voluptatibus eum sequi eaque. Facilis et similique asperiores maxime veritatis non dolor rem. Rerum pariatur voluptate dolor dolor illum occaecati minima. Optio cum iusto sed beatae esse voluptatum at.', 1, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(27, 'Est ex officiis saepe sit commodi ut.', 'Est nihil dolor nam aut ratione. Vitae qui vel culpa quidem omnis nobis quo. Aut sit assumenda similique in sed eius deleniti. Dolor ullam suscipit reprehenderit laborum occaecati.', 4, 11, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(28, 'Quas molestias sed in.', 'Est eum culpa nihil voluptas ut soluta. Sed molestiae distinctio corporis modi aut hic incidunt.', 3, 5, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(29, 'Quisquam pariatur sit magnam.', 'Necessitatibus eius perferendis rerum accusamus. Sequi in explicabo velit vel veritatis nobis. Laudantium dolor sequi nesciunt. Est voluptatem iste consequuntur qui voluptatibus. Illo consequuntur iusto laborum enim magnam.', 3, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(30, 'Pariatur et sed voluptatem praesentium vel voluptas aut.', 'Labore distinctio sequi velit nemo. Suscipit reiciendis excepturi occaecati possimus. Minima id iste expedita sit sed.', 1, 8, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(31, 'Et ut illo iure iure amet.', 'Id enim modi et. Et quia incidunt numquam tempora velit omnis officia. Dolorem aliquam dolorem soluta sint quaerat. Distinctio quis temporibus explicabo voluptatem dolore aut nemo.', 2, 40, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(32, 'Omnis aut animi quam recusandae adipisci animi quia.', 'Voluptas nihil quibusdam culpa sunt qui. Adipisci dicta autem suscipit ducimus mollitia officiis. Aut eveniet fugiat est sit et animi. Omnis qui itaque accusantium modi quaerat.', 2, 39, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(33, 'Asperiores quia est placeat tenetur corporis rerum et.', 'Delectus qui dolores quod amet autem sed. Sed sapiente odit aut eligendi dolorem.', 5, 41, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(34, 'Quae eius veniam sunt voluptates voluptatem.', 'Ut est eum laudantium rem. Sapiente aperiam occaecati animi eligendi. Et nihil non sit consequatur quia vel.', 5, 36, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(35, 'Eligendi vel quibusdam reiciendis expedita dolores officiis.', 'Fugiat inventore atque id. Repellat incidunt vel molestiae exercitationem voluptate eos aliquam. Qui molestiae magnam sint eos ex.', 6, 32, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(36, 'Error aliquid laboriosam perspiciatis magnam.', 'Occaecati neque necessitatibus neque officia quae. Odit et vero necessitatibus esse doloribus. Qui et et veritatis eum ut enim repellat. Dolorum quas a dolor dolorem sunt mollitia.', 4, 29, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(37, 'Ea totam est qui nesciunt.', 'Earum commodi quis molestiae voluptate voluptatem. Velit aspernatur a qui aliquam ipsam et numquam quo. Sit et consequatur aliquid voluptatem in.', 1, 33, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(38, 'Quas illum molestias ea facere.', 'Aliquid reprehenderit sit debitis consequatur. Nesciunt earum reiciendis eos occaecati. Perspiciatis ut accusantium dicta molestiae in.', 2, 15, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(39, 'Quia harum sit iste maxime assumenda aut.', 'Quasi iusto neque cum nihil nisi. Earum nostrum et perspiciatis magni quis molestiae dolorum. Nihil similique distinctio at.', 2, 50, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(40, 'Nostrum corporis cupiditate quaerat neque.', 'Non aut ut consequatur at corporis praesentium. Numquam esse quia et repellat quae natus. Accusantium eveniet ipsa quo consequatur ipsum omnis ut. Eaque ad occaecati sed itaque odit maxime. Temporibus id voluptatem rerum alias error placeat rerum qui.', 4, 4, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(41, 'Laudantium totam eum recusandae architecto voluptatem et quo.', 'Ut sapiente sed ex quisquam nam rerum. Fugiat eaque itaque ratione laboriosam earum. Quia nobis aut voluptatem est provident voluptates aut. Fuga quis inventore nulla iusto accusamus.', 6, 21, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(42, 'Ut dolorum iste facere ut ducimus magnam voluptatum.', 'Ut facere minus fugiat fugiat provident ut. Iste officiis quia dolor temporibus ab. Nisi quis fuga quas ut porro nobis quis.', 3, 16, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(43, 'Quas aut cumque repellat corrupti.', 'Qui aut odit voluptatem vero rerum et itaque. Ratione cum eligendi perferendis. Aut aut et atque possimus et pariatur harum. Mollitia culpa commodi amet quos voluptates doloribus. Sunt quos cum fugit officiis ut autem.', 1, 45, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(44, 'Ratione iure occaecati laudantium quibusdam est eum neque et.', 'Repellat occaecati dolor nam et sed. Porro cumque repudiandae quidem explicabo sit culpa quis. Qui harum molestiae magni aut labore amet iste atque.', 5, 18, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(45, 'Id consequatur sunt labore earum ipsum quia vitae itaque.', 'In provident omnis iusto necessitatibus et debitis. Sint dolores necessitatibus tempore sapiente qui itaque et. Laboriosam id veniam consequatur odit.', 2, 31, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(46, 'Magni quia non voluptate est nisi.', 'Quia enim assumenda esse qui voluptatem. Error quia autem exercitationem. Quia tempora illo animi eligendi repudiandae.', 4, 21, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(47, 'Ipsa hic et est quos dolore omnis.', 'Quidem necessitatibus aut fuga ex. Sit impedit et voluptatibus eveniet.', 4, 8, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(48, 'Enim occaecati eius aliquid est.', 'Et et corrupti dignissimos deleniti veritatis optio. Delectus voluptatum harum tempore similique molestiae.', 5, 41, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(49, 'Similique distinctio voluptas occaecati nostrum.', 'Modi voluptatem dolorem ex totam quae nihil. Maiores dolores deleniti iste dolores illo harum voluptates. Aut nobis praesentium eos vel repudiandae dignissimos.', 2, 42, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(50, 'Veniam exercitationem accusantium vero doloremque eligendi ratione officiis.', 'Ut consequuntur corrupti ratione repellendus autem voluptas repudiandae. Ullam et eveniet animi quaerat quaerat repellendus. Illo eos laborum consequatur sunt dicta soluta.', 1, 40, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(51, 'Dolore voluptatem ut sunt nesciunt sit numquam eaque est.', 'Dolore et fugiat pariatur. Illo sint ea excepturi ducimus voluptatum ut. Tempore enim at asperiores soluta. Numquam ut rem debitis voluptas soluta.', 3, 28, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(52, 'Exercitationem est non dolore aliquid qui hic.', 'Doloremque quia architecto sed. Totam enim temporibus voluptatem aut. Fugit et sed explicabo autem eos ut.', 1, 16, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(53, 'Rem odio ratione rem repudiandae.', 'Doloribus nihil velit cum rerum. Corporis aut harum doloribus doloribus ipsam illo odio doloremque. Aut voluptatem voluptate est autem placeat. Velit numquam aut ipsum vero iste dolore.', 4, 30, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(54, 'Quis minus debitis quia.', 'Et iusto velit sunt dolorem in. Numquam voluptatem non quo nostrum voluptatem quasi quis. Officiis architecto illum omnis ipsam qui et voluptatem eligendi.', 6, 44, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(55, 'Iure nisi exercitationem officia expedita.', 'Libero sapiente voluptatibus expedita dolores enim nihil mollitia. Et et deserunt accusamus qui provident maiores aut. Autem qui molestias eos optio dicta nobis.', 3, 1, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(56, 'Deserunt sed nulla repellendus laboriosam recusandae.', 'Ea enim vel amet sit mollitia. Dolore corrupti corporis excepturi maxime fugiat perferendis. Optio facilis debitis velit quis pariatur qui. Voluptatem non fugiat voluptatum id veritatis mollitia veniam.', 5, 7, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(57, 'Ipsum cumque blanditiis dolorum et sunt.', 'Itaque voluptas doloribus dignissimos ut. Tenetur repudiandae vitae est eius qui atque quisquam. Impedit sapiente officiis tempora atque qui ex.', 2, 11, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(58, 'Tempora nulla omnis voluptate voluptatem cum delectus eaque.', 'Sed molestiae facilis incidunt nostrum. Neque consequatur rerum unde est provident. Corrupti ad et pariatur sunt nihil quo. Quisquam praesentium expedita eum aut.', 5, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(59, 'Dolorem et harum repellat et quia qui quia.', 'Quia occaecati suscipit impedit sit. Quia quasi excepturi omnis aut sint quibusdam.', 1, 40, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(60, 'Expedita quo ipsa dicta.', 'Molestiae non praesentium voluptas vitae nemo. Adipisci fuga voluptatem non ut. Perferendis magnam nemo voluptatem qui. Laborum ut voluptas cupiditate.', 3, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(61, 'Sed iusto tenetur voluptatibus.', 'Reprehenderit quaerat excepturi quo eligendi sit veniam et. Dolores provident aspernatur dignissimos exercitationem laborum praesentium ipsum. Molestias temporibus voluptatibus cupiditate non a modi doloremque. Esse ducimus adipisci iure nihil dolore harum.', 2, 38, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(62, 'Harum quo aut tempore exercitationem sint eum eligendi.', 'Aut ipsam ipsum eum repellendus. Sit aut est sed aperiam itaque voluptatem repellat. Asperiores est ipsum qui non iusto.', 4, 50, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(63, 'Quo et nulla veritatis possimus.', 'Dignissimos eius et error animi. Autem blanditiis sed voluptatem impedit veniam eveniet voluptate. Natus aliquam magni totam dignissimos neque. Iste fugiat nemo dolores accusamus rerum suscipit.', 3, 2, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(64, 'Nisi libero ut et quas.', 'Optio dolorum vero et voluptates rem vel reiciendis. Aut laborum et officia ducimus laborum praesentium eligendi minus.', 5, 12, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(65, 'Et sed dolores et nisi.', 'Voluptate nam et similique praesentium explicabo aut fugiat. Expedita nihil quod unde aut. Nulla numquam adipisci nihil illum itaque et praesentium.', 2, 50, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(66, 'Deleniti a quia eius.', 'Quidem architecto quia quod magnam dolorem earum eligendi. Cupiditate eaque ipsam placeat. Perferendis pariatur in vitae rerum.', 5, 19, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(67, 'Voluptas doloremque numquam molestiae quis ipsa.', 'Necessitatibus at ab consequuntur hic neque et repudiandae. Voluptatem illo possimus doloremque veritatis amet. Labore aut enim non ducimus amet.', 6, 12, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(68, 'Numquam et expedita error sed sint.', 'Voluptas ea aut laboriosam deserunt. Dicta adipisci tempore itaque eveniet atque. Et est at ut qui fuga corrupti. Optio enim quia architecto et.', 2, 42, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(69, 'Eum ullam omnis error suscipit.', 'Et aliquam quidem ut asperiores voluptatem magni sapiente et. Amet omnis aut qui et. Non suscipit dolores neque atque ab totam. Eos ea ducimus nisi tenetur quo eos.', 3, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(70, 'Quibusdam asperiores perferendis quo.', 'Velit porro possimus ut enim distinctio. Distinctio pariatur enim officia iure occaecati. Cumque amet blanditiis voluptas est reprehenderit porro. Dolores omnis sint et porro dolor quia eum.', 4, 4, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(71, 'Dolor ducimus at eaque hic doloribus dolore enim.', 'Illum perferendis excepturi corporis excepturi. Porro quo iusto incidunt. Non totam voluptates fuga aut consequuntur vel autem. Ut quibusdam eum deleniti expedita tenetur alias ipsam.', 3, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(72, 'Quia quia praesentium ex aut.', 'Est eius fugit rem et distinctio. Et illo ea consequatur iusto qui. Libero hic libero vel voluptatum non. Reiciendis odio quo voluptatibus quia facilis fugit.', 1, 24, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(73, 'Et modi cumque neque voluptatem.', 'Omnis rem labore perspiciatis error qui. Aut alias in cupiditate sint placeat. Ratione voluptatem impedit et sapiente. Ut hic tempore omnis est fugit consequuntur.', 3, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(74, 'Nisi dolor autem et corrupti earum tempora tempora repellat.', 'Sunt eius hic minus porro ea ullam dolor. Voluptatum natus quis sed sit et accusantium. Quis provident voluptate animi molestiae alias est iure.', 2, 26, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(75, 'Velit non ut tempora vel et est adipisci.', 'Consequuntur asperiores aut aut. Ut ipsa voluptatem et et qui. Blanditiis illum esse similique qui ratione voluptatem sunt. Distinctio provident et eaque.', 1, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(76, 'Quis necessitatibus excepturi debitis.', 'Omnis repellendus eaque vitae consequatur molestiae est. Non quaerat nesciunt atque laborum. Ex est velit voluptatem consequatur. Quaerat aperiam molestiae blanditiis molestiae officiis autem.', 2, 37, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(77, 'Facere perspiciatis quaerat et ut.', 'Quos repellat porro et consectetur. Quidem velit placeat et incidunt. Repudiandae voluptates vero est aliquam rerum iusto.', 2, 42, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(78, 'Adipisci reprehenderit ad sint quia.', 'Ea iusto odit ea similique aut praesentium aut. Amet ut aut voluptatem reprehenderit odio. Distinctio temporibus delectus voluptas eligendi et reiciendis qui.', 5, 17, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(79, 'Aut suscipit corrupti incidunt tempora accusantium voluptatem.', 'Qui aut eius reiciendis ipsum. Omnis occaecati nisi labore possimus impedit reiciendis et. Saepe libero temporibus placeat sequi eveniet.', 5, 12, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(80, 'Eum fugiat quasi dolor ipsam reprehenderit omnis exercitationem similique.', 'Error quisquam ut explicabo culpa repellendus. Quod ea distinctio et dolores vero necessitatibus eos. Dolor numquam similique voluptatem aut.', 6, 48, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(81, 'Numquam qui ut amet quas ut.', 'Et asperiores corrupti omnis labore iste ipsam. Quos sint quas excepturi voluptatibus. Labore veniam autem unde enim quo reprehenderit.', 5, 25, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(82, 'Eius et soluta odit iste similique qui.', 'Consectetur expedita vel sint suscipit ab veritatis. Sit dolorem sint nihil reiciendis culpa sequi eum. Voluptatem tempore ut dolore voluptate totam.', 5, 18, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(83, 'Voluptas blanditiis dolores sit exercitationem non molestias.', 'Ut magni dolorum voluptatem tempora. Expedita aliquid voluptas consequatur dolores error commodi error. Et et quo repellendus quia doloremque. Rerum id sit voluptatem et.', 5, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(84, 'Alias molestiae voluptas beatae qui.', 'Aspernatur sit provident fugit vel ipsam iste nihil. Ut ut itaque nam voluptates earum. Iure id voluptatem quos omnis sed harum perferendis dolorum. Ducimus explicabo aut nulla porro.', 6, 12, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(85, 'Placeat voluptatum voluptatem voluptatem et ullam corrupti.', 'Qui cupiditate rem nisi eos modi autem. Accusamus consequatur quia harum et ea sed consequuntur ex. Impedit fuga officiis sed quasi et aut. Sed itaque laboriosam esse exercitationem vel tempore eaque.', 4, 30, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(86, 'Soluta id quis repudiandae odio.', 'Quasi aspernatur sed fugit dolores fuga. Eius officiis aliquid commodi eligendi. Quia tempore dolorum corrupti aut eos. Et non quis accusamus cumque.', 6, 43, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(87, 'Tempora quod molestiae alias voluptatem ratione velit sunt nisi.', 'Odit consequatur reiciendis provident iste sunt. Ratione iusto qui unde tempora eum. Expedita repellat at maxime consequatur voluptatibus vel. Quo est fuga libero adipisci impedit.', 2, 29, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(88, 'Illo distinctio voluptatem et nemo sit.', 'Rerum eos corrupti quo dolorum optio dolorem. Quas iste consequatur illo quidem. Maiores quisquam libero quae et. Magnam nemo velit at quasi dolorem doloremque aut.', 2, 51, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(89, 'Hic accusantium enim alias magnam facere dolorum laborum.', 'Quas eaque eum sapiente et quo non dolor ea. Accusantium nobis corporis occaecati vitae qui rerum. Id eveniet itaque sed eos quia vitae mollitia.', 1, 4, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(90, 'Quia dolore et voluptates quo.', 'Est libero quos sunt asperiores quas. Provident ratione quo ut non sed. Maxime sit cupiditate consequatur porro culpa.', 4, 10, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(91, 'Hic facilis est quisquam.', 'Neque explicabo nostrum et consequatur facilis. Aspernatur provident optio itaque aut asperiores eveniet dolorum. Tempore quia sint est.', 3, 22, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(92, 'Recusandae qui sed nesciunt quo.', 'Tempore ad autem ut facere dolorem rerum qui. Non consequatur vitae harum. Repellendus ut illum nihil sed.', 5, 28, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(93, 'Eos enim est quo quia.', 'Veniam occaecati non vel eos non recusandae. Quaerat quam exercitationem illo enim at ut sequi. Officiis aliquid voluptatem nobis eaque animi accusantium omnis. Corporis omnis ad rerum omnis et est incidunt.', 3, 11, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(94, 'Cum minima consequatur tenetur nostrum.', 'Impedit vero ut aperiam. Voluptates quas aut unde qui perferendis. In iusto quisquam autem fugit occaecati iste voluptas.', 5, 40, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(95, 'Dolorum magni optio non dolorem eius aut repudiandae.', 'Est numquam ratione consequatur quo dolor molestiae. Et est alias eius. Assumenda non vero laborum rerum numquam et. Ut repellendus dolores illum sunt omnis reprehenderit dicta.', 1, 50, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(96, 'Blanditiis voluptatem et consequatur.', 'Veniam labore saepe voluptatem dolor repellat. Quo adipisci itaque rerum architecto nam a debitis ut. Qui sed quo est asperiores dolore.', 5, 49, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(97, 'Dolorem eos illo autem nulla animi amet.', 'Beatae sint eum et veniam incidunt voluptatem voluptas. Vero dolorum eveniet voluptas est. Exercitationem quia est aliquam laborum.', 1, 31, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(98, 'Nam quo exercitationem sint sint.', 'Aut reiciendis velit unde eius expedita incidunt et. Voluptatem sint unde sed amet velit ut. Soluta voluptas vel consequatur accusamus reprehenderit amet laborum nostrum.', 1, 6, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(99, 'Quia maxime sit fugiat qui voluptatem qui est.', 'Illo autem accusantium dolorum sint nihil id. Perferendis et eum labore blanditiis. Omnis quia distinctio rerum quaerat. Voluptatum minus nihil dolore labore velit eaque vel velit.', 5, 24, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(100, 'Dolores natus magni itaque voluptates laboriosam aut aut.', 'Dolor incidunt eos sequi rem dolores. Voluptatem officiis et est minima esse iure neque omnis. Qui tempora distinctio odit nihil ad.', 4, 16, '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(101, 'Eligendi quia quo magnam quam ut qui quia reiciendis.', 'Eligendi voluptatem numquam officia dolores. Voluptates praesentium dicta voluptatem sequi non.', 6, 28, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(102, 'Earum cumque ut nobis at.', 'Voluptatibus aut beatae provident temporibus impedit adipisci. Ducimus voluptatem nisi dolorem dolorem doloremque mollitia velit. Autem animi vel harum et. Facere suscipit aut qui ipsa ut.', 5, 40, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(103, 'Dolore omnis atque ullam aliquam.', 'Nostrum ut voluptas ea vitae odit. Eius optio a architecto quisquam fugiat libero. Est dolores quas ut sed veritatis incidunt. Possimus possimus qui enim aut aliquid consequuntur est.', 6, 12, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(104, 'Temporibus et voluptatem explicabo tempora soluta est.', 'Qui quo magni alias nemo temporibus. Voluptate ipsum quia ratione perferendis ea. Est in in explicabo. Ut et quisquam eos eaque molestias molestiae beatae.', 2, 63, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(105, 'Corporis consectetur ut praesentium neque quia a.', 'Vel quo laudantium ut voluptatem velit est aut. Quos placeat ut qui voluptas unde ut aut aut. Placeat numquam ratione suscipit nisi est unde ex. Quo magnam sit ipsa laborum architecto sed harum qui.', 1, 52, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(106, 'Voluptas nulla enim molestiae et.', 'Velit est est aut non. Laboriosam velit explicabo id quasi. Et sint quia quod provident. Et vitae maiores hic dolorem ratione.', 6, 57, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(107, 'Ipsum ut adipisci quo iusto voluptas.', 'Recusandae doloribus quas inventore cumque sed rerum quia. Et culpa esse dignissimos aut. Omnis minus nihil eos.', 5, 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(108, 'Consequuntur reiciendis ut ad assumenda velit.', 'Consequatur natus eveniet dicta est vero consequuntur eius qui. Temporibus est temporibus minus voluptatum expedita suscipit. Quis molestias ducimus expedita consequatur ad dolorem harum quos.', 5, 90, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(109, 'Sequi tempora et animi harum deserunt qui sapiente.', 'Soluta earum reprehenderit et aperiam. Dolorem nesciunt reiciendis ut doloribus. Autem unde et et ab.', 1, 29, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(110, 'Quis voluptatem ut perspiciatis molestiae alias sunt quo.', 'Amet non sit ratione autem ut minus culpa. Nemo debitis maiores qui laudantium. Aut commodi omnis recusandae quia rerum totam cupiditate.', 2, 48, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(111, 'Sed est ut quis molestiae praesentium eum fuga reiciendis.', 'Soluta deleniti repudiandae eos reiciendis est adipisci iusto. Consectetur rerum quas ut maxime explicabo est et. Voluptate earum quis nobis molestiae est. Consequatur enim non rem sint. Dolorem dignissimos nisi nesciunt quod consequuntur architecto adipisci.', 3, 75, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(112, 'Autem itaque ullam perspiciatis autem.', 'Iusto totam numquam sed deleniti voluptas ea. Iusto unde illo itaque et aut commodi laudantium laudantium. Dolorem veniam dolor quo nesciunt laboriosam.', 3, 8, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(113, 'Suscipit incidunt eveniet et sint iure dolores excepturi.', 'Fugit et libero fugit possimus. Ea error ea ut veniam deleniti. Similique porro ut et rerum vel minus.', 4, 26, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(114, 'Error ut corporis omnis minus.', 'Qui laborum excepturi impedit. Perferendis molestias ea commodi aut. Perferendis totam tenetur laudantium vel qui soluta.', 3, 92, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(115, 'Ut error ipsum delectus necessitatibus rerum omnis.', 'Et doloribus ea dolores consequatur temporibus. Optio esse dolorum quas est autem aperiam. Et repellendus non unde quis saepe perferendis illo quis.', 3, 73, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(116, 'Vel facere totam temporibus beatae.', 'Perspiciatis id et nisi temporibus. Nam commodi vel quaerat ea aut nulla consequuntur. Aut est dolore autem esse.', 6, 22, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(117, 'Veniam voluptates ipsa sed omnis id consequatur excepturi.', 'Similique voluptatem at dolore consequuntur veritatis alias et non. Quia qui nostrum porro necessitatibus ut doloribus nulla. Qui odit et omnis ullam ipsum. Ratione et laborum laborum optio placeat vel quibusdam.', 2, 48, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(118, 'Esse dolorem nam suscipit dignissimos.', 'Ut provident vel aliquid possimus vero similique sed. Sequi exercitationem et dolor nam sit. Laboriosam placeat repellat recusandae nobis sed voluptatem dolorum. Dolorum quibusdam dicta fuga voluptas iste.', 6, 96, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(119, 'Harum odit nihil molestiae officia non hic quis.', 'Itaque perferendis molestias dolorem quis enim modi sint eum. Possimus minus eaque voluptatibus eos ab exercitationem nostrum. Ipsum adipisci officiis odit voluptas est eaque ut. Reprehenderit magnam dolorem ut fugit doloribus eligendi.', 5, 32, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(120, 'Esse et fugit placeat ipsum.', 'Quidem vero animi excepturi. Illum ut voluptas et. Sit rerum consequatur et et aliquid.', 4, 87, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(121, 'Assumenda aperiam tempora ipsum qui dicta.', 'Culpa in dolorem dolor autem totam perspiciatis in magni. Aut excepturi ea eius rerum. Et voluptatem eligendi facilis mollitia.', 4, 77, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(122, 'Quae provident aut delectus rerum aut omnis.', 'Nobis dolor sunt distinctio id aut fugiat. Vel rerum soluta enim quam error aut rem. Accusantium doloremque deserunt nemo et delectus vitae eos. Iste molestias ea enim omnis eos facilis exercitationem.', 1, 64, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(123, 'Eum et voluptatibus dignissimos quasi.', 'Officia cum est adipisci dolor aut. Omnis commodi eos et id hic repellendus tenetur debitis. Tenetur non ab earum dolore est incidunt iusto. Commodi velit tempore et praesentium eligendi enim qui.', 2, 28, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(124, 'Quasi mollitia tempora inventore est doloribus error.', 'Ut rem dignissimos animi ratione doloremque ducimus. Eligendi dolores fugiat consequatur quasi ut veritatis dolores. Est quo facere qui qui.', 5, 97, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(125, 'Neque sed doloremque et reprehenderit.', 'Ea voluptatem autem ut vero est laboriosam consequatur nostrum. Natus vel reprehenderit aut animi magnam veritatis quod qui. Voluptatem voluptatem perferendis dolores ea officiis delectus nam perferendis.', 1, 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(126, 'Explicabo officiis cumque quia vero amet maiores.', 'Saepe id neque ea optio consectetur et. Et magnam rem fuga ut et ratione. Ratione unde id tenetur aut et. Possimus voluptas natus ex quo accusamus.', 5, 78, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(127, 'Quidem vero maiores aut.', 'Odit pariatur quam et inventore itaque inventore. Quo consequatur qui alias ut quisquam. Reprehenderit quia est quis eum explicabo.', 2, 51, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(128, 'Sit ullam deleniti nihil excepturi.', 'Ut excepturi consequatur dicta rerum veniam et laudantium. Qui voluptate reiciendis rerum. Eaque ad harum sint doloremque et eaque natus sit.', 1, 62, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(129, 'At quia mollitia repellat ut quis ut fugiat.', 'Saepe aut quam voluptatibus id. Nemo perspiciatis est consequuntur nisi. Repudiandae omnis ea unde aut. Veniam cum commodi porro aliquam aut esse quia nihil. Molestiae voluptates sint consequatur quis voluptatem beatae.', 6, 30, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(130, 'Dolorum ea natus neque repudiandae.', 'Qui fugit id sint ut reiciendis. Eos labore voluptatem quia sunt fugiat. Ut dolore quos fugit praesentium.', 6, 24, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(131, 'Labore dignissimos laudantium qui accusamus ab nulla et.', 'Beatae esse expedita repellat optio fugit sed dolores. Qui omnis itaque incidunt unde labore perspiciatis. Praesentium at cumque ad ipsam error. Quis quo sint reiciendis voluptas molestiae dolor reiciendis.', 4, 56, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(132, 'Nihil ut tenetur harum optio.', 'Ullam nulla ut est consequuntur id totam. Excepturi modi est placeat explicabo.', 6, 56, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(133, 'Laboriosam ea a incidunt et ex.', 'Illo consectetur ipsum non fugiat eos aut veritatis voluptate. Deserunt voluptatem sed quibusdam harum autem nisi placeat corrupti. Soluta sint laboriosam maiores illo.', 2, 81, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(134, 'Dolorem voluptatibus sit aut impedit architecto quaerat.', 'Facere nulla vitae quia quae aut molestias. Qui modi error saepe officia autem. Omnis vero aspernatur doloribus qui. Est blanditiis possimus tenetur voluptas magni blanditiis.', 2, 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(135, 'Vero id voluptatem non nostrum repudiandae vel voluptates.', 'Exercitationem culpa sed non voluptatum non porro. Eum neque et cumque quisquam rerum eligendi nam.', 1, 46, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(136, 'Occaecati occaecati sapiente reprehenderit nam.', 'Itaque minus excepturi eaque sed dolor consequatur quia. Ut velit omnis saepe unde in voluptatem. Temporibus suscipit temporibus ut tempore debitis doloremque.', 2, 71, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(137, 'Illo earum cumque dicta laudantium voluptas.', 'Unde saepe sequi dolor provident aliquid dolores laudantium. Ut id nostrum hic sint at. Quas asperiores quo magnam incidunt ex beatae velit molestias. Quod id quisquam vero.', 3, 41, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(138, 'Dignissimos sapiente cumque totam.', 'Quod aut corrupti sed eos sint fuga. Consequuntur id enim soluta officiis inventore maxime possimus. Sed reprehenderit sit quibusdam pariatur et tempora.', 1, 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(139, 'Harum ad omnis et eveniet est tempore.', 'Voluptatem laudantium consectetur inventore incidunt et ad id nostrum. Autem sed qui ut officiis quaerat est quos dignissimos. Modi aut esse omnis consequatur aut velit.', 1, 43, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(140, 'Ea dolor consectetur earum sunt qui facere.', 'Ut deleniti natus reprehenderit ipsa et quae et. Numquam dolorem quam cupiditate dolores. Sequi maxime sit quia adipisci et et.', 4, 19, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(141, 'Qui cumque natus et omnis eligendi quam.', 'Saepe corrupti quis quaerat sequi asperiores explicabo reprehenderit. Voluptas et nesciunt ab aperiam delectus. Repellendus repellendus minima qui fuga voluptates vel. Quia quas tempore ad.', 6, 55, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(142, 'Aut ut in nihil voluptas vero sed dolorum.', 'Molestias quidem deleniti expedita blanditiis quod. Natus ut consequuntur facilis. Veniam ullam sunt a qui in adipisci. Explicabo molestiae aperiam maxime libero impedit rerum.', 2, 30, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(143, 'Atque enim ea voluptatem voluptatem aut.', 'Voluptas aliquam laudantium error laborum non. Vero atque est odit eaque quo. Officiis ut aut totam dolor eveniet et impedit. Corporis ullam eum voluptatem fuga.', 1, 42, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(144, 'Et sed fuga inventore ad illo quaerat modi sunt.', 'Reprehenderit repudiandae laudantium quia est ea nisi accusantium. Saepe quisquam aliquid ab exercitationem dolorum. Blanditiis at adipisci neque. Et similique ipsum at eius quas.', 2, 100, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(145, 'Aut sunt voluptatum laudantium sapiente nemo velit aperiam voluptatibus.', 'Cupiditate deserunt minus soluta fuga. Quia animi velit ipsa fugit hic aliquid. Molestiae id non tenetur et voluptas eum possimus. Minima dolores et corrupti eum.', 5, 101, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(146, 'Ut quisquam sapiente doloremque occaecati sed enim consequuntur.', 'Ea nostrum recusandae eaque corrupti odio est nobis. Commodi alias beatae vitae accusamus. Qui voluptatem porro ea rem totam. Autem magnam cum sed ut.', 4, 95, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(147, 'Eaque officia ab ad consectetur qui et.', 'Quam qui totam harum a impedit quae officia. Ut quod quis et officia nihil earum. Consequatur ut est dignissimos cumque. Voluptas ratione labore beatae autem cumque.', 6, 82, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(148, 'Pariatur et alias ut iure ut harum ut officia.', 'Doloribus praesentium neque sit id aliquid. Et reprehenderit ab dolorem id maxime ad sint. Illum magnam voluptate aut laboriosam saepe consequatur.', 1, 64, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(149, 'Ratione dolor commodi deserunt consequatur ex cupiditate.', 'Similique hic non id ducimus. Quod consectetur reiciendis aut fuga magnam explicabo et. Ea eligendi tenetur et ut voluptatibus consequuntur repellendus. Et deleniti aspernatur ipsam et.', 6, 98, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(150, 'Quo quis ipsam sint quam commodi hic.', 'Fugiat dolore est ut in aliquam blanditiis. Possimus vitae consequatur maxime quo fugit. Eius consectetur consequatur non porro.', 3, 69, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(151, 'Rerum velit molestiae similique earum dicta.', 'Iste commodi est magni necessitatibus et quisquam debitis. Distinctio saepe corrupti quaerat fugit. Unde et vitae laboriosam autem pariatur porro molestias a.', 1, 53, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(152, 'Id est nostrum accusantium alias.', 'Temporibus omnis quo voluptatem porro vitae quisquam. Non nostrum dolor excepturi odit qui harum quis dolores. Sint magnam quod omnis ea cupiditate.', 4, 51, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(153, 'Iure qui atque et libero amet optio voluptas quibusdam.', 'Sunt dolorum at quasi laboriosam nostrum. Nihil tenetur autem enim ducimus quo. Qui eligendi fugit illum. Accusamus maxime id eos impedit adipisci ea maiores.', 5, 45, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(154, 'Quo qui dolores soluta sunt illum quibusdam.', 'Porro sunt non et. Commodi est facere tenetur sed placeat labore et. Ducimus voluptatum sed ipsa consequatur.', 6, 77, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(155, 'Dolorum at et deserunt.', 'Doloremque hic corporis perferendis ut rem. Eius aspernatur quo itaque nihil. Placeat voluptatem ullam nobis est quam ex. In quia id ut soluta. Qui minima corporis nam aut dignissimos quae ipsa esse.', 6, 97, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(156, 'Et quia in consectetur voluptatibus laudantium.', 'Nobis necessitatibus libero animi dignissimos. Deserunt recusandae porro voluptatem dignissimos omnis quo ut. Expedita quidem iure et.', 1, 4, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(157, 'Eos temporibus amet officia modi nihil fugit.', 'Dolores quibusdam nisi dolores et fugiat sit repellat reiciendis. Nemo exercitationem at quia provident consequuntur officia deleniti. Accusamus officiis voluptate laudantium temporibus itaque.', 4, 44, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(158, 'Culpa reiciendis accusantium minima vero est nisi.', 'Reiciendis quae molestias id explicabo in natus. Ut excepturi impedit nostrum non id ut. Minima perferendis asperiores a et voluptatem.', 6, 45, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(159, 'Debitis veritatis libero voluptate dolorum voluptatibus.', 'Saepe ea ipsa id labore. Eveniet enim tempore totam non alias at non. Consequatur enim et aut dolore quo.', 6, 62, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(160, 'Fugit temporibus laborum nihil sit omnis asperiores.', 'Ut saepe laboriosam molestiae corrupti inventore. Cum iusto qui illum esse. Qui totam recusandae ex adipisci perferendis recusandae.', 2, 65, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(161, 'Sit ipsam recusandae similique qui commodi molestias omnis.', 'Iusto iste esse enim cum nesciunt. Et aperiam est quidem illum sit et. Veritatis ex occaecati ut est.', 1, 84, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(162, 'Laudantium quos vel ex voluptas iure.', 'Harum aut laboriosam autem dolorem similique. Eum est explicabo atque enim est fugit vel. Omnis perspiciatis odio eveniet qui. Incidunt quia quod mollitia voluptatem quis magnam est ducimus.', 5, 58, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(163, 'Dolorem repellendus fuga laudantium ea.', 'Et natus molestiae voluptatem sequi et officiis. Quod ea nemo perferendis aut quia ad. Odit quod placeat iure vero debitis esse.', 5, 70, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(164, 'Occaecati ea explicabo inventore.', 'Ab porro nisi et porro sapiente molestias. Perspiciatis hic sit hic temporibus iure minus quos. Reiciendis optio cupiditate consectetur et quis nesciunt quod.', 2, 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(165, 'Provident eum vel dolorem enim dolorem nesciunt.', 'Repudiandae eaque sint exercitationem. Sequi amet beatae accusantium soluta pariatur. Laboriosam eos sed dolorum necessitatibus. Eveniet quia officiis eos ducimus fuga.', 1, 2, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(166, 'Sunt quidem unde quos et cum.', 'Omnis incidunt quae sit earum. Harum quis nisi nihil tenetur autem. Alias ab qui nisi sit labore expedita.', 3, 18, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(167, 'Sit qui occaecati eum eveniet fugiat.', 'In quo hic et ut dolorem culpa recusandae. Totam aut odit nesciunt. Numquam magnam quasi modi incidunt minima ad qui eaque. Non aut ut exercitationem quam.', 4, 100, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(168, 'Illo asperiores aut totam debitis ipsam.', 'Incidunt repellat consequatur sed ullam qui iste ex. Et commodi voluptate assumenda. Deserunt repudiandae consequatur eligendi rerum rem possimus et.', 1, 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(169, 'Labore accusantium aut error quia quia architecto eum sapiente.', 'Explicabo et neque libero. Et reprehenderit aut et maiores accusamus quia. Illum veniam enim vel repellat aut.', 5, 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(170, 'Accusamus illo tempore non accusantium est tempora amet.', 'Sed adipisci autem ea voluptate placeat qui cumque. Quo laboriosam soluta ut ut earum inventore ut. Dolores quaerat et labore id voluptatibus neque. Unde minima expedita ipsam eaque et.', 4, 100, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(171, 'Velit nobis temporibus voluptatem aut quis veritatis.', 'Natus et ea soluta voluptatem odio. Optio velit aut quos quisquam fuga. Laborum dolor sint ut quia ut. Omnis quasi rerum sed mollitia ipsa quis facere.', 1, 72, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(172, 'Recusandae repudiandae itaque nihil ea.', 'Suscipit dolorem quos consequatur laboriosam in quisquam eos ratione. Expedita consequatur sequi maiores deleniti dolore tempora voluptates incidunt. Pariatur nobis quas laborum et.', 3, 32, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(173, 'Repudiandae eveniet culpa sint commodi est voluptatum.', 'Maxime quasi laboriosam voluptas cum quia. Sit aut sunt sed consequatur dicta eos dolorum inventore. Maiores eaque repudiandae sit molestiae et commodi facilis.', 6, 63, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(174, 'Qui enim magni minus rerum eos.', 'Similique ut hic modi cumque vel. Aut soluta aut et ducimus aliquid. Est nam nihil iure excepturi temporibus.', 4, 86, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(175, 'Iusto quae dolores et voluptatem earum quidem sit.', 'Ad est ad non tenetur consequatur sed adipisci. Quia enim consequatur officia ut saepe. Delectus eveniet qui quisquam nulla quo.', 6, 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(176, 'Sit aut quisquam aliquid nemo minus magnam consequuntur quidem.', 'Autem necessitatibus mollitia voluptas. Dolor et nihil et aspernatur. Non ducimus ut tenetur adipisci animi dolore nostrum.', 1, 67, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(177, 'Illum illo magni voluptatibus quas qui ullam.', 'Harum blanditiis non nihil quidem. Sed quisquam laudantium ut repellendus laudantium adipisci. Necessitatibus reiciendis ab dolorem aspernatur accusantium. Maiores maxime eius necessitatibus.', 2, 27, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(178, 'Non qui ratione tempora id nemo.', 'Non aperiam corrupti aspernatur ab expedita quo tenetur. Quo praesentium officia temporibus. Ab possimus quos fuga sint est saepe.', 2, 80, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(179, 'Magnam molestiae dolorem enim.', 'Placeat fugit consequatur incidunt porro officiis omnis. Dolor qui voluptatibus aliquam. Facilis recusandae doloribus tempore laboriosam reiciendis.', 6, 4, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(180, 'Voluptates perspiciatis quo vel.', 'Ipsum ad aperiam autem et et molestiae. Sunt maxime repellat ea veritatis fugit laborum officia. Velit et optio enim fuga soluta laborum.', 1, 46, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(181, 'Commodi dolor at atque non sed ipsam est.', 'Rerum delectus rerum aliquid qui voluptatem repudiandae. Iusto voluptas vel reprehenderit doloribus dolorum officiis. Debitis minus vitae cumque nostrum expedita molestias earum aut. Doloremque qui enim aliquid doloribus.', 1, 17, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(182, 'Natus deleniti temporibus id qui atque at.', 'Libero maiores ut asperiores sit est. Labore aut rerum non praesentium. Laudantium id sed a alias atque vero. Ducimus totam ipsa similique aspernatur.', 6, 75, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(183, 'Consectetur ratione in inventore blanditiis ad aut.', 'Impedit ducimus ut veritatis odio. Fugiat delectus vel blanditiis et qui sit incidunt. Repudiandae ratione quia officiis enim dolores et.', 5, 75, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(184, 'Rerum fuga non itaque fugit quibusdam officia.', 'Animi minus velit corporis itaque a beatae eos. Alias numquam in ut sapiente. Sunt aliquam nam est similique qui facere.', 4, 50, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(185, 'Voluptatum totam ipsum ut quaerat laudantium eum architecto a.', 'Aut rerum sapiente vel quisquam sed quaerat sapiente. Odio explicabo in tempora iure veniam. Sint esse voluptas ipsam consectetur ducimus qui. Illum fugit sit enim fugit.', 3, 41, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(186, 'Blanditiis nemo praesentium quam molestiae.', 'Pariatur omnis velit possimus hic velit. Repudiandae sit quis quia voluptatibus ut quia quibusdam dolore. Recusandae iusto amet iusto sequi veritatis ea. Vitae animi repellendus ut adipisci.', 6, 36, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(187, 'Aliquid qui rerum aperiam.', 'Eos natus tempora aut qui sed. Voluptas qui maxime distinctio sit enim explicabo. Voluptatum molestiae rem nihil mollitia quisquam omnis fugiat.', 2, 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(188, 'Perspiciatis accusamus at libero consequatur aut enim odit illum.', 'Suscipit id eius ipsam voluptates debitis accusamus. Quia dolorem eos nobis quis. Laborum dolore et hic distinctio voluptate. Magnam nam ut ab fugiat.', 3, 31, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(189, 'Rerum omnis voluptas dicta qui.', 'Recusandae est sed voluptatem distinctio quae qui fugit. Officia facilis est modi aliquid ut voluptatem ipsam. Mollitia id aperiam autem asperiores est eos non. Et nemo sed vel.', 5, 101, '2020-12-13 19:43:06', '2020-12-13 19:43:06');
INSERT INTO `articles` (`id`, `title`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(190, 'Consequatur suscipit vero vitae cumque accusantium eius quia.', 'Harum assumenda nesciunt ratione ut assumenda molestiae ab. Est delectus rerum vel est vero. Voluptatum ratione rerum temporibus perspiciatis.', 4, 32, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(191, 'Velit ipsa qui et.', 'Accusantium reiciendis ipsum nulla deleniti accusamus. Molestiae neque dolor possimus sint. Occaecati ut occaecati porro inventore autem unde rerum. Exercitationem aut commodi dolorum qui qui molestiae et.', 2, 6, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(192, 'Asperiores error totam reprehenderit sed.', 'Eligendi cumque porro repellendus quibusdam est nihil non. Explicabo ratione nihil nam et quas labore. Dolorem ut qui quod laboriosam.', 2, 72, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(193, 'Corrupti omnis dolores pariatur.', 'Et accusamus atque placeat sunt doloremque est quia. Veniam quaerat et culpa qui praesentium autem ullam molestiae. Earum ipsum sit id voluptas vel eum. Nostrum ut sint ipsa consequuntur.', 4, 39, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(194, 'Incidunt consequatur in minus est totam.', 'Laborum rem voluptatem est sed. Perferendis vel enim voluptate corporis. Assumenda voluptatem velit est debitis laudantium placeat. Debitis perspiciatis ut officia rem voluptatibus.', 6, 75, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(195, 'Laborum minima vel in impedit quo illo.', 'Quod sequi natus et qui at qui. Aut alias rerum aliquid et officiis aut. Quam reprehenderit sequi non sed. Adipisci magnam dolore commodi reiciendis unde molestias.', 1, 54, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(196, 'Et architecto molestiae est perferendis sit est et provident.', 'Expedita eum hic est. Exercitationem eveniet reiciendis voluptatum ducimus eos. Molestias sed et et assumenda ut ad laboriosam similique.', 1, 5, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(197, 'Nobis placeat repellendus distinctio praesentium explicabo neque dolores.', 'Hic ducimus neque aut consectetur error iste. Fuga nulla deleniti vel laboriosam enim ea sit.', 4, 100, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(198, 'Molestiae quaerat explicabo deserunt omnis voluptas sunt.', 'Reprehenderit dolorum non aut quis voluptatem fugiat. Accusantium incidunt animi minima. Sit sit repellat ut soluta. Ea odio dolor blanditiis ad iste consequatur et.', 2, 78, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(199, 'Commodi eum ullam et ab cum.', 'Rerum non modi atque impedit. Illo optio repellendus laudantium similique.', 5, 34, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(200, 'Et corporis quam quo accusamus.', 'Architecto qui qui sit consequatur. Aut et ad consequatur omnis facilis. Sit facilis asperiores eaque. Laudantium exercitationem ullam consequatur reprehenderit autem consequatur beatae.', 1, 22, '2020-12-13 19:43:06', '2020-12-13 19:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 55, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(2, 129, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(3, 56, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(4, 94, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(5, 59, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(6, 100, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(7, 89, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(8, 48, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(9, 39, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(10, 168, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(11, 67, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(12, 134, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(13, 3, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(14, 134, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(15, 19, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(16, 42, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(17, 62, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(18, 99, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(19, 13, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(20, 125, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(21, 40, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(22, 125, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(23, 95, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(24, 87, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(25, 166, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(26, 28, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(27, 56, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(28, 68, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(29, 47, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(30, 74, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(31, 129, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(32, 34, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(33, 133, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(34, 154, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(35, 67, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(36, 141, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(37, 86, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(38, 116, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(39, 47, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(40, 171, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(41, 19, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(42, 179, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(43, 89, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(44, 78, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(45, 96, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(46, 170, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(47, 178, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(48, 37, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(49, 166, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(50, 146, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sport', 1, '2020-12-14 01:51:06', '2020-12-14 01:51:06'),
(2, 'News', 2, '2020-12-14 01:51:06', '2020-12-14 01:51:06'),
(3, 'Technology', 2, '2020-12-14 01:51:35', '2020-12-14 01:51:35'),
(4, 'Programming', 3, '2020-12-14 01:51:35', '2020-12-14 01:51:35'),
(5, 'Design', 1, '2020-12-14 01:52:07', '2020-12-14 01:52:07'),
(6, 'Celebrity', 4, '2020-12-14 01:52:07', '2020-12-14 01:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'Quia beatae in dolore vel ipsam voluptas neque.', 87, 84, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(2, 'Quia est id doloremque est commodi accusamus.', 78, 114, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(3, 'Eum in laborum enim necessitatibus numquam nihil.', 83, 68, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(4, 'Necessitatibus velit itaque libero quo in ullam voluptates tempore.', 73, 144, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(5, 'Laboriosam et iure sunt consequatur.', 101, 108, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(6, 'Veniam porro rerum voluptas consequatur eligendi maiores quisquam quia.', 37, 119, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(7, 'Iste ut rerum eum omnis labore.', 37, 132, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(8, 'Non ullam odit ea voluptatum tempora aliquid omnis.', 10, 53, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(9, 'Beatae culpa nam incidunt et possimus asperiores.', 5, 64, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(10, 'Et et qui dicta saepe quod quo eveniet.', 3, 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(11, 'Illum voluptatem debitis rem excepturi id veniam.', 44, 183, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(12, 'Assumenda ab et quo id commodi inventore doloremque.', 9, 162, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(13, 'Doloremque omnis dolorem illum et in id.', 58, 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(14, 'Animi rerum recusandae veritatis animi unde.', 73, 9, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(15, 'Incidunt et vel ad voluptatem dignissimos neque pariatur.', 51, 15, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(16, 'Explicabo consequatur est esse architecto minima rerum facere.', 36, 165, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(17, 'Nulla recusandae perspiciatis omnis fuga doloribus vel quia.', 71, 39, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(18, 'Itaque eligendi qui esse pariatur voluptatem est doloribus.', 13, 156, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(19, 'Quia et amet voluptas at quibusdam eveniet.', 17, 27, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(20, 'Vero nemo alias nemo omnis aut ut.', 94, 141, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(21, 'Unde iure quo esse blanditiis dolorem laboriosam.', 74, 10, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(22, 'Sed eligendi assumenda sint qui voluptatem numquam veniam rerum.', 60, 42, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(23, 'Quam sed est nemo fugiat cum quis autem.', 84, 24, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(24, 'Aperiam voluptatem mollitia dolorem illum ut sint non.', 38, 85, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(25, 'Expedita tempore ea voluptatem enim.', 45, 194, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(26, 'Dolorem ipsam asperiores non qui nesciunt qui occaecati.', 50, 18, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(27, 'Aut perspiciatis suscipit maiores iste repudiandae officia porro.', 12, 44, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(28, 'Fugit dicta eum nemo perspiciatis est iusto.', 71, 170, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(29, 'Sit magnam ducimus enim exercitationem et et vitae.', 98, 114, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(30, 'Voluptatem laborum voluptatum labore ipsa omnis.', 94, 101, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(31, 'Expedita cumque voluptas blanditiis voluptatibus est omnis.', 59, 56, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(32, 'Enim alias aut quia explicabo quod rerum ut numquam.', 71, 115, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(33, 'Illum consequatur at sunt necessitatibus officia qui eos.', 33, 195, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(34, 'Ea sunt cum adipisci voluptates expedita error quidem.', 50, 111, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(35, 'Autem placeat perspiciatis voluptas impedit.', 77, 188, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(36, 'Magnam ut tempora earum aut rerum animi.', 85, 105, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(37, 'Mollitia esse quia voluptates sed reprehenderit architecto ut.', 25, 131, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(38, 'Incidunt a aliquid est aut ullam sed.', 8, 194, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(39, 'Error sapiente a sunt earum quos.', 62, 109, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(40, 'Qui nulla quo veniam ut quia tempora.', 24, 131, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(41, 'Reiciendis aliquid laborum quis voluptatem.', 11, 81, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(42, 'Quas aut officia mollitia placeat accusantium iusto.', 73, 156, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(43, 'Facilis et asperiores sit voluptatibus possimus ex.', 62, 15, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(44, 'Reiciendis harum nobis labore debitis illo qui iure repudiandae.', 23, 103, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(45, 'Cum ipsum ut placeat beatae rerum cum ipsa.', 38, 84, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(46, 'Repudiandae soluta dolores dolores tenetur odio recusandae aut.', 80, 94, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(47, 'Et dolorem soluta voluptas nisi consequuntur.', 39, 115, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(48, 'Quibusdam illo cum laborum sint ullam ipsam.', 79, 24, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(49, 'Est cum ipsa modi accusantium quia veniam.', 26, 77, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(50, 'Explicabo odio totam odio illum mollitia molestias dolores et.', 52, 49, '2020-12-13 19:43:06', '2020-12-13 19:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Myanmar', '2020-12-14 01:36:07', '2020-12-14 01:36:07'),
(2, 'Korea', '2020-12-14 01:36:07', '2020-12-14 01:36:07'),
(3, 'Japan', '2020-12-14 01:36:32', '2020-12-14 01:36:32'),
(4, 'China', '2020-12-14 01:36:32', '2020-12-14 01:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_12_13_131005_create_countries_table', 1),
(4, '2020_12_13_131111_create_articles_table', 1),
(5, '2020_12_13_131151_create_categories_table', 1),
(6, '2020_12_13_131213_create_photos_table', 1),
(7, '2020_12_13_131412_create_tags_table', 1),
(8, '2020_12_13_131425_create_comments_table', 1),
(9, '2020_12_13_131651_create_visitors_table', 1),
(10, '2020_12_13_132805_create_article_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file_name`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Bobby Krajcik.jpg', 134, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(2, 'Benjamin Koepp III.jpg', 14, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(3, 'Prof. Theodora Heller.jpg', 58, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(4, 'Mckenna Hirthe.jpg', 67, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(5, 'Lynn Hoeger.jpg', 175, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(6, 'Dr. Marcus Hegmann.jpg', 54, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(7, 'Florine Walter Jr..jpg', 126, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(8, 'Petra Kshlerin.jpg', 130, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(9, 'Mrs. Alysa Bergstrom II.jpg', 160, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(10, 'Brock Schmeler.jpg', 18, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(11, 'Trinity Zulauf V.jpg', 163, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(12, 'Aubree Ullrich.jpg', 195, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(13, 'Mr. Reagan Jacobi V.jpg', 191, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(14, 'Terrence Wyman.jpg', 155, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(15, 'Gordon Baumbach Jr..jpg', 113, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(16, 'Mrs. Yvonne Gislason.jpg', 7, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(17, 'Brittany Runolfsson.jpg', 18, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(18, 'Mr. Quincy Maggio.jpg', 17, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(19, 'Monroe Rolfson.jpg', 153, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(20, 'Karine Nader.jpg', 98, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(21, 'Vita Klocko.jpg', 30, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(22, 'Cecilia Oberbrunner DVM.jpg', 90, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(23, 'Mckenzie Swift.jpg', 60, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(24, 'Leanna Crona IV.jpg', 53, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(25, 'Kaden Weissnat.jpg', 43, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(26, 'Nikita Rutherford.jpg', 135, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(27, 'America Sawayn.jpg', 34, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(28, 'Dorthy Price III.jpg', 33, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(29, 'Wilfred Maggio.jpg', 86, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(30, 'Susie Christiansen.jpg', 4, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(31, 'Dr. Rick Skiles.jpg', 131, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(32, 'Armand Smitham.jpg', 46, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(33, 'Hayley Hill III.jpg', 164, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(34, 'Dr. Selena Renner III.jpg', 111, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(35, 'Daryl Buckridge.jpg', 170, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(36, 'Valentina Treutel.jpg', 145, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(37, 'Gertrude Rowe II.jpg', 66, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(38, 'Jennings Turner.jpg', 167, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(39, 'Prof. Derrick Brakus.jpg', 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(40, 'Darrick Little.jpg', 132, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(41, 'Mireya Waters.jpg', 173, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(42, 'Jefferey Padberg.jpg', 57, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(43, 'Prof. Alec Pacocha Jr..jpg', 44, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(44, 'Catharine Hartmann DDS.jpg', 81, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(45, 'Mohammad Ondricka.jpg', 189, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(46, 'Cassidy Stokes.jpg', 188, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(47, 'Dasia Durgan.jpg', 87, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(48, 'Palma Mayer.jpg', 9, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(49, 'Prof. Cary Schaefer III.jpg', 45, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(50, 'Grayson Nikolaus Sr..jpg', 125, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(51, 'Athena Paucek I.jpg', 33, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(52, 'Brook Toy.jpg', 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(53, 'Prof. Kaelyn Ratke I.jpg', 160, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(54, 'Josie Johns.jpg', 63, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(55, 'Jamaal Dickinson V.jpg', 175, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(56, 'Gonzalo McDermott.jpg', 134, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(57, 'Alta Kub.jpg', 101, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(58, 'Miss Estefania Franecki I.jpg', 181, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(59, 'Gabriel Hartmann.jpg', 37, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(60, 'Jasper Adams.jpg', 60, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(61, 'Iliana Wiza.jpg', 116, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(62, 'Prof. Glennie Dickens Jr..jpg', 86, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(63, 'Christiana Stark.jpg', 128, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(64, 'Brandon Sauer Sr..jpg', 189, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(65, 'Iliana Johnson.jpg', 74, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(66, 'Jameson Nitzsche.jpg', 54, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(67, 'Shawna Wiegand III.jpg', 153, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(68, 'Dr. Mavis Flatley.jpg', 177, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(69, 'Helen Bernhard.jpg', 180, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(70, 'Mr. Eldred Fadel.jpg', 4, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(71, 'Dr. Leonel Collier.jpg', 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(72, 'Dr. Wilma Zieme Sr..jpg', 106, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(73, 'Mikayla Paucek.jpg', 162, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(74, 'Keira Wyman.jpg', 120, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(75, 'Ian Towne.jpg', 143, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(76, 'Augustine Grimes IV.jpg', 129, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(77, 'Olaf Macejkovic.jpg', 16, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(78, 'Vallie Murazik.jpg', 141, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(79, 'Brant Hintz.jpg', 125, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(80, 'Maryse Leuschke.jpg', 170, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(81, 'Emely Bergnaum.jpg', 94, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(82, 'Imani Mosciski.jpg', 138, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(83, 'Dan Leuschke DDS.jpg', 175, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(84, 'Teagan Steuber.jpg', 166, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(85, 'Leopoldo Runte.jpg', 187, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(86, 'Friedrich Farrell.jpg', 77, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(87, 'Corene McGlynn.jpg', 199, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(88, 'Alphonso Schmidt.jpg', 59, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(89, 'Prof. Lilian Borer MD.jpg', 181, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(90, 'Dr. Dylan Green PhD.jpg', 128, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(91, 'Susan Gutmann.jpg', 22, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(92, 'Carole Bashirian.jpg', 147, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(93, 'Dr. Theodore Bernier.jpg', 124, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(94, 'Petra Greenfelder IV.jpg', 62, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(95, 'Shaun Hintz.jpg', 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(96, 'Patience White.jpg', 45, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(97, 'Jasper Collier Sr..jpg', 34, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(98, 'Mr. Horace Jacobs II.jpg', 84, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(99, 'Jaeden Graham.jpg', 174, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(100, 'Natalie Gulgowski.jpg', 61, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(101, 'Nelle Kulas.jpg', 19, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(102, 'Mary Kling.jpg', 86, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(103, 'Beatrice Legros.jpg', 182, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(104, 'Prof. Mark Wisoky I.jpg', 151, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(105, 'Anne Dach MD.jpg', 94, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(106, 'Kyler Graham.jpg', 155, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(107, 'Prof. Rebekah Konopelski Jr..jpg', 128, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(108, 'Jacklyn Streich.jpg', 91, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(109, 'Dr. Erna Okuneva.jpg', 129, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(110, 'Mr. Carlos Kuvalis IV.jpg', 41, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(111, 'Joey Pollich.jpg', 119, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(112, 'Arjun Schinner.jpg', 185, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(113, 'Karli Kris.jpg', 78, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(114, 'Emelia Hyatt.jpg', 66, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(115, 'Raheem Schaden PhD.jpg', 54, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(116, 'Elbert Hahn.jpg', 71, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(117, 'Reese Hettinger.jpg', 12, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(118, 'Tierra Blick.jpg', 162, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(119, 'Prof. Rebecca Schmeler III.jpg', 89, '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(120, 'Joelle Wintheiser.jpg', 9, '2020-12-13 19:43:06', '2020-12-13 19:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '2020-12-14 01:53:25', '2020-12-14 01:53:25'),
(2, 'CSS', '2020-12-14 01:53:25', '2020-12-14 01:53:25'),
(3, 'PhotoShop', '2020-12-14 01:53:56', '2020-12-14 01:53:56'),
(4, 'AI', '2020-12-14 01:53:56', '2020-12-14 01:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `role` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_user.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `country_id`, `role`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Jamar McDermott II', 'yjohns@example.com', '2020-12-13 19:41:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U7yOWFUTp3', 4, '0', 'default_user.png', '2020-12-13 19:41:02', '2020-12-13 19:41:02'),
(2, 'Dr. Amalia Ortiz', 'reichert.kaycee@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Orbf2MhsVY', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(3, 'Barney Russel I', 'vpouros@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a1dFoNosn9', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(4, 'Jovany Welch IV', 'rhill@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xa7cUZ3oDp', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(5, 'Letha Pouros II', 'abigayle15@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LsgLFlrYtb', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(6, 'Abel Hodkiewicz', 'uschoen@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S5QuByCLfx', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(7, 'Judy Welch', 'newell.nitzsche@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ecmitUCDSE', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(8, 'Angelo Runte', 'emurray@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E3lvWY5OSf', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(9, 'Ms. Vicenta Toy Jr.', 'morgan89@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nWSI9YHK6h', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(10, 'Keanu Ebert', 'tgreen@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GlrJqm6O6H', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(11, 'Prof. Margarita Effertz', 'reynolds.lurline@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H8BXBj1yUp', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(12, 'Miss Ottilie Ratke', 'tbuckridge@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't74zytmvSk', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(13, 'Stefanie Kilback', 'hegmann.anastasia@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oXMArYDizC', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(14, 'Dr. Yolanda Kris Jr.', 'kkeebler@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V8qSCeHkeE', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(15, 'Prof. Milo Zemlak IV', 'alessia87@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rkMucch4WX', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(16, 'Garret Kling', 'madisen.bosco@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LGNWQSxLs3', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(17, 'Prof. Paige Schumm Sr.', 'dlabadie@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HliyQnJKJ7', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(18, 'Titus Hirthe', 'vjakubowski@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FwEFlsycRV', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(19, 'Amanda Von', 'kariane.kuhlman@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hKnskuzy1i', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(20, 'Ramiro Kassulke', 'raquel.mertz@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WdexjYZeRP', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(21, 'Prof. Josue Effertz II', 'myriam.hodkiewicz@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZiFXWEDAqy', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(22, 'Stella Ferry', 'twolff@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n7IN6KuLf2', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(23, 'Rogers Heller I', 'block.payton@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lCoKAtRV4b', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(24, 'Kristopher Rau MD', 'schuppe.jaleel@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vb2fcSjQxj', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(25, 'Madelynn Terry', 'lorna77@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xyELZ7RNir', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(26, 'Tyrel Leffler DDS', 'gframi@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fZvLmS3ONh', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(27, 'Marcelo Johnson', 'mathew.treutel@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iaEYabIPUu', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(28, 'Ansel Hayes', 'mcummerata@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ynx8evcdgX', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(29, 'Ludwig Sanford', 'cecile.stark@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7dmQzaR5T', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(30, 'Prof. Liza Flatley II', 'brandon04@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U3tKyaxImt', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(31, 'Jordan Murazik', 'gisselle43@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z9AwcRFved', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(32, 'Fermin Corkery', 'edyth.becker@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mPeNyA307K', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(33, 'Allie Bode', 'wilkinson.gilberto@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FdOdzLPyi0', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(34, 'Alvera Schulist DDS', 'erdman.reina@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nKUo5v1sVy', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(35, 'Lacy Ratke PhD', 'batz.jerrell@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DrGJw0LZNc', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(36, 'Rowena Dietrich', 'tressie27@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TCLn4lq9hO', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(37, 'Lon Adams', 'adah.gleichner@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BI9LcxwYew', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(38, 'Prof. Lucious Schultz DVM', 'shanny.stracke@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EDH5v3CXRx', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(39, 'Dr. Adelbert Aufderhar', 'reichel.freeman@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6cxJKTul1N', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(40, 'Darrin Ebert III', 'dtoy@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XRTutCr0GA', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(41, 'Gregorio Nikolaus', 'alexis.leannon@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'prqZB61Kma', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(42, 'Mrs. Oleta Wunsch DVM', 'hintz.thea@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JdpWpNpdEI', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(43, 'Asia Beatty Sr.', 'vidal94@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9r5vRwiKN', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(44, 'Cyrus Reinger', 'koch.mireille@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iZ9JOBItPM', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(45, 'Stanley Howe', 'perdman@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dR90MK3KX9', 4, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(46, 'Theodora Becker', 'bhodkiewicz@example.com', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eoCrviDOXR', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(47, 'Mr. Travis Klein DDS', 'charley78@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YXEAMX4xrt', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(48, 'Elfrieda Funk', 'kiarra.ankunding@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SIheLkOqhS', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(49, 'Delbert Watsica', 'rose.windler@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tWgxmO4Zak', 3, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(50, 'Danny Torphy', 'dubuque.daniela@example.net', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VdQC2tl8J1', 2, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(51, 'Magali Beatty', 'elinor.murphy@example.org', '2020-12-13 19:42:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Es2hvrO93O', 1, '2', 'default_user.png', '2020-12-13 19:42:26', '2020-12-13 19:42:26'),
(52, 'Americo Lesch', 'vbuckridge@example.com', '2020-12-13 19:43:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5YFHOTuO7Z', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(53, 'Queenie Harber Jr.', 'quigley.reilly@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iApXKYDM4q', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(54, 'Curtis Kunde', 'alia00@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6rspwe1HZO', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(55, 'Omer Homenick', 'yvette83@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'voEbGquhOD', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(56, 'Haven Kling', 'keenan.tremblay@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ne7kpoqnYh', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(57, 'Aiyana Kris', 'ara36@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e5oe7s422e', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(58, 'Mrs. Elfrieda Koelpin', 'carroll.cronin@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zZRG8iPa1k', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(59, 'Lilla Dooley', 'hcorwin@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4gysfaFymq', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(60, 'Devan Olson', 'bbalistreri@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'opZEDtSFZL', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(61, 'Jaunita Langosh', 'noah85@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FwX8XP5eRw', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(62, 'Dayna Homenick Sr.', 'maurine44@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xYuApRytnX', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(63, 'Edythe Keebler MD', 'barton50@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G3diRVKuhe', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(64, 'Dr. Sunny Johns', 'roxanne23@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UyXPe1zwm4', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(65, 'Derrick Hoppe', 'crystel.gutkowski@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JNdPyYgCfg', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(66, 'Gino Weissnat', 'wilfred18@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'au5SafcVvN', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(67, 'Talon Schumm', 'larkin.matilde@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NgUyZGGv6f', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(68, 'Billy Schimmel', 'vjaskolski@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MNuop3SHEG', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(69, 'Johan O\'Hara', 'amir.renner@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x9tFQIaTvU', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(70, 'Mr. Zechariah Haag PhD', 'imcdermott@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gXqfQ0t3Qs', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(71, 'Wendy O\'Conner', 'bergnaum.kelsie@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p1qt4GI2XW', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(72, 'Travis Osinski', 'verda52@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1aZg7w9ygb', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(73, 'Mr. Kraig Effertz II', 'qgreenfelder@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D3HEgrSdxh', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(74, 'Mr. Colt Bahringer', 'diego35@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nGyohlmY7w', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(75, 'Larue Rohan MD', 'gusikowski.bryce@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1PkkcSt3RD', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(76, 'Allene Zboncak', 'amya25@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GHmgGmUqhE', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(77, 'Dr. Corrine Labadie Sr.', 'travon87@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oauE1SF42H', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(78, 'Mr. Domenico Thompson', 'geovany13@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uybIfgl8gf', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(79, 'Ruth Kub', 'colleen71@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0sqZbdNJL0', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(80, 'Delphia Price', 'wkub@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AWemJ8DQQi', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(81, 'Sim O\'Connell', 'lgoyette@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nvdnlUyLnQ', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(82, 'Dr. Monte Grimes Sr.', 'joey.emard@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ikzQoi5lla', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(83, 'Adan Swift MD', 'jany.leannon@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hkGAhbArKC', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(84, 'Murray Cormier', 'tfeil@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HunaGAeARn', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(85, 'Mrs. Ellen Runolfsson', 'arvel30@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MG2QPe4fnR', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(86, 'Prof. Gillian Bahringer IV', 'schamberger.johnson@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'At2qwr2793', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(87, 'Phoebe Rau', 'mschaden@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qGnhw777gA', 1, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(88, 'Dave Grant', 'bruen.braeden@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b4H3vS0AzR', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(89, 'Cecilia Schoen', 'marcelina09@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mV6h8DJczN', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(90, 'Angela Johnson', 'alexander.blick@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pMRuttTJF1', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(91, 'Constance Hane', 'rae.hill@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YPIBtnVbZr', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(92, 'Maegan Cassin', 'maynard.ortiz@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Ev5OncTeR', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(93, 'Isidro Welch', 'hilpert.darrell@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FoKbSNPgBz', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(94, 'Jeffrey Marks DDS', 'collier.frederick@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o7a5MDKqPI', 4, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(95, 'Monroe Bernhard', 'krajcik.spencer@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U8FEa3m3Nw', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(96, 'Ms. Piper Muller MD', 'jerod.schiller@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AqN8RuVt3w', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(97, 'Prof. Rosemary Collins IV', 'csporer@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YLyyaN3rFw', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(98, 'Dr. Fletcher Orn PhD', 'colleen.haley@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '570ycR8qpA', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(99, 'Abigayle Berge', 'cale.tromp@example.org', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JihSC211gU', 3, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(100, 'Emma Dibbert', 'gprosacco@example.com', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bCuUJzODu3', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06'),
(101, 'Ethel Lubowitz', 'schuppe.valentine@example.net', '2020-12-13 19:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mj88uFJcnz', 2, '2', 'default_user.png', '2020-12-13 19:43:06', '2020-12-13 19:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_user` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `is_user`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, '0', 34, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(2, '0', 96, 108, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(3, '0', 13, 189, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(4, '0', 24, 185, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(5, '0', 48, 195, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(6, '0', 30, 104, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(7, '0', 81, 170, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(8, '0', 18, 63, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(9, '0', 35, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(10, '0', 67, 141, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(11, '0', 40, 190, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(12, '0', 11, 53, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(13, '0', 95, 131, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(14, '0', 66, 83, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(15, '0', 73, 136, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(16, '0', 64, 31, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(17, '0', 57, 7, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(18, '0', 31, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(19, '0', 79, 67, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(20, '0', 34, 150, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(21, '0', 51, 19, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(22, '0', 32, 94, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(23, '0', 72, 135, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(24, '0', 13, 137, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(25, '0', 94, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(26, '0', 41, 156, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(27, '0', 69, 196, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(28, '0', 8, 82, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(29, '0', 6, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(30, '0', 59, 44, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(31, '0', 83, 138, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(32, '0', 37, 71, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(33, '0', 93, 105, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(34, '0', 24, 36, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(35, '0', 64, 20, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(36, '0', 22, 46, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(37, '0', 54, 86, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(38, '0', 76, 151, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(39, '0', 69, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(40, '0', 67, 44, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(41, '0', 52, 57, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(42, '0', 71, 56, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(43, '0', 85, 61, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(44, '0', 18, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(45, '0', 4, 81, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(46, '0', 64, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(47, '0', 86, 52, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(48, '0', 87, 138, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(49, '0', 75, 97, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(50, '0', 2, 122, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(51, '0', 95, 60, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(52, '0', 48, 137, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(53, '0', 74, 144, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(54, '0', 40, 149, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(55, '0', 2, 89, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(56, '0', 5, 88, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(57, '0', 3, 93, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(58, '0', 3, 164, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(59, '0', 50, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(60, '0', 19, 43, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(61, '0', 22, 106, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(62, '0', 78, 95, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(63, '0', 36, 36, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(64, '0', 38, 65, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(65, '0', 72, 190, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(66, '0', 4, 11, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(67, '0', 50, 187, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(68, '0', 20, 133, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(69, '0', 49, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(70, '0', 88, 130, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(71, '0', 12, 182, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(72, '0', 54, 52, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(73, '0', 8, 137, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(74, '0', 53, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(75, '0', 46, 165, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(76, '0', 40, 45, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(77, '0', 39, 195, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(78, '0', 32, 119, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(79, '0', 71, 7, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(80, '0', 77, 188, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(81, '0', 6, 16, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(82, '0', 48, 109, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(83, '0', 27, 185, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(84, '0', 10, 12, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(85, '0', 82, 162, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(86, '0', 5, 34, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(87, '0', 62, 23, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(88, '0', 37, 191, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(89, '0', 96, 21, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(90, '0', 45, 36, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(91, '0', 83, 125, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(92, '0', 36, 33, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(93, '0', 48, 125, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(94, '0', 57, 168, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(95, '0', 80, 168, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(96, '0', 75, 13, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(97, '0', 41, 67, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(98, '0', 43, 5, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(99, '0', 10, 35, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(100, '0', 96, 43, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(101, '0', 88, 172, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(102, '0', 98, 137, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(103, '0', 96, 15, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(104, '0', 97, 17, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(105, '0', 90, 90, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(106, '0', 53, 140, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(107, '0', 42, 112, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(108, '0', 95, 39, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(109, '0', 75, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(110, '0', 87, 40, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(111, '0', 55, 144, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(112, '0', 63, 14, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(113, '0', 28, 20, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(114, '0', 100, 33, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(115, '0', 84, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(116, '0', 86, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(117, '0', 98, 59, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(118, '0', 20, 135, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(119, '0', 65, 44, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(120, '0', 62, 83, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(121, '0', 57, 94, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(122, '0', 77, 79, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(123, '0', 69, 178, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(124, '0', 39, 126, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(125, '0', 75, 145, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(126, '0', 7, 143, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(127, '0', 65, 95, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(128, '0', 1, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(129, '0', 90, 152, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(130, '0', 70, 185, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(131, '0', 8, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(132, '0', 35, 29, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(133, '0', 84, 40, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(134, '0', 81, 13, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(135, '0', 3, 52, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(136, '0', 32, 178, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(137, '0', 93, 22, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(138, '0', 15, 176, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(139, '0', 99, 36, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(140, '0', 12, 48, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(141, '0', 36, 59, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(142, '0', 80, 103, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(143, '0', 71, 189, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(144, '0', 4, 10, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(145, '0', 82, 67, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(146, '0', 48, 132, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(147, '0', 4, 17, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(148, '0', 3, 119, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(149, '0', 45, 55, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(150, '0', 22, 44, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(151, '0', 11, 121, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(152, '0', 89, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(153, '0', 70, 92, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(154, '0', 27, 174, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(155, '0', 51, 134, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(156, '0', 76, 190, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(157, '0', 84, 132, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(158, '0', 47, 36, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(159, '0', 13, 56, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(160, '0', 83, 133, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(161, '0', 22, 127, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(162, '0', 77, 88, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(163, '0', 22, 149, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(164, '0', 67, 193, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(165, '0', 48, 88, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(166, '0', 33, 143, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(167, '0', 78, 50, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(168, '0', 89, 172, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(169, '0', 25, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(170, '0', 42, 65, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(171, '0', 101, 58, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(172, '0', 44, 8, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(173, '0', 34, 109, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(174, '0', 20, 112, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(175, '0', 24, 165, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(176, '0', 4, 57, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(177, '0', 97, 41, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(178, '0', 90, 191, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(179, '0', 18, 152, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(180, '0', 53, 6, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(181, '0', 85, 124, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(182, '0', 75, 27, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(183, '0', 57, 19, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(184, '0', 67, 120, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(185, '0', 22, 153, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(186, '0', 46, 21, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(187, '0', 84, 10, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(188, '0', 82, 71, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(189, '0', 20, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(190, '0', 14, 34, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(191, '0', 55, 59, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(192, '0', 92, 58, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(193, '0', 63, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(194, '0', 95, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(195, '0', 29, 108, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(196, '0', 64, 38, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(197, '0', 56, 10, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(198, '0', 13, 175, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(199, '0', 49, 184, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(200, '0', 96, 96, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(201, '0', 42, 31, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(202, '0', 88, 94, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(203, '0', 9, 188, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(204, '0', 42, 115, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(205, '0', 58, 51, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(206, '0', 84, 51, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(207, '0', 75, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(208, '0', 97, 115, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(209, '0', 44, 101, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(210, '0', 40, 27, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(211, '0', 50, 169, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(212, '0', 99, 125, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(213, '0', 41, 188, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(214, '0', 89, 93, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(215, '0', 10, 135, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(216, '0', 77, 53, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(217, '0', 97, 55, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(218, '0', 72, 42, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(219, '0', 31, 189, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(220, '0', 67, 143, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(221, '0', 16, 162, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(222, '0', 46, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(223, '0', 64, 52, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(224, '0', 75, 166, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(225, '0', 4, 87, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(226, '0', 45, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(227, '0', 64, 175, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(228, '0', 74, 26, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(229, '0', 91, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(230, '0', 13, 128, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(231, '0', 70, 178, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(232, '0', 59, 44, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(233, '0', 29, 156, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(234, '0', 57, 168, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(235, '0', 100, 22, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(236, '0', 24, 60, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(237, '0', 7, 77, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(238, '0', 41, 15, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(239, '0', 58, 87, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(240, '0', 5, 65, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(241, '0', 3, 172, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(242, '0', 58, 139, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(243, '0', 26, 111, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(244, '0', 70, 91, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(245, '0', 100, 152, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(246, '0', 4, 113, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(247, '0', 17, 200, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(248, '0', 101, 95, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(249, '0', 40, 51, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(250, '0', 59, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(251, '0', 34, 131, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(252, '0', 43, 111, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(253, '0', 97, 13, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(254, '0', 81, 189, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(255, '0', 18, 199, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(256, '0', 7, 195, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(257, '0', 37, 74, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(258, '0', 72, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(259, '0', 79, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(260, '0', 87, 147, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(261, '0', 17, 48, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(262, '0', 64, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(263, '0', 15, 118, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(264, '0', 18, 190, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(265, '0', 81, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(266, '0', 7, 5, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(267, '0', 95, 138, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(268, '0', 70, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(269, '0', 91, 69, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(270, '0', 31, 155, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(271, '0', 61, 93, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(272, '0', 17, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(273, '0', 85, 34, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(274, '0', 36, 151, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(275, '0', 4, 35, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(276, '0', 35, 53, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(277, '0', 47, 108, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(278, '0', 14, 92, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(279, '0', 36, 160, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(280, '0', 18, 57, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(281, '0', 39, 91, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(282, '0', 50, 121, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(283, '0', 58, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(284, '0', 68, 138, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(285, '0', 38, 158, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(286, '0', 57, 89, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(287, '0', 72, 170, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(288, '0', 42, 22, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(289, '0', 97, 61, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(290, '0', 70, 128, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(291, '0', 40, 145, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(292, '0', 82, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(293, '0', 25, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(294, '0', 40, 16, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(295, '0', 39, 149, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(296, '0', 9, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(297, '0', 56, 38, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(298, '0', 51, 70, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(299, '0', 9, 119, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(300, '0', 45, 26, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(301, '0', 30, 96, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(302, '0', 30, 124, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(303, '0', 47, 59, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(304, '0', 39, 158, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(305, '0', 66, 181, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(306, '0', 101, 141, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(307, '0', 68, 18, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(308, '0', 12, 100, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(309, '0', 25, 196, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(310, '0', 75, 184, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(311, '0', 22, 120, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(312, '0', 25, 196, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(313, '0', 33, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(314, '0', 88, 198, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(315, '0', 64, 189, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(316, '0', 99, 173, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(317, '0', 94, 7, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(318, '0', 50, 198, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(319, '0', 88, 10, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(320, '0', 70, 148, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(321, '0', 38, 81, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(322, '0', 69, 12, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(323, '0', 53, 95, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(324, '0', 11, 134, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(325, '0', 94, 91, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(326, '0', 78, 161, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(327, '0', 56, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(328, '0', 62, 16, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(329, '0', 84, 75, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(330, '0', 11, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(331, '0', 11, 87, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(332, '0', 28, 41, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(333, '0', 95, 97, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(334, '0', 21, 118, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(335, '0', 21, 188, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(336, '0', 95, 6, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(337, '0', 68, 141, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(338, '0', 45, 40, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(339, '0', 97, 31, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(340, '0', 1, 43, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(341, '0', 82, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(342, '0', 88, 19, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(343, '0', 2, 158, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(344, '0', 75, 6, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(345, '0', 32, 127, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(346, '0', 31, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(347, '0', 42, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(348, '0', 27, 87, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(349, '0', 94, 67, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(350, '0', 19, 153, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(351, '0', 29, 56, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(352, '0', 84, 184, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(353, '0', 92, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(354, '0', 76, 173, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(355, '0', 1, 26, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(356, '0', 88, 12, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(357, '0', 22, 35, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(358, '0', 10, 196, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(359, '0', 3, 124, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(360, '0', 30, 24, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(361, '0', 52, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(362, '0', 23, 101, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(363, '0', 74, 110, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(364, '0', 71, 87, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(365, '0', 78, 127, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(366, '0', 60, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(367, '0', 41, 66, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(368, '0', 42, 108, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(369, '0', 66, 29, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(370, '0', 94, 85, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(371, '0', 98, 123, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(372, '0', 94, 24, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(373, '0', 29, 95, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(374, '0', 27, 179, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(375, '0', 51, 198, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(376, '0', 40, 82, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(377, '0', 26, 39, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(378, '0', 10, 49, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(379, '0', 32, 19, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(380, '0', 44, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(381, '0', 78, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(382, '0', 26, 175, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(383, '0', 2, 102, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(384, '0', 51, 100, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(385, '0', 18, 2, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(386, '0', 89, 187, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(387, '0', 39, 75, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(388, '0', 92, 158, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(389, '0', 95, 194, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(390, '0', 62, 155, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(391, '0', 82, 94, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(392, '0', 95, 15, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(393, '0', 64, 9, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(394, '0', 93, 176, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(395, '0', 6, 115, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(396, '0', 60, 48, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(397, '0', 64, 108, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(398, '0', 74, 148, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(399, '0', 87, 71, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(400, '0', 86, 167, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(401, '0', 90, 123, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(402, '0', 59, 183, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(403, '0', 22, 114, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(404, '0', 43, 182, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(405, '0', 29, 34, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(406, '0', 1, 181, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(407, '0', 58, 1, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(408, '0', 45, 53, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(409, '0', 75, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(410, '0', 55, 30, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(411, '0', 33, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(412, '0', 4, 176, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(413, '0', 29, 82, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(414, '0', 59, 18, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(415, '0', 59, 24, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(416, '0', 85, 92, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(417, '0', 49, 103, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(418, '0', 76, 148, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(419, '0', 5, 14, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(420, '0', 9, 89, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(421, '0', 27, 120, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(422, '0', 55, 72, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(423, '0', 37, 25, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(424, '0', 61, 198, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(425, '0', 65, 66, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(426, '0', 15, 150, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(427, '0', 56, 178, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(428, '0', 16, 34, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(429, '0', 17, 163, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(430, '0', 27, 84, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(431, '0', 19, 107, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(432, '0', 71, 70, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(433, '0', 70, 99, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(434, '0', 63, 117, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(435, '0', 43, 33, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(436, '0', 87, 13, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(437, '0', 83, 37, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(438, '0', 24, 150, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(439, '0', 25, 126, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(440, '0', 10, 143, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(441, '0', 61, 167, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(442, '0', 3, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(443, '0', 29, 45, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(444, '0', 1, 149, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(445, '0', 13, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(446, '0', 86, 66, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(447, '0', 39, 124, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(448, '0', 9, 16, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(449, '0', 78, 147, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(450, '0', 68, 125, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(451, '0', 71, 43, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(452, '0', 26, 134, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(453, '0', 91, 136, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(454, '0', 47, 102, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(455, '0', 71, 23, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(456, '0', 24, 69, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(457, '0', 84, 133, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(458, '0', 49, 181, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(459, '0', 98, 40, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(460, '0', 88, 39, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(461, '0', 33, 67, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(462, '0', 10, 136, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(463, '0', 75, 80, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(464, '0', 11, 76, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(465, '0', 19, 139, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(466, '0', 23, 130, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(467, '0', 56, 134, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(468, '0', 15, 178, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(469, '0', 60, 145, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(470, '0', 96, 68, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(471, '0', 28, 200, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(472, '0', 24, 159, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(473, '0', 57, 12, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(474, '0', 15, 171, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(475, '0', 100, 117, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(476, '0', 73, 184, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(477, '0', 87, 177, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(478, '0', 51, 130, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(479, '0', 84, 126, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(480, '0', 3, 161, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(481, '0', 72, 137, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(482, '0', 92, 181, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(483, '0', 35, 125, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(484, '0', 69, 65, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(485, '0', 81, 77, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(486, '0', 69, 172, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(487, '0', 39, 49, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(488, '0', 59, 132, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(489, '0', 22, 4, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(490, '0', 12, 3, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(491, '0', 9, 123, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(492, '0', 4, 33, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(493, '0', 17, 130, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(494, '0', 43, 179, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(495, '0', 97, 43, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(496, '0', 80, 124, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(497, '0', 90, 63, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(498, '0', 61, 115, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(499, '0', 7, 127, '2020-12-13 19:43:07', '2020-12-13 19:43:07'),
(500, '0', 55, 118, '2020-12-13 19:43:07', '2020-12-13 19:43:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
