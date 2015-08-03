DROP TABLE IF EXISTS `map_challenge_mode_hotfixes`;
CREATE TABLE `map_challenge_mode_hotfixes`(
    `id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `map_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `bronze_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `silver_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `gold_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field8` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field9` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`, `map_id`)
);

INSERT INTO `map_challenge_mode_hotfixes` VALUES
(161, 1209, 0, 0, 3, 3400, 1700, 1020, 0, 0),
(164, 1182, 0, 0, 3, 3300, 1920, 1140, 0, 0),
(165, 1176, 0, 0, 3, 3600, 1800, 1050, 0, 0),
(166, 1208, 0, 0, 3, 3000, 1500, 870, 0, 0),
(167, 1358, 0, 0, 3, 5100, 2580, 1500, 0, 0),
(168, 1279, 0, 0, 3, 3600, 1800, 1050, 0, 0),
(169, 1195, 0, 0, 3, 3600, 2040, 1200, 0, 0);

ALTER TABLE `hotfix_data` CHANGE `hotfixDate` `hotfixDate` INT(10) UNSIGNED DEFAULT '0' NOT NULL;
DELETE FROM `hotfix_data` WHERE `type` = 0x383B4C27;
INSERT INTO `hotfix_data` VALUES
(161, 0x383B4C27, 1418136992),
(164, 0x383B4C27, 1418136992),
(165, 0x383B4C27, 1418136992),
(166, 0x383B4C27, 1418136992),
(167, 0x383B4C27, 1418136992),
(168, 0x383B4C27, 1418136992),
(169, 0x383B4C27, 1418136992);