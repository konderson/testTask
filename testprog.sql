-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 192.168.0.169:3306
-- Время создания: Июл 30 2019 г., 14:15
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testprog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` varchar(112) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(280) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utm` varchar(280) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `event_id`, `name`, `sname`, `education`, `email`, `phone`, `created_at`, `updated_at`, `ip`, `utm`) VALUES
(4, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(5, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(6, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(7, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(8, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(9, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(10, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(11, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(13, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(14, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(15, 'a', '4ry4y', '4y4y4y', 'Master', 'kofn@gmrali.com', '+996 (555) 329-29-4_', NULL, NULL, '192.168.0.169', 'test'),
(16, 'a', 'УАПУП', 'УПУ', 'PhD', 'kpnd@gmail.com', '5644584', NULL, NULL, '192.168.0.169', 'test'),
(17, 'a', 'УАПУП', 'УПУ', 'PhD', 'kpnd@gmail.com', '5644584', NULL, NULL, '192.168.0.169', 'test'),
(18, 'a', 'УАПУП', 'УПУ', 'PhD', 'alex97@gmail.com', '5644584', NULL, NULL, '192.168.0.169', 'test'),
(19, 'b', 'rryy', 'yryry', 'PhD', 'reeddfr44@gmail.com', '656456', NULL, NULL, '192.168.0.169', 'test'),
(20, 'b', 'rryy', 'yryry', 'PhD', 'reeddfr44@gmail.com', '656456', NULL, NULL, '192.168.0.169', 'test'),
(27, 'a', 'hhh', 'fhfh', 'Master', 'test2019@gmail.com', 'fhfh', NULL, NULL, '192.168.0.169', 'test'),
(28, 'a', 'hhh', 'fhfh', 'Master', 'test2019@gmail.com', 'fhfh', NULL, NULL, '192.168.0.169', 'test'),
(29, 'a', 'hhh', 'fhfh', 'Master', 'test2019@gmail.com', 'fhfh', NULL, NULL, '192.168.0.169', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mainpage`
--

CREATE TABLE `mainpage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mainpage`
--

INSERT INTO `mainpage` (`id`, `text`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, \"consectetur\", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги \"de Finibus Bonorum et Malorum\" (\"О пределах добра и зла\"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", происходит от одной из строк в разделе 1.10.32\r\n\r\nКлассический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 \"de Finibus Bonorum et Malorum\" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.', '', NULL, NULL);

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
(3, '2019_07_29_042435_create_events_table', 2),
(4, '2019_07_29_044317_create_users_table', 2),
(5, '2019_07_30_064612_create_jobs_table', 3),
(6, '2019_07_30_090231_create_role', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `owner_event`
--

CREATE TABLE `owner_event` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `event` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `owner_event`
--

INSERT INTO `owner_event` (`id`, `owner_id`, `event`) VALUES
(1, 2, 'a'),
(2, 3, 'b');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$NcSYi7bPa5VIZ7fXsM1huObzuaVf3y0gGasj.lUO7BtGZUVYljfvS', NULL, '2019-07-30 01:26:33', '2019-07-30 01:26:33'),
(2, 'Антон Привольнов', 'aprivolmov@gmail.com', NULL, '$2y$10$58OrS3rVXTPgCGMp6eVpJubnH8EFcJWWgKCf6oPrxCl6UmIy3T66i', NULL, '2019-07-30 01:27:44', '2019-07-30 01:27:44'),
(3, 'Дмитрий Соловьев', 'dSoloviev@gmail.com', NULL, '$2y$10$1NlyFJZxSuYaOqOhYjMABuSP8HPB38a8yvoJKYidhC0hR6XZ48z42', NULL, '2019-07-30 01:30:01', '2019-07-30 01:30:01'),
(4, 'Иван', 'smolov@gmail.com', NULL, '$2y$10$xVDDtFpbkfYRfj33G2PPguGEDV0dsmwtu6lxN4N8SC.FG7PQvW7Bm', NULL, '2019-07-30 05:06:27', '2019-07-30 05:06:27');

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `mainpage`
--
ALTER TABLE `mainpage`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `owner_event`
--
ALTER TABLE `owner_event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mainpage`
--
ALTER TABLE `mainpage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `owner_event`
--
ALTER TABLE `owner_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
