CREATE TABLE `tv`  (
primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`date` BLOB,
`source-info-url` BLOB,
`source-info-name` BLOB,
`source-data-url` BLOB,
`generator-info-name` BLOB,
`generator-info-url` BLOB);
CREATE TABLE `channel`  (
primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_tv` BIGINT UNSIGNED,
`id` BLOB);
CREATE TABLE `programme`  (
primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_tv` BIGINT UNSIGNED,
`start` BLOB,
`stop` BLOB,
`pdc-start` BLOB,
`vps-start` BLOB,
`showview` BLOB,
`videoplus` BLOB,
`channel` BLOB,
`clumpidx` BLOB);
CREATE TABLE `display__name`  (
primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_channel` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `icon`  (
primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_channel` BIGINT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`foreign_key_rating` BIGINT UNSIGNED,
`foreign_key_star__rating` BIGINT UNSIGNED,
`src` BLOB,
`width` BLOB,
`height` BLOB);
CREATE TABLE `url`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_channel` BIGINT UNSIGNED,
`PCDATA` BLOB,
`foreign_key_programme` BIGINT UNSIGNED);
CREATE TABLE `title`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `sub__title`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `desc`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `credits`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED);
CREATE TABLE `date`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `category`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `keyword`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `language`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`foreign_key_subtitles` BIGINT UNSIGNED,
`lang` BLOB);
CREATE TABLE `orig__language`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `length`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`units` BLOB);
CREATE TABLE `country`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `episode__num`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`system` BLOB);
CREATE TABLE `video`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED);
CREATE TABLE `audio`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED);
CREATE TABLE `previously__shown`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`start` BLOB,
`channel` BLOB);
CREATE TABLE `premiere`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `last__chance`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`lang` BLOB);
CREATE TABLE `new`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED);
CREATE TABLE `subtitles`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`type` BLOB);
CREATE TABLE `rating`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`system` BLOB);
CREATE TABLE `star__rating`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`system` BLOB);
CREATE TABLE `review`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_programme` BIGINT UNSIGNED,
`PCDATA` BLOB,
`type` BLOB,
`source` BLOB,
`reviewer` BLOB,
`lang` BLOB);
CREATE TABLE `director`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `actor`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB,
`role` BLOB);
CREATE TABLE `writer`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `adapter`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `producer`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `composer`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `editor`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `presenter`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `commentator`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `guest`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_credits` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `value`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`PCDATA` BLOB,
`foreign_key_rating` BIGINT UNSIGNED,
`foreign_key_star__rating` BIGINT UNSIGNED);
CREATE TABLE `present`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_video` BIGINT UNSIGNED,
`PCDATA` BLOB,
`foreign_key_audio` BIGINT UNSIGNED);
CREATE TABLE `colour`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_video` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `aspect`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_video` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `quality`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_video` BIGINT UNSIGNED,
`PCDATA` BLOB);
CREATE TABLE `stereo`  (primary_key BIGINT UNSIGNED PRIMARY KEY,
seq INT UNSIGNED,
`foreign_key_audio` BIGINT UNSIGNED,
`PCDATA` BLOB);
