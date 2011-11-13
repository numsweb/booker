CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `paragraphs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_text` text COLLATE utf8_unicode_ci,
  `story_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `book_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'passive',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20101023233845');

INSERT INTO schema_migrations (version) VALUES ('20101024002244');

INSERT INTO schema_migrations (version) VALUES ('20101024002316');

INSERT INTO schema_migrations (version) VALUES ('20101024002426');

INSERT INTO schema_migrations (version) VALUES ('20101024044425');