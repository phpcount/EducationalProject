-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 25 2020 г., 17:48
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog_laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `website`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Memo1', 'Germany', 'gem.de', 'gem@inbox.de', '2020-04-27 05:49:46', '2020-04-27 05:49:46'),
(4, 'SUNG', 'South Korea', 'sung.com', 'mobile@sung.com', '2020-04-28 11:01:09', '2020-04-28 11:01:09');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_20_075406_create_posts_table', 1),
(4, '2020_04_27_114819_create_companies_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `title`, `short_title`, `img`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Lobster.', 'Lobster.', NULL, 'ME,\' said Alice sadly. \'Hand it over here,\' said the Mouse, frowning, but very politely: \'Did you say.', '2020-03-25 11:06:26', '2020-03-25 11:06:26'),
(2, 3, 'Bill\'s got.', 'Bill\'s got.', NULL, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had felt quite strange at first; but she gained courage as she remembered that she could even make out which were the two.', '2020-04-16 08:52:00', '2020-04-16 08:52:00'),
(3, 1, 'With no jury or judge.', 'With no jury or judge.', NULL, 'Cat in a moment. \'Let\'s go on for some time in silence: at last it sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to begin at HIS time of life. The King\'s argument was, that you have just been picked up.\' \'What\'s in it?\' said the White Rabbit, with a.', '2020-03-26 02:57:29', '2020-03-26 02:57:29'),
(4, 2, 'And then.', 'And then.', NULL, 'And the Eaglet bent down its head down, and nobody spoke for some minutes. Alice thought to herself, for she had looked under it, and found that her shoulders were.', '2020-04-11 19:14:51', '2020-04-11 19:14:51'),
(5, 2, 'The Queen had only one who.', 'The Queen had only one who.', NULL, 'Alice. \'I wonder what CAN have happened to you? Tell us all about as it lasted.) \'Then the eleventh day must have been that,\' said the Queen, the royal children; there were three.', '2020-03-29 02:00:38', '2020-03-29 02:00:38'),
(6, 3, 'Footman\'s.', 'Footman\'s.', NULL, 'She hastily put down yet, before the trial\'s over!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. One of the house, \"Let us.', '2020-03-22 14:30:27', '2020-03-22 14:30:27'),
(7, 2, 'Gryphon, lying.', 'Gryphon, lying.', NULL, 'SAID was, \'Why is a long time together.\' \'Which is just the case with MINE,\' said the Hatter, \'you wouldn\'t talk about her other little children, and everybody laughed, \'Let the.', '2020-03-26 15:55:36', '2020-03-26 15:55:36'),
(8, 1, 'He got behind him, and.', 'He got behind him, and.', NULL, 'Alice could see it quite plainly through the glass, and she told her sister, as well as she swam about, trying to explain the mistake it had VERY long claws and a fall, and a piece of bread-and-butter in the other: the only.', '2020-03-30 01:48:01', '2020-03-30 01:48:01'),
(9, 2, 'I will tell.', 'I will tell.', NULL, 'And I declare it\'s too bad, that it is!\' \'Why should it?\' muttered the Hatter. He had been looking at the place of the jurymen. \'No, they\'re not,\' said the Duchess; \'and the moral of that dark hall, and close to them, they set to work very diligently to write.', '2020-03-23 05:16:09', '2020-03-23 05:16:09'),
(10, 1, 'Come on!\' \'Everybody says.', 'Come on!\' \'Everybody says.', NULL, 'Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be removed,\' said the King. \'I can\'t remember half of.', '2020-03-27 17:13:00', '2020-03-27 17:13:00'),
(11, 3, 'Alice was very fond of.', 'Alice was very fond of.', NULL, 'White Rabbit as he found it very much,\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Why, there they lay sprawling about, reminding her.', '2020-03-27 09:45:39', '2020-03-27 09:45:39'),
(12, 1, 'Duchess by this time, sat down.', 'Duchess by this time, sat d...', NULL, 'Gryphon, before Alice could speak again. The rabbit-hole went straight on like a telescope.\' And so it was very glad to find that her neck from being broken. She hastily put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the hall. After a.', '2020-03-24 04:18:26', '2020-03-24 04:18:26'),
(13, 1, 'And yet I don\'t put.', 'And yet I don\'t put.', NULL, 'They are waiting on the back. At last the Dodo solemnly, rising to its feet, \'I move that the meeting adjourn, for the fan and two or three of the leaves: \'I should like.', '2020-04-11 00:02:43', '2020-04-11 00:02:43'),
(14, 2, 'They were indeed a.', 'They were indeed a.', NULL, 'How I wonder what Latitude was, or Longitude I\'ve got to?\' (Alice had been (Before she had peeped into the garden. Then she went on in the distance, and.', '2020-03-29 21:40:12', '2020-03-29 21:40:12'),
(15, 3, 'MINE.\' The Queen had only one way.', 'MINE.\' The Queen had only o...', NULL, 'Alice. \'Now we shall have to ask the question?\' said the Queen, who were giving it something out of a large rabbit-hole under the hedge. In another minute the whole party look so grave that she knew the meaning of half an hour.', '2020-04-10 23:26:27', '2020-04-10 23:26:27'),
(16, 3, 'Test', 'asdfgfdsadsdvfsadfghjkl;\';l...', '/storage/3i8uPy5ajv41bffdDOfznpSuabbJsvQrqzgdObXv.png', 'asdfgfdsadsdvfsadfghjkl;\';lkjhgfd', '2020-04-20 09:29:15', '2020-04-20 09:29:15'),
(17, 5, 'Пример2', 'Zxcvbnm,.mnbvcxzxcvbnbvcxzZxc', '/storage/5Wrd50Pzho5Q0cCkRsbswXp3ggF9LssxaEcvNlZz.jpeg', 'Zxcvbnm,.mnbvcxzxcvbnbvcxzZxc', '2020-04-20 09:30:46', '2020-04-20 09:30:46'),
(18, 6, 'Psot', 'New Article', '/storage/Z0KWyuHlGzNzAiX21T2vrN8dk8XVUGkhCiLLj3F7.jpeg', 'New Article', '2020-04-21 07:35:36', '2020-04-21 07:35:36'),
(23, 5, '43фвы', 'фыапкп', NULL, 'фыапкп', '2020-04-25 06:01:44', '2020-04-25 06:01:44'),
(25, 4, 'aaaaaaaaaa <h1>Hallo</h1>', 'sssssssssssddfdsfsdg\r\n<scri...', NULL, 'sssssssssssddfdsfsdg\r\n<script>alert(13)</script>\r\n<h1>Hallo</h1>\r\n<h3><b>World</b</h3>', '2020-04-25 07:32:50', '2020-04-26 00:41:31'),
(26, 5, 'This is good', 'Hallo it\'s my Post 2100lvl', '/storage/BVfS7Fp1IZD9bGtYZYm5iireHZ1FSqV3zoxBdePr.jpeg', 'Hallo it\'s my Post 2100lvl', '2020-04-25 07:38:37', '2020-04-25 07:38:37'),
(27, 6, 'Пример заголовка', 'Это текст для вашей статьи...', '/storage/mK5muGUTp17M7QL4zE4kyDd8ki7MlryHWQambR6O.jpeg', 'Это текст для вашей статьи...', '2020-04-25 08:06:12', '2020-04-25 08:06:12'),
(28, 6, 'Цветок', 'Красивый оранжевый цветок', '/storage/rUZMKSguXDzw3VN3jMTdPkgK8DcG2h3sqHSoDAUY.jpeg', 'Красивый оранжевый цветок', '2020-04-25 09:24:38', '2020-04-25 09:24:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kadin O\'Reilly', 'ciara.runolfsson@example.org', '2020-04-20 01:40:26', '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', 'JpqcqYjszg', '2020-04-20 01:40:26', '2020-04-20 01:40:26'),
(2, 'Ray Howell', 'leuschke.mateo@example.com', '2020-04-20 01:40:26', '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', '1MF3ksivid', '2020-04-20 01:40:26', '2020-04-20 01:40:26'),
(3, 'Mr. Bart O\'Connell', 'walker.tomasa@example.com', '2020-04-20 01:40:26', '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', 'yWy5rl8Azy', '2020-04-20 01:40:26', '2020-04-20 01:40:26'),
(4, 'Augustus Grant', 'erwin26@example.com', '2020-04-20 01:40:26', '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', 'z11oLL8Sit', '2020-04-20 01:40:26', '2020-04-20 01:40:26'),
(5, 'Kito', 'kito@test.te', NULL, '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', NULL, '2020-04-25 08:46:01', '2020-04-25 08:46:01'),
(6, 'Test', 'test@test.te', NULL, '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', NULL, '2020-04-25 08:49:57', '2020-04-25 08:49:57'),
(7, 'Alexander Boyko', 'songside.11.11@gmail.com', NULL, '$2y$10$QVgpHgzAECYBxUWN.LVnpOVGACLouNhN6RugOHK6XZyUL2YxJ6xUi', NULL, '2020-06-25 08:13:21', '2020-06-25 08:13:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
