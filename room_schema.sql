use webapp;

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id` bigint NOT NULL AUTO_INCREMENT,
  `live_id` int NOT NULL,
  `joined_user_count` int NOT NULL DEFAULT 1,
  `max_user_count` int NOT NULL DEFAULT 4,
  `status` int NOT NULL DEFAULT 1,
  `first_user_end` datetime DEFAULT NULL,
  PRIMARY KEY (`room_id`)
);

DROP TABLE IF EXISTS `room_member`;
CREATE TABLE `room_member` (
  `room_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `leader_card_id` int NOT NULL,
  `select_difficulty` int NOT NULL,
  `is_host` boolean NOT NULL,
  `score` int DEFAULT NULL,
  `judge_count_list` json DEFAULT NULL,
  PRIMARY KEY (`room_id`, `user_id`)
);