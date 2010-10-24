CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `paragraphs` (
  `id` int(11) NOT NULL auto_increment,
  `body_text` text collate utf8_unicode_ci,
  `story_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stories` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `book_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) collate utf8_unicode_ci default NULL,
  `name` varchar(100) collate utf8_unicode_ci default '',
  `email` varchar(100) collate utf8_unicode_ci default NULL,
  `crypted_password` varchar(40) collate utf8_unicode_ci default NULL,
  `salt` varchar(40) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(40) collate utf8_unicode_ci default NULL,
  `remember_token_expires_at` datetime default NULL,
  `activation_code` varchar(40) collate utf8_unicode_ci default NULL,
  `activated_at` datetime default NULL,
  `state` varchar(255) collate utf8_unicode_ci default 'passive',
  `deleted_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20101023233845');

INSERT INTO schema_migrations (version) VALUES ('20101024002244');

INSERT INTO schema_migrations (version) VALUES ('20101024002316');

INSERT INTO schema_migrations (version) VALUES ('20101024002426');

INSERT INTO schema_migrations (version) VALUES ('20101024044425');