/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3307
Source Database       : chatrobot

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-03-27 09:42:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `history_scene_info`
-- ----------------------------
DROP TABLE IF EXISTS `history_scene_info`;
CREATE TABLE `history_scene_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(64) DEFAULT NULL,
  `entities` varchar(512) DEFAULT NULL,
  `last_response_json` text,
  `history_intents` longtext,
  `complete` tinyint(1) DEFAULT NULL,
  `create_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `intent` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history_scene_info
-- ----------------------------
INSERT INTO `history_scene_info` VALUES ('1851', '42eGluz0kIQwg/TwEaupkw==', '{\"date\": \"昨天\", \"address\": \"上海\"}', '{\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您的出差地点是哪里呢？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"昨天\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"上海\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}', '{\"出差申请\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您准备哪一天出差？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"周五\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"周五\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}, \"tag\": \"8,72\", \"intent\": \"出差申请\"}, \"订购机票\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"mu5358\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"mu5358\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"mu5358\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}, \"tag\": null, \"intent\": \"订购机票\"}, \"酒店查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"酒店查询\", \"intentId\": \"\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"lastIntent\": \"出差申请\", \"query\": \"大床房\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"周五\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 2, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\"}, \"tag\": \"171\", \"intent\": \"酒店查询\"}, \"订购酒店\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"周五\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}, \"tag\": null, \"intent\": \"订购酒店\"}, \"航班查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"航班查询\", \"intentId\": \"\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"经济舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"lastIntent\": \"出差申请\", \"query\": \"经济舱\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"经济舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\"}, \"tag\": null, \"intent\": \"航班查询\"}}', '1', '2018-03-26 09:54:24', '出差申请');
INSERT INTO `history_scene_info` VALUES ('1852', '42eGluz0kIQwg/TwEaupkw==', '{\"jiudianfangxing\": \"大床房\", \"hotelArea\": \"虹口区\", \"departureDate\": \"昨天\", \"hotelCity\": \"上海\"}', '{\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"大床房\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"酒店查询\"}', '{\"出差申请\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您的出差地点是哪里呢？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"昨天\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"上海\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}, \"tag\": \"8,72\", \"intent\": \"出差申请\"}, \"订购机票\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"mu5358\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"mu5358\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"mu5358\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}, \"tag\": null, \"intent\": \"订购机票\"}, \"酒店查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"酒店查询\", \"intentId\": \"\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"lastIntent\": \"出差申请\", \"query\": \"大床房\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"周五\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 2, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\"}, \"tag\": \"171\", \"intent\": \"酒店查询\"}, \"订购酒店\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"周五\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}, \"tag\": null, \"intent\": \"订购酒店\"}, \"航班查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"航班查询\", \"intentId\": \"\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"经济舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"lastIntent\": \"出差申请\", \"query\": \"经济舱\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"经济舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\"}, \"tag\": null, \"intent\": \"航班查询\"}}', '1', '2018-03-27 09:18:54', '酒店查询');
INSERT INTO `history_scene_info` VALUES ('1853', '42eGluz0kIQwg/TwEaupkw==', '{\"arrivalDate\": \"明天\", \"hotelName\": \"上海合家欢宾馆\", \"hotelCity\": \"上海\"}', '{\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": null, \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"明天\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}', '{\"出差申请\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您的出差地点是哪里呢？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"昨天\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"上海\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}, \"tag\": \"8,72\", \"intent\": \"出差申请\"}, \"订购机票\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"mu5358\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"mu5358\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"mu5358\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}, \"tag\": null, \"intent\": \"订购机票\"}, \"酒店查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"酒店查询\", \"intentId\": \"\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"lastIntent\": \"出差申请\", \"query\": \"大床房\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\"}, \"tag\": \"171\", \"intent\": \"酒店查询\"}, \"订购酒店\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"周五\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"周五\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}, \"tag\": null, \"intent\": \"订购酒店\"}, \"航班查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"航班查询\", \"intentId\": \"\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"经济舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"lastIntent\": \"出差申请\", \"query\": \"经济舱\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"经济舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\"}, \"tag\": null, \"intent\": \"航班查询\"}}', '1', '2018-03-27 09:24:11', '订购酒店');
INSERT INTO `history_scene_info` VALUES ('1854', '42eGluz0kIQwg/TwEaupkw==', '{\"cangdeng\": \"头等舱\", \"hangkonggongsi\": \"中国国航\", \"departureCity\": \"深圳\", \"departureDate\": \"明天\", \"terminusCity\": \"上海\"}', '{\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"头等舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"头等舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"明天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"query\": \"头等舱\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"航班查询\"}', '{\"出差申请\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您的出差地点是哪里呢？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"昨天\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"上海\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}, \"tag\": \"8,72\", \"intent\": \"出差申请\"}, \"订购机票\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"mu5358\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"mu5358\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"mu5358\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}, \"tag\": null, \"intent\": \"订购机票\"}, \"酒店查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"酒店查询\", \"intentId\": \"\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"lastIntent\": \"出差申请\", \"query\": \"大床房\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\"}, \"tag\": \"171\", \"intent\": \"酒店查询\"}, \"订购酒店\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": null, \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"明天\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}, \"tag\": null, \"intent\": \"订购酒店\"}, \"航班查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"航班查询\", \"intentId\": \"\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"经济舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"lastIntent\": \"出差申请\", \"query\": \"经济舱\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"经济舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\"}, \"tag\": null, \"intent\": \"航班查询\"}}', '1', '2018-03-27 09:25:57', '航班查询');
INSERT INTO `history_scene_info` VALUES ('1855', '42eGluz0kIQwg/TwEaupkw==', '{\"departureCity\": \"深圳\", \"departureDate\": \"明天\", \"terminusCity\": \"上海\", \"flightNumber\": \"ky9519\"}', '{\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"ky9519\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"明天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"ky9519\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"ky9519\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}', '{\"出差申请\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问您的出差地点是哪里呢？\", \"lastSlots\": {\"date\": {\"name\": \"date\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问您准备哪一天出差？\"}, \"address\": {\"name\": \"address\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您的出差地点是哪里呢？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"昨天\", \"entity\": \"date\"}, {\"value\": \"上海\", \"entity\": \"address\"}], \"complete\": true}, \"query\": \"上海\", \"confidence\": null, \"currentQuestionType\": 2, \"intentName\": \"出差申请\"}, \"tag\": \"8,72\", \"intent\": \"出差申请\"}, \"订购机票\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要订的飞机航班号是多少？\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要订哪一天的机票呢？\"}, \"flightNumber\": {\"name\": \"flightNumber\", \"initial_value\": null, \"type_name\": \"航班号\", \"_value_reset_delay\": null, \"value\": \"mu5358\", \"_ask\": \"请问你要订的飞机航班号是多少？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问您要订的航班目标城市是哪里？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发的航班？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}, {\"value\": \"mu5358\", \"entity\": \"flightNumber\"}], \"complete\": true}, \"query\": \"mu5358\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购机票\"}, \"tag\": null, \"intent\": \"订购机票\"}, \"酒店查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"酒店查询\", \"intentId\": \"\", \"lastSlots\": {\"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你要预订哪个城市的酒店呢？\"}, \"hotelArea\": {\"name\": \"hotelArea\", \"initial_value\": null, \"type_name\": \"目标区域\", \"_value_reset_delay\": null, \"value\": \"虹口区\", \"_ask\": \"请问你要预订哪个区的酒店呢？\"}, \"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"昨天\", \"_ask\": \"请问你要哪一天入住呢？\"}, \"jiudianfangxing\": {\"name\": \"jiudianfangxing\", \"initial_value\": null, \"type_name\": \"酒店房型\", \"_value_reset_delay\": null, \"value\": \"大床房\", \"_ask\": \"请问你要住什么房型呢？\"}}, \"lastIntent\": \"出差申请\", \"query\": \"大床房\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"大床房\", \"entity\": \"jiudianfangxing\"}, {\"value\": \"虹口区\", \"entity\": \"hotelArea\"}, {\"value\": \"昨天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要住什么房型呢？\"}, \"tag\": \"171\", \"intent\": \"酒店查询\"}, \"订购酒店\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"intentId\": \"\", \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你要入住哪家酒店呢？\", \"lastSlots\": {\"arrivalDate\": {\"name\": \"arrivalDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你的到店日期是哪一天呢？\"}, \"hotelName\": {\"name\": \"hotelName\", \"initial_value\": null, \"type_name\": \"酒店名称\", \"_value_reset_delay\": null, \"value\": \"上海合家欢宾馆\", \"_ask\": \"请问你要入住哪家酒店呢？\"}, \"hotelCity\": {\"name\": \"hotelCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": null, \"_ask\": \"请问你要入住哪个城市的酒店？\"}}, \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"明天\", \"entity\": \"arrivalDate\"}, {\"value\": \"上海合家欢宾馆\", \"entity\": \"hotelName\"}, {\"value\": \"上海\", \"entity\": \"hotelCity\"}], \"complete\": true}, \"query\": \"上海合家欢宾馆\", \"confidence\": null, \"currentQuestionType\": 0, \"intentName\": \"订购酒店\"}, \"tag\": null, \"intent\": \"订购酒店\"}, \"航班查询\": {\"responseJson\": {\"status\": {\"msg\": \"意图识别成功\", \"code\": 200}, \"confidence\": null, \"intentName\": \"航班查询\", \"intentId\": \"\", \"lastSlots\": {\"departureDate\": {\"name\": \"departureDate\", \"initial_value\": null, \"type_name\": \"起始时间\", \"_value_reset_delay\": null, \"value\": \"明天\", \"_ask\": \"请问你要订哪一天的飞机呢？\"}, \"departureCity\": {\"name\": \"departureCity\", \"initial_value\": null, \"type_name\": \"出发城市\", \"_value_reset_delay\": null, \"value\": \"深圳\", \"_ask\": \"请问你要订从哪个城市出发航班？\"}, \"terminusCity\": {\"name\": \"terminusCity\", \"initial_value\": null, \"type_name\": \"目标城市\", \"_value_reset_delay\": null, \"value\": \"上海\", \"_ask\": \"请问你想要订的航班目标城市是哪里？\"}, \"hangkonggongsi\": {\"name\": \"hangkonggongsi\", \"initial_value\": null, \"type_name\": \"航空公司\", \"_value_reset_delay\": null, \"value\": \"中国国航\", \"_ask\": \"请问你要选择什么航空公司呢\"}, \"cangdeng\": {\"name\": \"cangdeng\", \"initial_value\": null, \"type_name\": \"舱等\", \"_value_reset_delay\": null, \"value\": \"头等舱\", \"_ask\": \"请问你想坐的舱等是哪个等级呢\"}}, \"lastIntent\": \"出差申请\", \"query\": \"头等舱\", \"action\": {\"name\": \"\", \"parameters\": [{\"value\": \"头等舱\", \"entity\": \"cangdeng\"}, {\"value\": \"中国国航\", \"entity\": \"hangkonggongsi\"}, {\"value\": \"深圳\", \"entity\": \"departureCity\"}, {\"value\": \"明天\", \"entity\": \"departureDate\"}, {\"value\": \"上海\", \"entity\": \"terminusCity\"}], \"complete\": true}, \"pre_question\": \"您是不是要去出差呢？\", \"currentQuestionType\": 0, \"sessionId\": \"42eGluz0kIQwg/TwEaupkw==\", \"answer\": \"请问你想坐的舱等是哪个等级呢\"}, \"tag\": null, \"intent\": \"航班查询\"}}', '1', '2018-03-27 09:28:09', '订购机票');

-- ----------------------------
-- Table structure for `robot_app`
-- ----------------------------
DROP TABLE IF EXISTS `robot_app`;
CREATE TABLE `robot_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '应用id',
  `name` varchar(64) DEFAULT NULL COMMENT '应用名称',
  `is_private` int(1) DEFAULT NULL COMMENT '应用私有标识 0为私有，1为公开',
  `describe` varchar(500) DEFAULT NULL COMMENT '应用描述',
  `link` varchar(128) DEFAULT NULL COMMENT '链接',
  `language` varchar(64) DEFAULT NULL COMMENT '语言',
  `zone` varchar(64) DEFAULT NULL COMMENT '时区',
  `client_token` varchar(128) DEFAULT NULL COMMENT '客户token',
  `dev_token` varchar(128) DEFAULT NULL COMMENT '开发者token',
  `mic_service` int(11) DEFAULT NULL COMMENT '应用对应的微服务',
  `def_reply` varchar(500) DEFAULT NULL COMMENT '默认回复',
  `storage` varchar(16) DEFAULT NULL COMMENT '存储方式',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新日期',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of robot_app
-- ----------------------------
INSERT INTO `robot_app` VALUES ('1', '聊天', '1', '哈哈hahahahahaha', null, null, null, null, null, null, '你好', '搜索引擎', '14', null, '2018-01-08 18:19:20', '1');
INSERT INTO `robot_app` VALUES ('2', '跑步去', '1', 'skdajf', null, null, null, null, null, null, '1233', '搜索引擎', '14', null, '2017-12-29 10:44:54', '0');
INSERT INTO `robot_app` VALUES ('3', '空间呀', '0', null, null, null, null, null, null, null, 'fjklsdfh', null, '14', null, '2017-12-27 16:13:04', '0');
INSERT INTO `robot_app` VALUES ('4', '时间', '1', null, null, null, null, null, null, null, null, null, '14', null, '2018-01-11 17:05:32', '1');
INSERT INTO `robot_app` VALUES ('5', '跑鞋', '1', null, null, null, null, null, null, null, null, null, '14', null, null, '1');
INSERT INTO `robot_app` VALUES ('23', '聊天1', '1', '闲聊', null, null, null, null, null, null, '哈哈哈a ', '搜索引擎', '14', '2017-12-23 10:47:28', '2017-12-27 16:12:50', '1');
INSERT INTO `robot_app` VALUES ('24', '聊天11', '1', null, null, null, null, null, null, null, '哈哈哈', null, '14', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '1');
INSERT INTO `robot_app` VALUES ('25', 'report', '1', '报表系统', null, null, null, null, null, null, null, '搜索引擎', '14', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '1');
INSERT INTO `robot_app` VALUES ('26', '新应用', '1', '', null, null, null, null, null, null, 'hello', '', '14', '2017-12-25 18:40:27', '2017-12-25 18:40:27', '1');
INSERT INTO `robot_app` VALUES ('27', '创建应用', '0', '1234', null, null, null, null, null, null, 'hello', '搜索引擎', '14', '2017-12-26 18:15:07', '2017-12-26 18:15:08', '1');
INSERT INTO `robot_app` VALUES ('28', '新创家的应用', null, '', null, null, null, null, null, null, 'hello', '', null, '2017-12-26 18:16:58', '2017-12-26 18:16:58', '1');
INSERT INTO `robot_app` VALUES ('29', '这些', '1', '', null, null, null, null, null, null, 'hello', '', '14', '2017-12-26 18:18:50', '2017-12-26 18:18:50', '1');
INSERT INTO `robot_app` VALUES ('30', '你好', '1', '描述', null, null, null, null, null, null, '回复1,undefined,', '搜索引擎', '14', '2017-12-27 11:19:25', '2018-01-15 17:33:15', '1');
INSERT INTO `robot_app` VALUES ('31', '新建', '1', '', null, null, null, null, null, null, '奇偶覅', '', null, '2017-12-27 16:16:07', '2017-12-27 16:16:07', '1');
INSERT INTO `robot_app` VALUES ('32', '新建', null, '', null, null, null, null, null, null, '123', '', null, '2017-12-27 16:16:29', '2017-12-27 16:16:29', '1');
INSERT INTO `robot_app` VALUES ('33', '新建', '0', '', null, null, null, null, null, null, '', '', '14', '2018-01-02 10:12:26', '2018-01-02 10:12:26', '0');
INSERT INTO `robot_app` VALUES ('34', '123', '1', '', null, null, null, null, null, null, '', '', null, '2018-01-02 10:29:26', '2018-01-02 10:29:26', '1');
INSERT INTO `robot_app` VALUES ('35', '111', null, '', null, null, null, null, null, null, '', '', null, '2018-01-02 10:30:10', '2018-01-02 10:30:10', '1');
INSERT INTO `robot_app` VALUES ('36', '123', null, '', null, null, null, null, null, null, '', '', null, '2018-01-02 10:31:51', '2018-01-02 10:31:51', '1');
INSERT INTO `robot_app` VALUES ('37', '打广告', null, '', null, null, null, null, null, null, '', null, null, '2018-01-02 10:32:15', '2018-01-02 10:32:15', '1');
INSERT INTO `robot_app` VALUES ('38', '哈哈', null, '', null, null, null, null, null, null, '', '', null, '2018-01-02 10:37:41', '2018-01-02 10:37:41', '1');
INSERT INTO `robot_app` VALUES ('39', '聊天11', '1', null, null, null, null, null, null, null, '哈哈哈', null, '14', '2018-01-02 14:30:28', '2018-01-02 14:30:28', '0');
INSERT INTO `robot_app` VALUES ('40', '聊天1', '1', null, null, null, null, null, null, null, '哈哈', null, '14', '2018-01-02 14:30:29', '2018-01-02 14:30:29', '0');
INSERT INTO `robot_app` VALUES ('41', '聊天11', '1', null, null, null, null, null, null, null, '哈哈哈', null, '14', '2018-01-02 14:46:34', '2018-01-02 14:46:34', '1');
INSERT INTO `robot_app` VALUES ('42', '聊天1', '1', null, null, null, null, null, null, null, '哈哈', null, null, '2018-01-02 14:46:34', '2018-01-02 14:46:34', '1');
INSERT INTO `robot_app` VALUES ('43', '我的应用', null, '', null, null, null, null, null, null, '', '', null, '2018-01-03 14:12:20', '2018-01-03 14:12:20', '1');
INSERT INTO `robot_app` VALUES ('44', '新建我的应用', null, '', null, null, null, null, null, null, '', '', null, '2018-01-03 14:12:53', '2018-01-03 14:12:53', '0');
INSERT INTO `robot_app` VALUES ('45', '制度系统', null, '制度系统', null, null, null, null, null, null, '', 'microservice', null, '2018-01-03 14:12:53', '2018-01-03 14:12:53', '0');
INSERT INTO `robot_app` VALUES ('46', 'sadfasdf', '1', 'asdfa', null, null, null, null, null, null, 'sadf', '搜索引擎', 'mao', '2018-01-17 17:02:08', '2018-01-17 17:02:08', '0');
INSERT INTO `robot_app` VALUES ('47', 'sadf', '0', 'sadfa', null, null, null, null, null, null, 'sadf', '搜索引擎', 'mao', '2018-01-17 17:03:18', '2018-01-17 17:03:18', '0');
INSERT INTO `robot_app` VALUES ('48', 'sdfsdaa', '1', 'sdf', null, null, null, null, null, null, 'sdf', '搜索引擎', 'mao', '2018-01-17 17:03:58', '2018-01-17 17:03:58', '0');
INSERT INTO `robot_app` VALUES ('49', '新建应用', null, '孙菲菲', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:05:08', '2018-01-17 17:05:08', '0');
INSERT INTO `robot_app` VALUES ('50', '方式了三', null, '', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:09:05', '2018-01-17 17:09:05', '0');
INSERT INTO `robot_app` VALUES ('51', 'changshi', null, '', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:10:32', '2018-01-17 17:10:32', '1');
INSERT INTO `robot_app` VALUES ('52', 'fsfsaassa', null, '', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:10:53', '2018-01-17 17:10:53', '1');
INSERT INTO `robot_app` VALUES ('53', '添加', null, '', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:12:47', '2018-01-17 17:12:47', '1');
INSERT INTO `robot_app` VALUES ('54', '大大方', null, '', null, null, null, null, null, null, '', '', 'mao', '2018-01-17 17:15:11', '2018-01-17 17:15:11', '1');
INSERT INTO `robot_app` VALUES ('55', 'sdfasasd', '1', 'asdfasd', null, null, null, null, null, null, 'sdf', '搜索引擎', '张三', '2018-01-17 17:42:37', '2018-01-17 17:42:38', '1');
INSERT INTO `robot_app` VALUES ('56', '出差应用', '0', '出差', null, null, null, null, null, null, '可以', '知识中心库', 'admin', '2018-02-11 09:14:30', '2018-02-11 09:14:30', '0');
INSERT INTO `robot_app` VALUES ('57', '订餐', null, '', null, null, null, null, null, null, '', '搜索引擎', 'admin', '2018-03-02 17:35:32', '2018-03-02 17:35:32', '0');

-- ----------------------------
-- Table structure for `robot_app_train`
-- ----------------------------
DROP TABLE IF EXISTS `robot_app_train`;
CREATE TABLE `robot_app_train` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `app_id` int(11) DEFAULT NULL COMMENT 'appId',
  `name` varchar(64) DEFAULT NULL COMMENT '训练名称',
  `train_date` varchar(64) DEFAULT NULL COMMENT '训练日期',
  `local` varchar(500) DEFAULT NULL COMMENT '路径',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识 0为未删除 1为已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='应用训练表';

-- ----------------------------
-- Records of robot_app_train
-- ----------------------------
INSERT INTO `robot_app_train` VALUES ('1', '1', '聊天1', '2017-12-28 11:52:10', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/聊天/聊天_20171228-115210', 'mao', '0');
INSERT INTO `robot_app_train` VALUES ('2', '1', '聊天2', '2017-12-28 11:57:20', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/聊天/聊天_20171228-115720', 'mao', '0');
INSERT INTO `robot_app_train` VALUES ('3', '1', '聊天3', '2017-12-28 12:42:27', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/聊天/聊天_20171228-124227', 'mao', '0');
INSERT INTO `robot_app_train` VALUES ('4', '4', '时间4', '2018-01-03 15:48:20', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/时间/时间_20180103-154820', 'mao', '0');
INSERT INTO `robot_app_train` VALUES ('5', '4', '时间5', '2018-01-03 15:50:37', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/时间/时间_20180103-155037', 'mao', '0');
INSERT INTO `robot_app_train` VALUES ('6', '3', '空间呀6', '2018-01-03 15:52:46', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/空间呀/空间呀_20180103-155246', '张三', '0');
INSERT INTO `robot_app_train` VALUES ('7', '4', '时间7', '2018-01-03 15:53:23', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/时间/时间_20180103-155323', 'zhang', '0');
INSERT INTO `robot_app_train` VALUES ('8', '25', 'report8', '2018-01-08 10:49:44', '/Users/jonathanwei/summary/GITRepository/rasa_nlu/models/report/report_20180108-104944', 'zhang', '0');

-- ----------------------------
-- Table structure for `robot_dict`
-- ----------------------------
DROP TABLE IF EXISTS `robot_dict`;
CREATE TABLE `robot_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '词库id',
  `app_id` int(11) DEFAULT NULL COMMENT '应用id',
  `name` varchar(64) DEFAULT NULL COMMENT '词库名称',
  `pinyin` varchar(128) DEFAULT NULL COMMENT '名称拼音',
  `syno_flag` int(1) DEFAULT NULL COMMENT '有同义词标识 0 则没有同义，1 则有同义',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新日期',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='词库表';

-- ----------------------------
-- Records of robot_dict
-- ----------------------------
INSERT INTO `robot_dict` VALUES ('1', '23', '跑鞋类型', 'paoxieleixing', '1', '2018-01-04 16:03:23', '2017-12-23 10:48:29', '1');
INSERT INTO `robot_dict` VALUES ('2', '23', '跑鞋', 'paoxie', '0', '2018-01-04 16:03:23', '2017-12-28 09:29:34', '1');
INSERT INTO `robot_dict` VALUES ('3', '23', '跑鞋1', 'paoxie1', '0', '2018-01-04 16:03:23', '2018-01-09 10:01:32', '1');
INSERT INTO `robot_dict` VALUES ('4', '23', '跑鞋11', 'paoxie11', '1', '2018-01-04 16:03:23', '2017-12-23 11:52:51', '1');
INSERT INTO `robot_dict` VALUES ('5', '23', '跑鞋12', 'paoxie12', '1', '2018-01-04 16:03:23', '2017-12-23 11:53:58', '1');
INSERT INTO `robot_dict` VALUES ('6', '23', '天气', 'tianqi', '1', '2018-01-04 16:03:23', '2017-12-23 11:53:58', '1');
INSERT INTO `robot_dict` VALUES ('7', '23', '', 'lalala', '0', '2018-01-04 16:03:23', '2017-12-27 16:35:27', '1');
INSERT INTO `robot_dict` VALUES ('8', '23', '啦啦啦', 'lalala', null, '2018-01-04 16:03:23', '2017-12-25 15:27:48', '1');
INSERT INTO `robot_dict` VALUES ('9', '23', '哈哈', 'haha', '0', '2018-01-04 16:03:23', '2017-12-28 10:15:09', '1');
INSERT INTO `robot_dict` VALUES ('10', '23', '你好', 'nihao', '0', '2018-01-04 16:03:23', '2017-12-25 15:30:30', '1');
INSERT INTO `robot_dict` VALUES ('11', '23', '你好呀', 'nihao', '0', '2018-01-04 16:03:23', '2017-12-25 16:30:51', '1');
INSERT INTO `robot_dict` VALUES ('12', '23', '啊啊', 'aa', '0', '2018-01-04 16:03:23', '2017-12-25 15:34:10', '1');
INSERT INTO `robot_dict` VALUES ('13', '2', '你好', 'nihaowa', '0', '2018-01-04 16:03:23', '2017-12-27 10:41:54', '0');
INSERT INTO `robot_dict` VALUES ('14', '4', '这 啦啦', 'zheishiyigeciku', '0', '2018-01-04 16:03:23', '2018-01-02 10:08:44', '1');
INSERT INTO `robot_dict` VALUES ('15', '4', '这是一个', 'zheishiyige', '0', '2018-01-04 16:03:23', '2017-12-25 15:45:21', '1');
INSERT INTO `robot_dict` VALUES ('16', '2', 'lalala', 'lalala', '0', '2018-01-04 16:03:23', '2017-12-25 18:15:02', '1');
INSERT INTO `robot_dict` VALUES ('17', '2', 'lala', 'lala', '0', '2018-01-04 16:03:23', '2017-12-25 18:15:08', '0');
INSERT INTO `robot_dict` VALUES ('18', '2', 'nibushi', 'nibushi', '0', '2018-01-04 16:03:23', '2017-12-25 18:15:14', '1');
INSERT INTO `robot_dict` VALUES ('19', '23', '跑鞋123', 'paoxie123', '1', '2018-01-04 16:03:23', '2017-12-26 15:24:12', '1');
INSERT INTO `robot_dict` VALUES ('20', '23', '跑鞋123', 'paoxie123', '1', '2018-01-04 16:03:23', '2017-12-26 15:39:11', '1');
INSERT INTO `robot_dict` VALUES ('21', '23', '特价', 'tejia', '1', '2018-01-04 16:03:23', '2017-12-26 15:56:20', '1');
INSERT INTO `robot_dict` VALUES ('22', '26', '我的词库哈哈', 'wodeciku', '0', '2018-01-04 16:03:23', '2017-12-26 18:19:47', '0');
INSERT INTO `robot_dict` VALUES ('23', '26', '我的', 'wode', '0', '2018-01-04 16:03:23', '2017-12-26 18:19:38', '0');
INSERT INTO `robot_dict` VALUES ('24', '3', '这是一个新词库', 'zheishiyigexinciku', '0', '2018-01-04 16:03:23', '2018-01-08 18:16:03', '0');
INSERT INTO `robot_dict` VALUES ('25', '32', '词库改', 'ciku', '0', '2018-01-04 16:03:23', '2017-12-27 16:40:07', '0');
INSERT INTO `robot_dict` VALUES ('26', '32', '新建', 'xinjian', '0', '2018-01-04 16:03:23', '2017-12-27 16:40:01', '0');
INSERT INTO `robot_dict` VALUES ('27', '23', '新建词库', 'xinjianciku', '0', '2018-01-04 16:03:23', '2017-12-28 11:13:32', '1');
INSERT INTO `robot_dict` VALUES ('28', '30', '这里萨卡斯绝代风华', 'zheili', '0', '2018-01-04 16:03:23', '2017-12-29 15:10:40', '1');
INSERT INTO `robot_dict` VALUES ('29', '30', '第二个', 'dierge', '0', '2018-01-04 16:03:23', '2017-12-28 14:10:52', '1');
INSERT INTO `robot_dict` VALUES ('30', '30', '词库3', 'ciku3', '0', '2018-01-04 16:03:23', '2017-12-28 14:11:03', '1');
INSERT INTO `robot_dict` VALUES ('31', '30', '新创建的词库', 'xinchuangjiandeciku', '0', '2018-01-04 16:03:23', '2017-12-28 14:31:53', '1');
INSERT INTO `robot_dict` VALUES ('32', '30', '有关键词的词库', 'youguanjiancideciku', '0', '2018-01-04 16:03:23', '2018-01-11 17:09:25', '1');
INSERT INTO `robot_dict` VALUES ('33', '30', '新建一个词库', 'xinjianyigeciku', '0', '2018-01-04 16:03:23', '2017-12-29 10:46:37', '1');
INSERT INTO `robot_dict` VALUES ('34', '1', '词库', 'ciku', '0', '2018-01-04 16:03:23', '2017-12-29 11:15:29', '1');
INSERT INTO `robot_dict` VALUES ('35', '1', '再次创建', 'zaicichuangjian', '0', '2018-01-04 16:03:23', '2017-12-29 11:15:46', '1');
INSERT INTO `robot_dict` VALUES ('36', '1', '词库3', 'ciku3', '0', '2018-01-04 16:03:23', '2018-01-08 09:22:35', '1');
INSERT INTO `robot_dict` VALUES ('37', '4', '建', 'jian', '0', '2018-01-04 16:03:23', '2018-01-02 10:08:32', '1');
INSERT INTO `robot_dict` VALUES ('38', '25', 'fff', 'fff', '0', '2018-01-04 16:03:23', '2018-01-09 16:40:59', '1');
INSERT INTO `robot_dict` VALUES ('39', '25', '1234', '1234', '0', '2018-01-04 16:03:23', '2018-01-03 10:50:21', '1');
INSERT INTO `robot_dict` VALUES ('40', '23', '特价', 'tejia', '1', '2018-01-04 16:03:23', '2018-01-02 14:30:30', '1');
INSERT INTO `robot_dict` VALUES ('41', '23', '特价', 'tejia', '1', '2018-01-04 16:03:23', '2018-01-02 14:46:34', '1');
INSERT INTO `robot_dict` VALUES ('42', '25', 'dd', 'dd', '0', '2018-01-04 16:03:23', '2018-01-03 10:58:35', '1');
INSERT INTO `robot_dict` VALUES ('43', '4', '反反复复', 'fanfanfufu', '0', '2018-01-04 16:03:23', '2018-01-03 10:39:57', '1');
INSERT INTO `robot_dict` VALUES ('44', '4', '发广告', 'faguanggao', '0', '2018-01-04 16:03:23', '2018-01-03 10:40:06', '1');
INSERT INTO `robot_dict` VALUES ('45', '4', '富商大贾', 'fushangdajia', '0', '2018-01-04 16:03:23', '2018-01-03 10:40:09', '1');
INSERT INTO `robot_dict` VALUES ('46', '4', '三个梵蒂冈', 'sangefandigang', '0', '2018-01-04 16:03:23', '2018-01-03 10:40:13', '1');
INSERT INTO `robot_dict` VALUES ('47', '25', '创建词库哦', 'chuangjiancikue', '0', '2018-01-04 16:03:23', '2018-01-03 10:52:56', '1');
INSERT INTO `robot_dict` VALUES ('48', '25', '', '', '0', '2018-01-04 16:03:23', '2018-01-03 10:56:07', '1');
INSERT INTO `robot_dict` VALUES ('49', '25', '', '', '0', '2018-01-04 16:03:23', '2018-01-03 10:56:34', '1');
INSERT INTO `robot_dict` VALUES ('50', '25', '富商大贾', 'fushangdajia', '0', '2018-01-04 16:03:23', '2018-01-03 10:56:41', '1');
INSERT INTO `robot_dict` VALUES ('51', '25', '发生的尴尬', 'fashengdeganga', '0', '2018-01-04 16:03:23', '2018-01-03 11:00:36', '1');
INSERT INTO `robot_dict` VALUES ('52', '25', '哈哈', 'haha', '0', '2018-01-04 16:03:23', '2018-01-03 11:00:57', '1');
INSERT INTO `robot_dict` VALUES ('53', '44', '我是词库1', 'woshiciku1', '0', '2018-01-04 16:03:23', '2018-01-03 14:40:21', '0');
INSERT INTO `robot_dict` VALUES ('54', '44', '这是词库2', 'zheishiciku2', '0', '2018-01-04 16:03:23', '2018-01-03 14:41:28', '0');
INSERT INTO `robot_dict` VALUES ('55', '44', '', '', '0', '2018-01-04 16:03:23', '2018-01-03 14:41:38', '1');
INSERT INTO `robot_dict` VALUES ('56', '44', '黑鸭', 'heiya', '0', '2018-01-04 16:03:23', '2018-01-03 14:41:47', '1');
INSERT INTO `robot_dict` VALUES ('57', '44', '哎呀喂', 'aiyawei', '0', '2018-01-04 16:03:23', '2018-01-03 14:42:01', '0');
INSERT INTO `robot_dict` VALUES ('58', '1', '创建一个新的词库', 'chuangjianyigexindeciku', '0', '2018-01-04 16:03:23', '2018-01-04 17:18:01', '1');
INSERT INTO `robot_dict` VALUES ('59', '40', '先创建第一个', 'xianchuangjiandiyige', '0', '2018-01-04 16:03:23', '2018-01-04 17:25:25', '0');
INSERT INTO `robot_dict` VALUES ('60', '40', '词库', 'ciku', '0', '2018-01-04 16:03:23', '2018-01-04 17:25:32', '0');
INSERT INTO `robot_dict` VALUES ('61', '4', '新建一个', 'xinjianyige', '0', '2018-01-04 16:03:23', '2018-01-08 10:02:01', '1');
INSERT INTO `robot_dict` VALUES ('62', '35', '没有', 'meiyou', '0', '2018-01-04 16:03:23', '2018-01-08 14:46:10', '1');
INSERT INTO `robot_dict` VALUES ('63', '35', '词库', 'ciku', '0', '2018-01-04 16:03:23', '2018-01-08 14:46:17', '1');
INSERT INTO `robot_dict` VALUES ('64', '35', '可不行', 'kebuxing', '0', '2018-01-04 16:03:23', '2018-01-08 14:46:29', '1');
INSERT INTO `robot_dict` VALUES ('65', '25', '', '', '0', '2018-01-04 16:03:23', '2018-01-09 09:50:58', '1');
INSERT INTO `robot_dict` VALUES ('66', '25', 'are you ok', 'are you ok', '0', '2018-01-04 16:03:23', '2018-01-09 09:52:27', '1');
INSERT INTO `robot_dict` VALUES ('67', '30', '在添加一个词库', 'zaitianjiayigeciku', '0', '2018-01-04 16:03:23', '2018-01-11 17:09:47', '1');
INSERT INTO `robot_dict` VALUES ('68', '3', '防守打法', 'fangshoudafa', '0', '2018-01-16 10:08:03', '2018-01-16 10:08:03', '0');
INSERT INTO `robot_dict` VALUES ('69', '2', '打广告', 'daguanggao', '0', '2018-01-16 10:50:20', '2018-01-16 10:50:20', '0');
INSERT INTO `robot_dict` VALUES ('70', '2', '大范甘迪', 'dafangandi', '0', '2018-01-16 10:50:26', '2018-01-16 10:50:33', '0');
INSERT INTO `robot_dict` VALUES ('71', '56', '时间', 'shijian', '0', '2018-02-11 09:18:55', '2018-02-11 09:18:55', '0');
INSERT INTO `robot_dict` VALUES ('72', '56', '城市', 'chengshi', '0', '2018-02-11 09:20:01', '2018-02-11 09:20:01', '0');
INSERT INTO `robot_dict` VALUES ('73', '56', '地区', 'diqu', '0', '2018-02-11 09:20:54', '2018-02-11 09:20:54', '0');
INSERT INTO `robot_dict` VALUES ('74', '56', '酒店名称', 'jiudianmingcheng', '0', '2018-02-11 09:25:19', '2018-02-11 09:25:19', '0');
INSERT INTO `robot_dict` VALUES ('75', '56', '价格', 'jiage', '0', '2018-02-11 09:26:41', '2018-02-11 09:26:41', '0');
INSERT INTO `robot_dict` VALUES ('76', '56', '航班', 'hangban', '0', '2018-02-11 09:27:38', '2018-02-11 09:33:47', '0');
INSERT INTO `robot_dict` VALUES ('77', '56', '酒店星级', 'jiudianxingji', '0', '2018-02-11 09:28:35', '2018-02-11 09:28:35', '0');
INSERT INTO `robot_dict` VALUES ('78', '56', '酒店房型', 'jiudianfangxing', '0', '2018-02-11 09:31:04', '2018-02-11 09:31:04', '0');
INSERT INTO `robot_dict` VALUES ('79', '56', '酒店评分', 'jiudianpingfen', '0', '2018-02-11 09:31:55', '2018-02-11 09:31:55', '0');
INSERT INTO `robot_dict` VALUES ('80', '56', '机舱类型', 'jicangleixing', '0', '2018-02-11 09:37:19', '2018-02-11 09:37:19', '0');
INSERT INTO `robot_dict` VALUES ('81', '45', '酒店房型', 'jiudianfangxing', '0', '2018-03-21 11:02:37', '2018-03-21 11:02:37', '0');
INSERT INTO `robot_dict` VALUES ('82', '45', '航空公司', 'hangkonggongsi', '0', '2018-03-21 16:03:27', '2018-03-21 16:03:27', '0');
INSERT INTO `robot_dict` VALUES ('83', '45', '舱等', 'cangdeng', '0', '2018-03-21 16:05:34', '2018-03-21 16:05:34', '0');
INSERT INTO `robot_dict` VALUES ('84', '45', '酒店评分', 'jiudianpingfen', '0', '2018-03-21 17:41:53', '2018-03-21 17:41:53', '0');
INSERT INTO `robot_dict` VALUES ('85', '45', '酒店等级', 'jiudiandengji', '0', '2018-03-21 17:44:17', '2018-03-21 17:44:17', '0');

-- ----------------------------
-- Table structure for `robot_dict_word`
-- ----------------------------
DROP TABLE IF EXISTS `robot_dict_word`;
CREATE TABLE `robot_dict_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dict_id` int(11) DEFAULT NULL COMMENT '词库id',
  `keyword` varchar(64) DEFAULT NULL COMMENT '关键词',
  `synonymy` varchar(128) DEFAULT NULL COMMENT '同义词',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COMMENT='词库词组表';

-- ----------------------------
-- Records of robot_dict_word
-- ----------------------------
INSERT INTO `robot_dict_word` VALUES ('1', '3', '慢跑', '慢跑，慢', '1');
INSERT INTO `robot_dict_word` VALUES ('2', '3', '跑1', '跑步1', '1');
INSERT INTO `robot_dict_word` VALUES ('3', '3', '跑11', '跑步11', '1');
INSERT INTO `robot_dict_word` VALUES ('4', '3', '跑12', '跑步12', '1');
INSERT INTO `robot_dict_word` VALUES ('5', '3', '跑123', '跑步123', '1');
INSERT INTO `robot_dict_word` VALUES ('6', '21', '8折', '8折', '1');
INSERT INTO `robot_dict_word` VALUES ('7', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('8', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('9', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('10', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('11', '3', '慢跑', null, '1');
INSERT INTO `robot_dict_word` VALUES ('12', '3', '跑1', null, '1');
INSERT INTO `robot_dict_word` VALUES ('13', '3', '跑11', null, '1');
INSERT INTO `robot_dict_word` VALUES ('14', '3', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('15', '3', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('16', '3', '慢跑', null, '1');
INSERT INTO `robot_dict_word` VALUES ('17', '3', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('18', '3', '跑11', null, '1');
INSERT INTO `robot_dict_word` VALUES ('19', '3', '跑12', null, '1');
INSERT INTO `robot_dict_word` VALUES ('20', '3', '跑123', null, '1');
INSERT INTO `robot_dict_word` VALUES ('21', '3', '慢跑', null, '1');
INSERT INTO `robot_dict_word` VALUES ('22', '3', '跑1', null, '1');
INSERT INTO `robot_dict_word` VALUES ('23', '3', '跑11', null, '1');
INSERT INTO `robot_dict_word` VALUES ('24', '3', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('25', '3', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('26', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('27', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('28', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('29', '9', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('30', '27', '这里', null, '1');
INSERT INTO `robot_dict_word` VALUES ('31', '27', '这里', null, '1');
INSERT INTO `robot_dict_word` VALUES ('32', '27', '这里', null, '1');
INSERT INTO `robot_dict_word` VALUES ('33', '27', '这里', null, '1');
INSERT INTO `robot_dict_word` VALUES ('34', '27', 'aiyo', null, '1');
INSERT INTO `robot_dict_word` VALUES ('35', '28', '关键', null, '1');
INSERT INTO `robot_dict_word` VALUES ('36', '28', '关键2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('37', '29', '我的', null, '1');
INSERT INTO `robot_dict_word` VALUES ('38', '29', '词库', null, '1');
INSERT INTO `robot_dict_word` VALUES ('39', '30', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('40', '32', '创建1', null, '1');
INSERT INTO `robot_dict_word` VALUES ('41', '32', '创建2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('42', '32', '创建3', null, '1');
INSERT INTO `robot_dict_word` VALUES ('43', '28', '反反复复', null, '1');
INSERT INTO `robot_dict_word` VALUES ('44', '33', '新家', null, '1');
INSERT INTO `robot_dict_word` VALUES ('45', '33', '西那件2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('46', '33', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('47', '34', '关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('48', '34', '第二个', null, '1');
INSERT INTO `robot_dict_word` VALUES ('49', '34', '哎呀', null, '1');
INSERT INTO `robot_dict_word` VALUES ('50', '35', '词库', null, '1');
INSERT INTO `robot_dict_word` VALUES ('51', '35', '哎呀', null, '1');
INSERT INTO `robot_dict_word` VALUES ('52', '36', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('53', '28', '关键', null, '1');
INSERT INTO `robot_dict_word` VALUES ('54', '28', '关键2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('55', '28', '反反复复', null, '1');
INSERT INTO `robot_dict_word` VALUES ('56', '28', '关键', null, '1');
INSERT INTO `robot_dict_word` VALUES ('57', '28', '关键2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('58', '28', '反反复复水电费哈克斯京东方', null, '1');
INSERT INTO `robot_dict_word` VALUES ('59', '14', '编辑', null, '1');
INSERT INTO `robot_dict_word` VALUES ('60', '14', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('61', '40', '8折', '8折', '1');
INSERT INTO `robot_dict_word` VALUES ('62', '41', '8折', '8折', '1');
INSERT INTO `robot_dict_word` VALUES ('63', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('64', '39', '再添加一次', null, '1');
INSERT INTO `robot_dict_word` VALUES ('65', '39', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('66', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('67', '39', '再添加一次', null, '1');
INSERT INTO `robot_dict_word` VALUES ('68', '39', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('69', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('70', '39', '再添加一次', null, '1');
INSERT INTO `robot_dict_word` VALUES ('71', '39', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('72', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('73', '39', '再添加一次', null, '1');
INSERT INTO `robot_dict_word` VALUES ('74', '39', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('75', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('76', '39', '再添加一次', null, '1');
INSERT INTO `robot_dict_word` VALUES ('77', '39', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('78', '39', '添加一个关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('79', '39', '十多个辜负', null, '1');
INSERT INTO `robot_dict_word` VALUES ('80', '39', '第三个大幅度', null, '1');
INSERT INTO `robot_dict_word` VALUES ('81', '39', '烦死哒发生的尴尬', null, '1');
INSERT INTO `robot_dict_word` VALUES ('82', '39', '第三个两个', null, '1');
INSERT INTO `robot_dict_word` VALUES ('83', '42', '', null, '1');
INSERT INTO `robot_dict_word` VALUES ('84', '47', '三个傻瓜', null, '1');
INSERT INTO `robot_dict_word` VALUES ('85', '47', '颂德歌功', null, '1');
INSERT INTO `robot_dict_word` VALUES ('86', '47', ' 故事梗概', null, '1');
INSERT INTO `robot_dict_word` VALUES ('87', '47', '归属感', null, '1');
INSERT INTO `robot_dict_word` VALUES ('88', '49', '十多个', null, '1');
INSERT INTO `robot_dict_word` VALUES ('89', '50', '十多个', null, '1');
INSERT INTO `robot_dict_word` VALUES ('90', '42', '发生的尴尬', null, '1');
INSERT INTO `robot_dict_word` VALUES ('91', '51', '大概', null, '1');
INSERT INTO `robot_dict_word` VALUES ('92', '52', '艾玛', null, '1');
INSERT INTO `robot_dict_word` VALUES ('93', '53', '啦啦啦', null, '0');
INSERT INTO `robot_dict_word` VALUES ('94', '53', '哈哈哈', null, '0');
INSERT INTO `robot_dict_word` VALUES ('95', '54', '啦啦', null, '0');
INSERT INTO `robot_dict_word` VALUES ('96', '56', '方法', null, '1');
INSERT INTO `robot_dict_word` VALUES ('97', '36', '哈哈', null, '1');
INSERT INTO `robot_dict_word` VALUES ('98', '36', '学费水电费g', null, '1');
INSERT INTO `robot_dict_word` VALUES ('99', '61', '词库', null, '1');
INSERT INTO `robot_dict_word` VALUES ('100', '64', '是不', null, '1');
INSERT INTO `robot_dict_word` VALUES ('101', '24', '词库', null, '0');
INSERT INTO `robot_dict_word` VALUES ('102', '24', '新建', null, '0');
INSERT INTO `robot_dict_word` VALUES ('103', '65', 'is', null, '1');
INSERT INTO `robot_dict_word` VALUES ('104', '3', '慢跑', null, '1');
INSERT INTO `robot_dict_word` VALUES ('105', '3', '跑1', null, '1');
INSERT INTO `robot_dict_word` VALUES ('106', '3', '跑11', null, '1');
INSERT INTO `robot_dict_word` VALUES ('107', '3', '跑12', null, '1');
INSERT INTO `robot_dict_word` VALUES ('108', '38', 'fsdfsd', null, '1');
INSERT INTO `robot_dict_word` VALUES ('109', '32', '创建1', null, '1');
INSERT INTO `robot_dict_word` VALUES ('110', '32', '创建2', null, '1');
INSERT INTO `robot_dict_word` VALUES ('111', '67', '关键词', null, '1');
INSERT INTO `robot_dict_word` VALUES ('112', '67', '发发发', null, '1');
INSERT INTO `robot_dict_word` VALUES ('113', '70', '方式方法', null, '0');
INSERT INTO `robot_dict_word` VALUES ('114', '71', '明天', null, '0');
INSERT INTO `robot_dict_word` VALUES ('115', '71', '昨天', null, '0');
INSERT INTO `robot_dict_word` VALUES ('116', '71', '后天', null, '0');
INSERT INTO `robot_dict_word` VALUES ('117', '72', '深圳', null, '0');
INSERT INTO `robot_dict_word` VALUES ('118', '72', '上海', null, '0');
INSERT INTO `robot_dict_word` VALUES ('119', '72', '北京', null, '0');
INSERT INTO `robot_dict_word` VALUES ('120', '72', '广州', null, '0');
INSERT INTO `robot_dict_word` VALUES ('121', '73', '虹口区', null, '0');
INSERT INTO `robot_dict_word` VALUES ('122', '73', '天河区', null, '0');
INSERT INTO `robot_dict_word` VALUES ('123', '73', '南山区', null, '0');
INSERT INTO `robot_dict_word` VALUES ('124', '73', '朝阳区', null, '0');
INSERT INTO `robot_dict_word` VALUES ('125', '74', '上海宝安大酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('126', '74', '上海静安酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('127', '74', '广州大酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('128', '74', '北京丽景湾国际酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('129', '74', '深圳湾科技园海尚酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('130', '75', '500元起', null, '0');
INSERT INTO `robot_dict_word` VALUES ('131', '75', '300元', null, '0');
INSERT INTO `robot_dict_word` VALUES ('132', '75', '1000元', null, '0');
INSERT INTO `robot_dict_word` VALUES ('133', '76', '南方航空', null, '1');
INSERT INTO `robot_dict_word` VALUES ('134', '77', '五星级酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('135', '77', '三星级', null, '0');
INSERT INTO `robot_dict_word` VALUES ('136', '77', '四星级酒店', null, '0');
INSERT INTO `robot_dict_word` VALUES ('137', '78', '特价房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('138', '78', '豪华大床房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('139', '78', '高级房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('140', '78', '豪华套房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('141', '78', '单床房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('142', '79', '4.6分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('143', '79', '3.9分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('144', '79', '4.5分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('145', '79', '4.7分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('146', '76', '南方航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('147', '76', '东方航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('148', '76', '中国国航', null, '0');
INSERT INTO `robot_dict_word` VALUES ('149', '76', '深圳航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('150', '76', '吉祥航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('151', '80', '经济舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('152', '80', '头等舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('153', '80', '商务舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('154', '80', '公务舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('155', '81', '大床房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('156', '81', '特价房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('157', '81', '豪华大床房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('158', '81', '豪华套房', null, '0');
INSERT INTO `robot_dict_word` VALUES ('159', '82', '南方航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('160', '82', '东方航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('161', '82', '中国国航', null, '0');
INSERT INTO `robot_dict_word` VALUES ('162', '82', '吉祥航空', null, '0');
INSERT INTO `robot_dict_word` VALUES ('163', '83', '经济舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('164', '83', '头等舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('165', '83', '商务舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('166', '83', '公务舱', null, '0');
INSERT INTO `robot_dict_word` VALUES ('167', '84', '4.5分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('168', '84', '3.9分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('169', '84', '4.7分', null, '0');
INSERT INTO `robot_dict_word` VALUES ('170', '85', '五星级', null, '0');
INSERT INTO `robot_dict_word` VALUES ('171', '85', '四星级', null, '0');
INSERT INTO `robot_dict_word` VALUES ('172', '85', '三星级', null, '0');

-- ----------------------------
-- Table structure for `robot_mic_arrt`
-- ----------------------------
DROP TABLE IF EXISTS `robot_mic_arrt`;
CREATE TABLE `robot_mic_arrt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int(11) DEFAULT NULL COMMENT '微服务id',
  `name` varchar(64) DEFAULT NULL COMMENT '参数名称',
  `value` varchar(64) DEFAULT NULL COMMENT '参数值',
  `describe` varchar(500) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='微服务属性管理表';

-- ----------------------------
-- Records of robot_mic_arrt
-- ----------------------------
INSERT INTO `robot_mic_arrt` VALUES ('21', '15', 'city', '江苏', '地名');
INSERT INTO `robot_mic_arrt` VALUES ('22', '15', 'date', '2017', '时间');
INSERT INTO `robot_mic_arrt` VALUES ('23', '15', '方法', ' 方法', '方式');

-- ----------------------------
-- Table structure for `robot_mic_service`
-- ----------------------------
DROP TABLE IF EXISTS `robot_mic_service`;
CREATE TABLE `robot_mic_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `url` varchar(128) DEFAULT NULL COMMENT '路径',
  `attr` varchar(500) DEFAULT NULL COMMENT '接口参数',
  `describe` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='微服务管理表';

-- ----------------------------
-- Records of robot_mic_service
-- ----------------------------
INSERT INTO `robot_mic_service` VALUES ('1', '财务', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale', '[{\"arrtName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '经分微服务', 'admin', '2017-12-27 16:13:04', '2017-12-27 16:13:04', '1');
INSERT INTO `robot_mic_service` VALUES ('2', '经分1', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":\"\",\"describe\":\"xixi1\"},{\"attrName\":\"\",\"describe\":\"xixi2\"},{\"attrName\":\"\",\"describe\":\"xixi\"}]', '经分微服务', 'admin', '2017-12-27 16:13:04', '2018-03-02 16:31:53', '0');
INSERT INTO `robot_mic_service` VALUES ('3', '经分2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":\"\",\"describe\":\"xixi1\"},{\"attrName\":\"\",\"describe\":\"xixi2\"},{\"attrName\":\"\",\"describe\":\"xixi\"},{\"attrName\":\"是否\",\"describe\":\"防守打法\"}]', '经分微服务', 'admin', '2017-12-27 16:13:04', '2018-03-02 16:33:05', '0');
INSERT INTO `robot_mic_service` VALUES ('4', '财务1', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"arrtName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', 'admin', '2017-12-27 16:13:04', '2017-12-27 16:13:04', '1');
INSERT INTO `robot_mic_service` VALUES ('5', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":\"haha1\",\"describe\":\"xixi1\"},{\"attrName\":\"水电费\",\"describe\":\"xix\"},{\"attrName\":\"\",\"describe\":\"xixi\"},{\"attrName\":\"到访\",\"describe\":\"撒打算\"}]', '财务微服务', 'admin', '2018-01-10 10:39:39', '2018-03-02 16:50:44', '0');
INSERT INTO `robot_mic_service` VALUES ('6', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"arrtName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:46:45', '2018-01-31 11:46:45', '1');
INSERT INTO `robot_mic_service` VALUES ('7', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"arrtName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:46:49', '2018-01-31 11:46:49', '1');
INSERT INTO `robot_mic_service` VALUES ('8', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:47:14', '2018-01-31 11:47:14', '1');
INSERT INTO `robot_mic_service` VALUES ('9', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:49:35', '2018-01-31 11:49:35', '1');
INSERT INTO `robot_mic_service` VALUES ('10', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:50:46', '2018-01-31 11:50:46', '1');
INSERT INTO `robot_mic_service` VALUES ('11', '财务2sdff', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:51:02', '2018-01-31 11:51:02', '1');
INSERT INTO `robot_mic_service` VALUES ('12', '财务2sdfffsfggg', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:51:37', '2018-01-31 11:51:37', '1');
INSERT INTO `robot_mic_service` VALUES ('13', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 11:52:13', '2018-01-31 11:52:13', '1');
INSERT INTO `robot_mic_service` VALUES ('14', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 13:56:29', '2018-01-31 13:56:29', '1');
INSERT INTO `robot_mic_service` VALUES ('15', '财务2', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 13:57:40', '2018-01-31 13:57:40', '0');
INSERT INTO `robot_mic_service` VALUES ('16', '财务微服务', 'http://172.18.84.72:8008/jingfen/queryMonthCitySale', '[{\"attrName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]', '财务微服务', null, '2018-01-31 14:03:04', '2018-01-31 14:03:04', '1');
INSERT INTO `robot_mic_service` VALUES ('17', '刚发的', '', '', '', 'admin', '2018-02-09 16:51:08', '2018-02-09 16:51:08', '1');
INSERT INTO `robot_mic_service` VALUES ('18', '哈哈微服务', 'baidu', '[{\"attrName\":\"hello\",\"describe\":\"haha\"}]', '哈哈微服务', 'admin', '2018-03-04 16:01:56', '2018-03-04 16:01:56', '0');

-- ----------------------------
-- Table structure for `robot_process`
-- ----------------------------
DROP TABLE IF EXISTS `robot_process`;
CREATE TABLE `robot_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流程id',
  `name` varchar(64) DEFAULT NULL COMMENT '流程名称',
  `describe` varchar(500) DEFAULT NULL COMMENT '流程描述',
  `content` varchar(1024) DEFAULT NULL COMMENT '流程内容',
  `ask` varchar(128) DEFAULT NULL COMMENT '流程执行之后的询问',
  `y_action` varchar(128) DEFAULT NULL COMMENT '肯定执行的动作',
  `n_action` varchar(128) DEFAULT NULL COMMENT '否定执行的动作',
  `trigger_intent` varchar(64) DEFAULT '' COMMENT '触发意图名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='流程管理表';

-- ----------------------------
-- Records of robot_process
-- ----------------------------
INSERT INTO `robot_process` VALUES ('2', 'haha流程', 'haohao', null, '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', null, 'admin', '2018-01-12 14:27:40', '2018-02-09 16:30:00', '0');
INSERT INTO `robot_process` VALUES ('3', 'haha22否', 'haohao22', null, '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', null, 'admin', '2018-01-12 16:54:15', '2018-02-09 16:48:14', '1');
INSERT INTO `robot_process` VALUES ('4', 'haha', 'haohao', '[{\"aid\":4,\"itName\":\"发发发\",\"sort\":1},{\"aid\":39,\"itName\":\"场景1\",\"sort\":2},{\"aid\":44,\"itName\":\"niahoao\",\"sort\":3},{\"aid\":44,\"itName\":\"查询酒店\",\"sort\":4},{\"aid\":45,\"itName\":\"航班查询\",\"sort\":5}]', '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', null, 'admin', '2018-02-09 15:58:01', '2018-02-12 10:03:50', '0');
INSERT INTO `robot_process` VALUES ('5', 'haha', 'haohao', null, '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', null, 'admin', '2018-02-09 15:58:30', '2018-02-09 15:58:30', '1');
INSERT INTO `robot_process` VALUES ('6', 'haha', 'haohao', null, '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', null, 'admin', '2018-02-09 16:02:16', '2018-02-09 16:02:16', '1');
INSERT INTO `robot_process` VALUES ('7', '流程名称 啊', 'haohao', '[{\"itName\":\"发发发\",\"sort\":1},{\"itName\":\"查询酒店\",\"sort\":2},{\"itName\":\"天气\",\"sort\":3},{\"itName\":\"场景1\",\"sort\":4},{\"iid\":83,\"itName\":\"预订机票\",\"sort\":5}]', '是否提交申请', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', 'http://172.18.84.72:8008/jingfen/queryMonthCompanySale?company=尚美佳&date=2017-01', '', 'admin', '2018-02-09 16:26:05', '2018-02-28 17:22:38', '0');
INSERT INTO `robot_process` VALUES ('8', '新建流程', '描述', null, null, null, null, null, 'admin', '2018-02-09 16:43:58', '2018-02-09 16:43:58', '1');
INSERT INTO `robot_process` VALUES ('9', '方式', null, null, null, null, null, null, 'admin', '2018-02-09 16:46:19', '2018-02-09 16:46:19', '1');
INSERT INTO `robot_process` VALUES ('10', '佛挡杀佛', null, null, null, null, null, null, 'admin', '2018-02-09 16:47:25', '2018-02-09 16:47:25', '1');
INSERT INTO `robot_process` VALUES ('11', '是发给赋给', null, null, null, null, null, null, 'admin', '2018-02-09 16:55:04', '2018-02-09 16:55:04', '1');
INSERT INTO `robot_process` VALUES ('12', '添加流程', null, null, null, null, null, null, 'admin', '2018-02-09 17:19:10', '2018-02-09 17:19:10', '0');
INSERT INTO `robot_process` VALUES ('13', '出差流程', '出差流程', '[{\"iid\":65,\"itName\":\"出差申请\",\"sort\":1},{\"iid\":74,\"itName\":\"酒店查询\",\"sort\":2},{\"iid\":77,\"itName\":\"订购酒店\",\"sort\":3},{\"iid\":76,\"itName\":\"航班查询\",\"sort\":4},{\"iid\":78,\"itName\":\"订购机票\",\"sort\":5}]', '是否提交${date}去${address}的出差申请？', '出差申请', null, '出差申请', null, null, null, '0');
INSERT INTO `robot_process` VALUES ('14', '啊是防守打法', '是是是', '[{\"itName\":\"查询酒店\",\"sort\":1},{\"iid\":81,\"itName\":\"预定酒店\",\"sort\":2}]', '搜索', '是', '是', '查询酒店', 'admin', '2018-02-28 17:26:04', '2018-02-28 17:27:28', '0');

-- ----------------------------
-- Table structure for `robot_process_block`
-- ----------------------------
DROP TABLE IF EXISTS `robot_process_block`;
CREATE TABLE `robot_process_block` (
  `pid` int(11) DEFAULT NULL COMMENT '流程id',
  `iid` int(11) DEFAULT NULL COMMENT '意图id',
  `it_name` varchar(64) DEFAULT NULL COMMENT '场景名称',
  `sort` varchar(8) DEFAULT NULL COMMENT '排序',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of robot_process_block
-- ----------------------------
INSERT INTO `robot_process_block` VALUES ('2', '12', 'dsaf', '1', '1');
INSERT INTO `robot_process_block` VALUES ('2', '1', 'dsf', '2', '1');
INSERT INTO `robot_process_block` VALUES ('4', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('4', '39', '场景1', '2', '1');
INSERT INTO `robot_process_block` VALUES ('4', '44', 'niahoao', '3', '1');
INSERT INTO `robot_process_block` VALUES ('4', '44', '查询酒店', '4', '1');
INSERT INTO `robot_process_block` VALUES ('4', '45', '航班查询', '5', '1');
INSERT INTO `robot_process_block` VALUES ('5', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('5', '39', '场景1', '2', '1');
INSERT INTO `robot_process_block` VALUES ('5', '44', 'niahoao', '3', '1');
INSERT INTO `robot_process_block` VALUES ('6', '4', '再次新建', '1', '1');
INSERT INTO `robot_process_block` VALUES ('6', '4', '窗机', '2', '1');
INSERT INTO `robot_process_block` VALUES ('6', '39', '场景1', '3', '1');
INSERT INTO `robot_process_block` VALUES ('7', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', '39', '场景1', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', '44', 'niahoao', '3', '1');
INSERT INTO `robot_process_block` VALUES ('2', '4', '窗机', '1', '0');
INSERT INTO `robot_process_block` VALUES ('2', '4', '场景名称', '2', '0');
INSERT INTO `robot_process_block` VALUES ('2', '40', '创建一次', '3', '0');
INSERT INTO `robot_process_block` VALUES ('8', '4', '是防守打法', '1', '1');
INSERT INTO `robot_process_block` VALUES ('8', '39', '场景1', '2', '1');
INSERT INTO `robot_process_block` VALUES ('12', '4', '场景名称', '1', '0');
INSERT INTO `robot_process_block` VALUES ('12', '4', '是防守打法', '2', '0');
INSERT INTO `robot_process_block` VALUES ('7', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', '44', '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', '45', '天气', '3', '1');
INSERT INTO `robot_process_block` VALUES ('7', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', '44', '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', '45', '天气', '3', '1');
INSERT INTO `robot_process_block` VALUES ('4', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('4', '39', '场景1', '2', '1');
INSERT INTO `robot_process_block` VALUES ('4', '44', 'niahoao', '3', '1');
INSERT INTO `robot_process_block` VALUES ('4', '44', '查询酒店', '4', '1');
INSERT INTO `robot_process_block` VALUES ('4', '45', '航班查询', '5', '1');
INSERT INTO `robot_process_block` VALUES ('4', '4', '发发发', '1', '0');
INSERT INTO `robot_process_block` VALUES ('4', '39', '场景1', '2', '0');
INSERT INTO `robot_process_block` VALUES ('4', '44', 'niahoao', '3', '0');
INSERT INTO `robot_process_block` VALUES ('4', '44', '查询酒店', '4', '0');
INSERT INTO `robot_process_block` VALUES ('4', '45', '航班查询', '5', '0');
INSERT INTO `robot_process_block` VALUES ('7', '4', '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', '44', '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', '45', '天气', '3', '1');
INSERT INTO `robot_process_block` VALUES ('7', '39', '场景1', '4', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '天气', '3', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '场景1', '4', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '修改', '5', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '发发发', '1', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '天气', '3', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '场景1', '4', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '修改', '5', '1');
INSERT INTO `robot_process_block` VALUES ('7', '80', '订酒店', '6', '1');
INSERT INTO `robot_process_block` VALUES ('7', null, '发发发', '1', '0');
INSERT INTO `robot_process_block` VALUES ('7', null, '查询酒店', '2', '0');
INSERT INTO `robot_process_block` VALUES ('7', null, '天气', '3', '0');
INSERT INTO `robot_process_block` VALUES ('7', null, '场景1', '4', '0');
INSERT INTO `robot_process_block` VALUES ('7', '83', '预订机票', '5', '0');
INSERT INTO `robot_process_block` VALUES ('14', '43', '新家场景', '1', '1');
INSERT INTO `robot_process_block` VALUES ('14', '42', '查询酒店', '2', '1');
INSERT INTO `robot_process_block` VALUES ('14', null, '查询酒店', '1', '0');
INSERT INTO `robot_process_block` VALUES ('14', '81', '预定酒店', '2', '0');

-- ----------------------------
-- Table structure for `robot_scene`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene`;
CREATE TABLE `robot_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '场景id',
  `app_id` int(11) DEFAULT NULL COMMENT '应用id',
  `name` varchar(64) DEFAULT NULL COMMENT '场景名称',
  `answer` varchar(500) DEFAULT NULL COMMENT '回复',
  `rank` int(1) DEFAULT NULL COMMENT '场景等级 5个等级',
  `input` varchar(128) DEFAULT NULL COMMENT '输入的场景',
  `output` varchar(128) DEFAULT NULL COMMENT '场景输出',
  `check` varchar(128) DEFAULT NULL COMMENT '场景检测',
  `act_name` varchar(64) DEFAULT NULL COMMENT '动作名称',
  `flag` int(1) DEFAULT NULL COMMENT '动作前置或是后置  0 前置；1 后置',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='场景表';

-- ----------------------------
-- Records of robot_scene
-- ----------------------------
INSERT INTO `robot_scene` VALUES ('1', '1', '1', '11', '1', '11', null, '1', '1', null, '2018-01-04 16:03:23', '11', '1');
INSERT INTO `robot_scene` VALUES ('3', '25', 'report', '${date}的${report_type}', '1', null, null, null, 'querySolr', null, '2018-01-04 16:03:23', '2017-12-23 11:53:58', '1');
INSERT INTO `robot_scene` VALUES ('4', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 14:17:41', '1');
INSERT INTO `robot_scene` VALUES ('5', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 14:20:03', '1');
INSERT INTO `robot_scene` VALUES ('6', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 14:20:43', '1');
INSERT INTO `robot_scene` VALUES ('7', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 14:27:43', '1');
INSERT INTO `robot_scene` VALUES ('8', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 14:39:18', '1');
INSERT INTO `robot_scene` VALUES ('9', '30', '新建场景', null, null, null, null, null, '动作1', null, '2018-01-04 16:03:23', '2017-12-28 14:39:19', '1');
INSERT INTO `robot_scene` VALUES ('10', '30', '很复杂的问题', null, null, null, null, null, '动作', null, '2018-01-04 16:03:23', '2018-01-05 16:17:38', '1');
INSERT INTO `robot_scene` VALUES ('11', '30', '新建一个', null, null, null, null, null, '动作名称', null, '2018-01-04 16:03:23', '2018-01-11 17:08:23', '1');
INSERT INTO `robot_scene` VALUES ('12', '30', '很复杂的问题', null, null, null, null, null, '动作', null, '2018-01-04 16:03:23', '2018-01-05 14:21:43', '1');
INSERT INTO `robot_scene` VALUES ('13', '2', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 15:11:27', '1');
INSERT INTO `robot_scene` VALUES ('14', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 15:12:47', '1');
INSERT INTO `robot_scene` VALUES ('15', '30', null, null, null, null, null, null, null, null, '2018-01-04 16:03:23', '2017-12-28 15:13:33', '1');
INSERT INTO `robot_scene` VALUES ('16', '30', '很复杂的问题撒的发生地方都是可视电话反馈', null, null, null, null, null, '动作', null, '2018-01-04 16:03:23', '2017-12-29 15:32:26', '1');
INSERT INTO `robot_scene` VALUES ('18', '2', '修改', null, null, null, null, null, '修改', '0', '2018-01-04 16:03:23', '2017-12-28 15:45:14', '0');
INSERT INTO `robot_scene` VALUES ('19', '4', '新建场景', null, null, null, null, null, 'jovial', null, '2018-01-04 16:03:23', '2017-12-28 18:24:02', '1');
INSERT INTO `robot_scene` VALUES ('20', '30', '新建一个场景列表', null, null, null, null, null, '好多bug', null, '2018-01-04 16:03:23', '2018-01-08 10:24:05', '1');
INSERT INTO `robot_scene` VALUES ('21', '30', '新建一个', null, null, null, null, null, '动作名称', null, '2018-01-04 16:03:23', '2018-01-02 10:40:29', '1');
INSERT INTO `robot_scene` VALUES ('22', '4', '是防守打法', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 10:22:56', '1');
INSERT INTO `robot_scene` VALUES ('23', '30', 'fffff', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:12:09', '1');
INSERT INTO `robot_scene` VALUES ('24', '25', 'tianjia', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:16:58', '1');
INSERT INTO `robot_scene` VALUES ('25', '25', 'fff', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:18:41', '1');
INSERT INTO `robot_scene` VALUES ('26', '25', 'eee', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:20:14', '1');
INSERT INTO `robot_scene` VALUES ('27', '25', 'ffff', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:28:29', '1');
INSERT INTO `robot_scene` VALUES ('28', '25', 'fsdgsg ', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:28:34', '1');
INSERT INTO `robot_scene` VALUES ('29', '25', 'sdfsd', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:28:38', '1');
INSERT INTO `robot_scene` VALUES ('30', '25', 'haha', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:28:47', '1');
INSERT INTO `robot_scene` VALUES ('31', '25', 'ff', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:29:33', '1');
INSERT INTO `robot_scene` VALUES ('32', '25', 'fsdf', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:29:41', '1');
INSERT INTO `robot_scene` VALUES ('33', '25', '12344444', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 17:12:34', '1');
INSERT INTO `robot_scene` VALUES ('34', '25', 'thsi', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 11:32:13', '1');
INSERT INTO `robot_scene` VALUES ('35', '1', '新建场景', null, null, null, null, null, 'jovial', null, '2018-01-04 16:03:23', '2018-01-08 16:52:43', '1');
INSERT INTO `robot_scene` VALUES ('36', '25', 'ddd', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 17:09:37', '1');
INSERT INTO `robot_scene` VALUES ('37', '25', '123', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 17:10:53', '1');
INSERT INTO `robot_scene` VALUES ('38', '25', 'fsdff', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 17:11:04', '1');
INSERT INTO `robot_scene` VALUES ('39', '25', '修改', null, null, null, null, null, '修改', null, '2018-01-04 16:03:23', '2018-01-02 17:22:59', '1');
INSERT INTO `robot_scene` VALUES ('40', '25', 'sfgg', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-02 17:12:44', '1');
INSERT INTO `robot_scene` VALUES ('41', '44', '出差', null, null, null, null, null, '', '0', '2018-01-04 16:03:23', '2018-01-03 14:21:22', '0');
INSERT INTO `robot_scene` VALUES ('42', '44', '查询酒店', null, null, null, null, null, '', '0', '2018-01-04 16:03:23', '2018-01-03 14:49:07', '0');
INSERT INTO `robot_scene` VALUES ('43', '44', '新家场景', null, null, '', '165,166,167,168,169', '35', '新建', '0', '2018-01-04 16:03:23', '2018-03-03 11:29:58', '0');
INSERT INTO `robot_scene` VALUES ('44', '44', 'niahoao', null, null, '38,45', '68,69', '37', '', '0', '2018-01-04 16:03:23', '2018-02-02 11:27:48', '0');
INSERT INTO `robot_scene` VALUES ('45', '44', 'FFFF', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-03 14:50:03', '1');
INSERT INTO `robot_scene` VALUES ('46', '44', 'FFFSDGGS', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-03 14:50:09', '1');
INSERT INTO `robot_scene` VALUES ('47', '44', 'g;sggsgdgss', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-03 14:53:07', '1');
INSERT INTO `robot_scene` VALUES ('48', '44', 'thsi;;sfn;gggss', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-03 14:53:14', '1');
INSERT INTO `robot_scene` VALUES ('49', '39', '场景1', null, null, null, null, null, '', '0', '2018-01-04 16:03:23', '2018-01-04 16:00:00', '0');
INSERT INTO `robot_scene` VALUES ('50', '40', '创建2', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:01:33', '1');
INSERT INTO `robot_scene` VALUES ('51', '1', '创建', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:02:33', '1');
INSERT INTO `robot_scene` VALUES ('52', '1', '怎么回事', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:02:48', '1');
INSERT INTO `robot_scene` VALUES ('53', '1', '成功不', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:03:07', '1');
INSERT INTO `robot_scene` VALUES ('54', '1', '带饭', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:03:23', '1');
INSERT INTO `robot_scene` VALUES ('55', '1', '这里是可以', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:03:35', '1');
INSERT INTO `robot_scene` VALUES ('56', '1', '可以吗', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 16:03:59', '1');
INSERT INTO `robot_scene` VALUES ('57', '4', '场景名称', null, null, null, null, null, '这是动作', null, '2018-01-04 16:03:23', '2018-01-10 09:56:35', '1');
INSERT INTO `robot_scene` VALUES ('58', '1', '创建一个新的', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 17:20:02', '1');
INSERT INTO `robot_scene` VALUES ('59', '1', '哈哈哈新', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 17:20:24', '1');
INSERT INTO `robot_scene` VALUES ('60', '1', '这是app40的场景', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-04 17:22:25', '1');
INSERT INTO `robot_scene` VALUES ('61', '40', '再次', null, null, null, null, null, '', '0', '2018-01-04 16:03:23', '2018-01-04 17:24:47', '0');
INSERT INTO `robot_scene` VALUES ('62', '40', '创建一次', null, null, null, null, null, '', '0', '2018-01-04 16:03:23', '2018-01-04 17:25:02', '0');
INSERT INTO `robot_scene` VALUES ('63', '35', '一个新的场景', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-08 18:16:34', '1');
INSERT INTO `robot_scene` VALUES ('64', '4', '发发发', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 10:33:13', '1');
INSERT INTO `robot_scene` VALUES ('65', '45', '出差申请', '', null, '', '8,72', '', '', '0', '2018-01-04 16:03:23', '2018-01-09 09:41:00', '1');
INSERT INTO `robot_scene` VALUES ('66', '4', '烦死哒', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 10:09:08', '1');
INSERT INTO `robot_scene` VALUES ('67', '4', '再次新建', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 10:21:58', '1');
INSERT INTO `robot_scene` VALUES ('68', '4', '窗机', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 10:11:07', '1');
INSERT INTO `robot_scene` VALUES ('69', '4', '丰富的', null, null, null, null, null, '胜多负少的', null, '2018-01-04 16:03:23', '2018-01-11 10:23:11', '1');
INSERT INTO `robot_scene` VALUES ('70', '4', '孙菲菲东方闪电', null, null, null, null, null, '电风扇', null, '2018-01-04 16:03:23', '2018-01-11 10:24:09', '1');
INSERT INTO `robot_scene` VALUES ('71', '30', 'zaici', null, null, null, null, null, '', null, '2018-01-04 16:03:23', '2018-01-11 17:08:46', '1');
INSERT INTO `robot_scene` VALUES ('74', '45', '酒店查询', null, null, '', '171', '8', '酒店查询', '0', null, '2018-03-21 11:04:35', '0');
INSERT INTO `robot_scene` VALUES ('75', '45', '天气', '${month}${city}的天气如何？', null, null, null, '8', '天气', '0', null, null, '0');
INSERT INTO `robot_scene` VALUES ('76', '45', '航班查询', null, null, '', null, '8', '航班查询', '0', null, '2018-03-21 16:09:17', '0');
INSERT INTO `robot_scene` VALUES ('77', '45', '订购酒店', null, null, '8', null, null, '订购酒店', '1', null, null, '0');
INSERT INTO `robot_scene` VALUES ('78', '45', '订购机票', null, null, '72', null, null, '订购机票', '1', null, null, '0');
INSERT INTO `robot_scene` VALUES ('80', '44', '订酒店', null, null, null, null, null, '', '0', '2018-02-02 10:59:24', '2018-02-02 10:59:24', '0');
INSERT INTO `robot_scene` VALUES ('81', '56', '预定酒店', null, null, '73', null, '', '', '0', '2018-02-11 09:15:16', '2018-02-11 16:11:51', '0');
INSERT INTO `robot_scene` VALUES ('82', '56', '出差小场景', null, null, '', '74', '', '', '0', '2018-02-11 09:49:54', '2018-02-11 10:02:35', '0');
INSERT INTO `robot_scene` VALUES ('83', '56', '预订机票', null, null, null, null, null, '', '0', '2018-02-11 10:06:44', '2018-02-11 10:06:44', '0');

-- ----------------------------
-- Table structure for `robot_scene_ask`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene_ask`;
CREATE TABLE `robot_scene_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `text` varchar(128) DEFAULT NULL COMMENT '提问语句',
  `intent` varchar(64) DEFAULT NULL COMMENT '场景名称',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COMMENT='用户提问信息收集表';

-- ----------------------------
-- Records of robot_scene_ask
-- ----------------------------
INSERT INTO `robot_scene_ask` VALUES ('1', '北京天气如何', '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('2', '深圳天气', '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('3', '提问1', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('4', '复杂不', '很复杂的场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('5', '绝对很复杂', '很复杂的场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('6', '再来一个提问', '很复杂的场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('7', '你好吗', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('8', '我很好', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('9', '一个', '新建', '1');
INSERT INTO `robot_scene_ask` VALUES ('10', '新的', '新建', '1');
INSERT INTO `robot_scene_ask` VALUES ('11', '场景', '新建', '1');
INSERT INTO `robot_scene_ask` VALUES ('12', '创建创建创建床架创建', '场景场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('13', '创建创建创建床架创建', '场景场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('15', '复杂不', '修改', '1');
INSERT INTO `robot_scene_ask` VALUES ('16', '绝对很复杂', '修改', '1');
INSERT INTO `robot_scene_ask` VALUES ('17', '再来一个提问', '修改', '1');
INSERT INTO `robot_scene_ask` VALUES ('18', '加一天', '场景场景哈哈哈哈', '0');
INSERT INTO `robot_scene_ask` VALUES ('19', '加一天', '场景场景哈哈哈哈', '0');
INSERT INTO `robot_scene_ask` VALUES ('20', '加上', '场景场景哈哈哈哈', '0');
INSERT INTO `robot_scene_ask` VALUES ('21', '加上', '场景场景哈哈哈哈', '0');
INSERT INTO `robot_scene_ask` VALUES ('22', '这个', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('23', '这个', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('24', '真的很复杂', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('25', '真的很复杂', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('26', '你信不', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('27', '你信不', '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('28', null, '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('29', null, '很复杂的', '0');
INSERT INTO `robot_scene_ask` VALUES ('30', '我的', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('31', '新建', '新建一个场景列表', '1');
INSERT INTO `robot_scene_ask` VALUES ('32', '场景列表', '新建一个场景列表', '1');
INSERT INTO `robot_scene_ask` VALUES ('33', '反反复复', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('34', '哎呀', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('35', '哈哈', '新建啦啦啦', '0');
INSERT INTO `robot_scene_ask` VALUES ('36', '你好哇', '新建啦啦啦', '0');
INSERT INTO `robot_scene_ask` VALUES ('37', '哎呦喂', '新建啦啦啦', '0');
INSERT INTO `robot_scene_ask` VALUES ('38', null, '场景场景汪汪汪', '0');
INSERT INTO `robot_scene_ask` VALUES ('39', null, '场景场景汪汪汪', '0');
INSERT INTO `robot_scene_ask` VALUES ('40', null, '你好啊啊啊啊啊', '0');
INSERT INTO `robot_scene_ask` VALUES ('41', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('42', '哎呀', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('43', '反反复复', '很复杂的问题撒的发生地方都是', '1');
INSERT INTO `robot_scene_ask` VALUES ('44', '哎呀', '很复杂的问题撒的发生地方都是', '1');
INSERT INTO `robot_scene_ask` VALUES ('45', '反反复复加速度计分开了撒大家发了深刻', '很复杂的问题撒的发生地方都是', '0');
INSERT INTO `robot_scene_ask` VALUES ('46', '哎呀', '很复杂的问题撒的发生地方都是', '0');
INSERT INTO `robot_scene_ask` VALUES ('47', '反反复复加速度计分开了撒大家发了深刻', '很复杂的问题撒的发生地方都是可视电话反馈', '1');
INSERT INTO `robot_scene_ask` VALUES ('48', '哎呀', '很复杂的问题撒的发生地方都是可视电话反馈', '1');
INSERT INTO `robot_scene_ask` VALUES ('49', '反反复复加速度计分开了撒大家发了深刻', '很复杂的问题撒的发生地方都是可视电话反馈', '0');
INSERT INTO `robot_scene_ask` VALUES ('50', '哎呀', '很复杂的问题撒的发生地方都是可视电话反馈', '0');
INSERT INTO `robot_scene_ask` VALUES ('51', '反反', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('52', '哎呀', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('53', '你好', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('54', '我很好', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('55', null, 'fsdf', '0');
INSERT INTO `robot_scene_ask` VALUES ('56', null, '12344444', '0');
INSERT INTO `robot_scene_ask` VALUES ('57', '复杂不', '修改', '0');
INSERT INTO `robot_scene_ask` VALUES ('58', '绝对很复杂', '修改', '0');
INSERT INTO `robot_scene_ask` VALUES ('59', '再来一个提问', '修改', '0');
INSERT INTO `robot_scene_ask` VALUES ('60', null, 'shuo', '0');
INSERT INTO `robot_scene_ask` VALUES ('61', null, '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('62', null, '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('63', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('64', null, '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('65', null, '', '1');
INSERT INTO `robot_scene_ask` VALUES ('66', null, 'FFFF', '1');
INSERT INTO `robot_scene_ask` VALUES ('67', null, 'FFFSDGGS', '1');
INSERT INTO `robot_scene_ask` VALUES ('68', null, 'g;sggsgdgss', '1');
INSERT INTO `robot_scene_ask` VALUES ('69', null, 'thsi;;sfn;gggss', '1');
INSERT INTO `robot_scene_ask` VALUES ('70', '我的', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('71', 'fsdgg', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('72', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('73', '哎呀', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('74', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('75', '哎呀', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('76', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('77', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('78', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('79', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('80', '反反复复', '很复杂的问题的文图', '1');
INSERT INTO `robot_scene_ask` VALUES ('81', '反反复复', '很复杂的问题的文图', '0');
INSERT INTO `robot_scene_ask` VALUES ('82', null, '场景1', '0');
INSERT INTO `robot_scene_ask` VALUES ('83', null, '创建2', '1');
INSERT INTO `robot_scene_ask` VALUES ('84', '怎么不能创建了呢', '上课', '0');
INSERT INTO `robot_scene_ask` VALUES ('85', null, '创建', '0');
INSERT INTO `robot_scene_ask` VALUES ('86', null, '怎么回事', '0');
INSERT INTO `robot_scene_ask` VALUES ('87', null, '成功不', '0');
INSERT INTO `robot_scene_ask` VALUES ('88', null, '带饭', '0');
INSERT INTO `robot_scene_ask` VALUES ('89', null, '这里是可以', '0');
INSERT INTO `robot_scene_ask` VALUES ('90', null, '新建场景 ', '1');
INSERT INTO `robot_scene_ask` VALUES ('91', null, '可以吗', '0');
INSERT INTO `robot_scene_ask` VALUES ('92', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('93', '哎呀', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('94', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('95', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('96', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('97', null, '现在', '1');
INSERT INTO `robot_scene_ask` VALUES ('98', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('99', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('100', null, '创建一个新的', '0');
INSERT INTO `robot_scene_ask` VALUES ('101', null, '哈哈哈新', '0');
INSERT INTO `robot_scene_ask` VALUES ('102', null, '这是app40的场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('103', null, '再次', '0');
INSERT INTO `robot_scene_ask` VALUES ('104', null, '创建一次', '0');
INSERT INTO `robot_scene_ask` VALUES ('105', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('106', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('107', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('108', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('109', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('110', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('111', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('112', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('113', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('114', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('115', '反反', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('116', '哎呀', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('117', '反反', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('118', '哎呀', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('119', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('120', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('121', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('122', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('123', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('124', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('125', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('126', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('127', '反反', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('128', '哎呀', '很复杂的问题', '1');
INSERT INTO `robot_scene_ask` VALUES ('129', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('130', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('131', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('132', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('133', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('134', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('135', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('136', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('137', '新建', '新建一个场景列表', '0');
INSERT INTO `robot_scene_ask` VALUES ('138', '场景列表', '新建一个场景列表', '0');
INSERT INTO `robot_scene_ask` VALUES ('139', '富商大贾', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('140', '放松放松', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('141', '富商大贾', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('142', '放松放松', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('143', 'sfgfgsdafsfa', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('144', 'fadfsdfsf', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('145', null, '一个新的场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('146', '刚刚建了词库', '一个新的场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('147', '现在应该是可用的', '一个新的场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('148', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('149', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('150', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('151', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('152', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('153', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('154', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('155', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('156', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('157', null, '现在', '0');
INSERT INTO `robot_scene_ask` VALUES ('158', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('159', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('160', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('161', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('162', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('163', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('164', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('165', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('166', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('167', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('168', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('169', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('170', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('171', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('172', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('173', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('174', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('175', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('176', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('177', '呜呜呜', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('178', '刚刚建了词库', '一个新的场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('179', '现在应该是可用的', '一个新的场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('180', '刚刚建了词库', '一个新的场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('181', '新建', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('182', '一个', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('183', '场景', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('184', 'hello', '场景名称', '1');
INSERT INTO `robot_scene_ask` VALUES ('185', 'hello', '场景名称', '1');
INSERT INTO `robot_scene_ask` VALUES ('186', '添加一行', '场景名称', '1');
INSERT INTO `robot_scene_ask` VALUES ('187', '北京天气如何', '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('188', '深圳天气', '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('189', null, '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('190', null, '天气', '1');
INSERT INTO `robot_scene_ask` VALUES ('191', '北京天气如何', '天气', '0');
INSERT INTO `robot_scene_ask` VALUES ('192', '深圳天气', '天气', '0');
INSERT INTO `robot_scene_ask` VALUES ('193', null, '天气', '0');
INSERT INTO `robot_scene_ask` VALUES ('194', null, '天气', '0');
INSERT INTO `robot_scene_ask` VALUES ('195', 'hello', '场景名称', '0');
INSERT INTO `robot_scene_ask` VALUES ('196', '添加一行', '场景名称', '0');
INSERT INTO `robot_scene_ask` VALUES ('197', '新建', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('198', '一个', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('199', '场景', '新建一个场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('200', '添加用户提问语料', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('201', '改bug陷入了瓶颈', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('202', '想哭', '新建场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('203', '添加用户提问语料', '新建场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('204', '改bug陷入了瓶颈', '新建场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('205', '新建', '新建一个场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('206', '一个', '新建一个场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('207', '场景', '新建一个场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('208', '哈哈提问', '差   到访技术的', '0');
INSERT INTO `robot_scene_ask` VALUES ('209', '大方', '再次新建', '0');
INSERT INTO `robot_scene_ask` VALUES ('210', '撒打算wd', '是防守打法', '1');
INSERT INTO `robot_scene_ask` VALUES ('211', '撒打算wd', '是防守打法', '0');
INSERT INTO `robot_scene_ask` VALUES ('212', '发的冯绍峰', '是防守打法', '0');
INSERT INTO `robot_scene_ask` VALUES ('213', '法法', '丰富的', '0');
INSERT INTO `robot_scene_ask` VALUES ('214', '大的', '孙菲菲东方闪电', '0');
INSERT INTO `robot_scene_ask` VALUES ('215', '发达', '孙菲菲东方闪电', '0');
INSERT INTO `robot_scene_ask` VALUES ('216', null, '发发发', '0');
INSERT INTO `robot_scene_ask` VALUES ('217', '富商大贾', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('218', '放松放松', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('219', 'sfgfgsdafsfa', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('220', 'fadfsdfsf', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('221', '访客打广告', '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('222', null, '新建一个', '1');
INSERT INTO `robot_scene_ask` VALUES ('223', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('224', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('225', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('226', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('227', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('228', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('229', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('230', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('231', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('232', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('233', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('234', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('235', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('236', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('237', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('238', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('239', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('240', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('241', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('242', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('243', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('244', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('245', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('246', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('247', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('248', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('249', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('250', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('251', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('252', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('253', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('254', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('255', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('256', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('257', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('258', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('259', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('260', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('261', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('262', '今天天气怎么样呢', '再一次', '1');
INSERT INTO `robot_scene_ask` VALUES ('263', '今天天气怎么样呢', '再一次', '0');
INSERT INTO `robot_scene_ask` VALUES ('264', null, 'niahoao', '1');
INSERT INTO `robot_scene_ask` VALUES ('265', null, 'niahoao', '1');
INSERT INTO `robot_scene_ask` VALUES ('266', null, 'niahoao', '1');
INSERT INTO `robot_scene_ask` VALUES ('267', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('268', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('269', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('270', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('271', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('272', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('273', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('274', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('275', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('276', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('277', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('278', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('279', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('280', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('281', null, 'niahoao', '1');
INSERT INTO `robot_scene_ask` VALUES ('282', null, 'niahoao', '0');
INSERT INTO `robot_scene_ask` VALUES ('283', '我要预订明天上海虹口区的五星级酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('284', '我明天要订深圳的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('285', '我要订上海五星级的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('286', '我明天要定广州4分以上的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('287', '我明天要定深圳湾', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('288', '我要预订明天上海虹口区的五星级酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('289', '我明天要订深圳的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('290', '我要订上海五星级的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('291', '我明天要定广州4分以上的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('292', '我明天要定深圳湾科技园海尚酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('293', null, '出差场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('294', null, '出差小场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('295', null, '出差小场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('296', '我明天要去上海出差', '出差小场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('297', '我要预订明天上海虹口区的五星级酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('298', '我明天要订深圳的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('299', '我要订上海五星级的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('300', '我明天要定广州4分以上的酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('301', '我明天要定深圳湾科技园海尚酒店', '预定酒店', '1');
INSERT INTO `robot_scene_ask` VALUES ('302', '我要明天从深圳到上海的机票', '预订机票', '0');
INSERT INTO `robot_scene_ask` VALUES ('303', '我明天要去深圳', '预订机票', '0');
INSERT INTO `robot_scene_ask` VALUES ('304', '我要到上海的经济舱', '预订机票', '0');
INSERT INTO `robot_scene_ask` VALUES ('305', '我要明天从上海到广州的商务舱', '预订机票', '0');
INSERT INTO `robot_scene_ask` VALUES ('306', '我要预订明天上海虹口区的五星级酒店', '预定酒店', '0');
INSERT INTO `robot_scene_ask` VALUES ('307', '我明天要订深圳的酒店', '预定酒店', '0');
INSERT INTO `robot_scene_ask` VALUES ('308', '我要订上海五星级的酒店', '预定酒店', '0');
INSERT INTO `robot_scene_ask` VALUES ('309', '我明天要定广州4分以上的酒店', '预定酒店', '0');
INSERT INTO `robot_scene_ask` VALUES ('310', '我明天要定深圳湾科技园海尚酒店', '预定酒店', '0');
INSERT INTO `robot_scene_ask` VALUES ('311', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('312', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('313', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('320', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('321', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('322', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('323', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('324', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('325', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('326', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('327', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('328', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('329', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('330', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('331', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('332', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('333', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('334', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('335', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('336', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('337', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('338', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('339', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('340', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('341', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('342', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('343', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('344', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('345', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('346', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('347', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('348', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('349', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('350', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('351', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('352', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('353', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('354', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('355', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('356', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('357', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('358', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('359', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('360', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('361', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('368', '想知道深圳到南昌的火车票', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('369', '更快更好', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('370', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '1');
INSERT INTO `robot_scene_ask` VALUES ('371', '想知道深圳到南昌的火车票', '新家场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('372', '更快更好', '新家场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('373', '刷卡机东方航空sad好烦卡萨丁水电费客家话', '新家场景', '0');
INSERT INTO `robot_scene_ask` VALUES ('374', null, '酒店查询', '1');
INSERT INTO `robot_scene_ask` VALUES ('375', null, '酒店查询', '0');
INSERT INTO `robot_scene_ask` VALUES ('382', null, '航班查询', '0');

-- ----------------------------
-- Table structure for `robot_scene_ask_entitys`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene_ask_entitys`;
CREATE TABLE `robot_scene_ask_entitys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ask_id` int(11) DEFAULT NULL COMMENT 'ask_id',
  `start` int(8) DEFAULT NULL COMMENT '开始截取位置',
  `end` int(8) DEFAULT NULL COMMENT '最后截取位置',
  `value` varchar(128) DEFAULT NULL COMMENT '截取内容',
  `entity` varchar(64) DEFAULT NULL COMMENT '词库名称',
  `del_flag` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8 COMMENT='用户提问信息收集词库表';

-- ----------------------------
-- Records of robot_scene_ask_entitys
-- ----------------------------
INSERT INTO `robot_scene_ask_entitys` VALUES ('1', '1', '2', '3', '天气', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('2', '2', '1', '3', '哈哈', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('3', '9', '-1', '1', '这里', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('4', '9', '-1', '6', '有关键词的词库', 'youguanjiancideciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('5', '10', '-1', '6', '有关键词的词库', 'youguanjiancideciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('6', '25', '-1', '1', '这里', 'zheili', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('7', '35', '-1', '1', '这里', 'zheili', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('8', '35', '-1', '5', '新建一个词库', 'xinjianyigeciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('9', '36', '-1', '2', '词库3', 'ciku3', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('10', '36', '-1', '2', '词库3', 'ciku3', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('11', '36', '-1', '5', '新创建的词库', 'xinchuangjiandeciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('12', '37', '-1', '6', '有关键词的词库', 'youguanjiancideciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('13', '45', '14', '18', '发了深刻', 'ciku3', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('14', '45', '6', '11', '度计分开了', 'youguanjiancideciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('15', '47', '14', '18', '发了深刻', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('16', '47', '6', '11', '度计分开了', 'youguanjiancideciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('17', '49', '14', '17', '发了深刻', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('18', '49', '6', '10', '度计分开了', 'youguanjiancideciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('19', '49', '12', '14', '大家发', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('20', '49', '4', '9', '加速度计分开', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('21', '63', '0', '1', '今天', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('22', '63', '4', '6', '怎么样', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('23', '63', '2', '3', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('24', '70', '1', '1', '的', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('25', '71', '2', '4', 'dgg', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('26', '72', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('27', '74', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('28', '75', '0', '1', '哎呀', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('29', '75', '0', '1', '哎呀', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('30', '75', '0', '1', '哎呀', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('31', '76', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('32', '77', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('33', '78', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('34', '79', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('35', '80', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('36', '81', '2', '3', '复复', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('37', '117', '0', '0', '反', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('38', '117', '0', '0', '反', 'xinjianyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('39', '126', '0', '2', '呜呜呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('40', '126', '0', '0', '呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('41', '127', '0', '0', '反', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('42', '136', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('43', '136', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('44', '136', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('45', '139', '2', '3', '大贾', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('46', '140', '0', '1', '放松', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('47', '141', '2', '3', '大贾', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('48', '142', '0', '1', '放松', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('49', '143', '5', '6', 'sd', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('50', '143', '7', '7', 'a', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('51', '144', '5', '8', 'dfsf', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('52', '146', '4', '5', '词库', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('53', '146', '1', '3', '刚建了', 'kebuxing', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('54', '147', '5', '7', '可用的', 'meiyou', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('55', '147', '1', '4', '在应该是', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('56', '148', '2', '3', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('57', '152', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('58', '152', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('59', '152', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('60', '156', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('61', '156', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('62', '156', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('63', '158', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('64', '159', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('65', '159', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('66', '161', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('67', '161', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('68', '161', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('69', '162', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('70', '163', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('71', '163', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('72', '165', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('73', '165', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('74', '165', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('75', '166', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('76', '167', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('77', '167', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('78', '169', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('79', '169', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('80', '169', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('81', '170', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('82', '171', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('83', '171', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('84', '173', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('85', '173', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('86', '173', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('87', '174', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('88', '175', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('89', '175', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('90', '177', '0', '1', '呜呜', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('91', '177', '0', '0', '呜', 'chuangjianyigexindeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('92', '177', '0', '0', '呜', 'zaicichuangjian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('93', '178', '4', '5', '词库', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('94', '178', '1', '3', '刚建了', 'kebuxing', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('95', '179', '5', '7', '可用的', 'meiyou', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('96', '179', '1', '4', '在应该是', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('97', '180', '4', '5', '词库', 'ciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('98', '180', '1', '3', '刚建了', 'kebuxing', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('99', '182', '1', '1', '个', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('100', '183', '1', '1', '景', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('101', '184', '0', '4', 'hello', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('102', '185', '0', '4', 'hello', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('103', '186', '2', '3', '一行', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('104', '186', '0', '2', '添加一', 'zheishiyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('105', '186', '3', '3', '行', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('106', '187', '2', '3', '天气', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('107', '187', '4', '5', '如何', 'paoxie', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('108', '187', '1', '5', '京天气如何', 'haha', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('109', '188', '-1', '0', '哈哈', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('110', '191', '2', '3', '天气', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('111', '191', '4', '5', '如何', 'paoxie', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('112', '191', '1', '5', '京天气如何', 'haha', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('113', '192', '-1', '0', '哈哈', 'tianqi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('114', '195', '0', '4', 'hello', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('115', '196', '2', '3', '一行', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('116', '196', '0', '2', '添加一', 'zheishiyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('117', '196', '3', '3', '行', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('118', '198', '1', '1', '个', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('119', '199', '1', '1', '景', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('120', '200', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('121', '201', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('122', '201', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('123', '203', '6', '7', '语料', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('124', '204', '1', '8', 'bug陷入了瓶颈', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('125', '204', '7', '7', '瓶', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('126', '206', '1', '1', '个', 'zheishiyigeciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('127', '207', '1', '1', '景', 'xinjianyige', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('128', '208', '2', '3', '提问', 'zheishiyigeciku', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('129', '211', '2', '4', '算wd', 'zheishiyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('130', '212', '2', '4', '冯绍峰', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('131', '212', '0', '1', '发的', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('132', '214', '0', '1', '大的', 'zheishiyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('133', '215', '0', '1', '发达', 'zheishiyigeciku', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('134', '215', '1', '1', '达', 'xinjianyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('135', '215', '0', '1', '发达', 'zheishiyige', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('136', '217', '2', '3', '大贾', 'zheili', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('137', '218', '0', '1', '放松', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('138', '219', '5', '6', 'sd', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('139', '219', '7', '7', 'a', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('140', '220', '5', '8', 'dfsf', 'ciku3', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('141', '221', '2', '4', '打广告', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('142', '221', '2', '4', '打广告', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('143', '221', '2', '4', '打广告', 'dierge', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('144', '223', '9', '11', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('145', '223', '6', '8', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('146', '225', '2', '3', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('147', '226', '9', '11', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('148', '226', '6', '8', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('149', '228', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('150', '228', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('151', '230', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('152', '231', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('153', '232', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('154', '233', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('155', '234', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('156', '234', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('157', '236', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('158', '236', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('159', '238', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('160', '238', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('161', '240', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('162', '240', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('163', '242', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('164', '242', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('165', '244', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('166', '244', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('167', '246', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('168', '246', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('169', '248', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('170', '248', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('171', '250', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('172', '251', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('173', '251', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('174', '253', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('175', '253', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('176', '255', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('177', '255', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('178', '257', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('179', '257', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('180', '259', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('181', '260', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('182', '260', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('183', '262', '2', '4', '天气', 'heiya', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('184', '263', '2', '4', '天气', 'heiya', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('185', '267', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('186', '267', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('187', '269', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('188', '269', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('189', '271', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('190', '271', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('191', '273', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('192', '273', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('193', '275', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('194', '275', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('195', '277', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('196', '277', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('197', '279', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('198', '279', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('199', '283', '4', '6', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('200', '283', '6', '8', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('201', '283', '8', '11', '虹口区', 'diqu', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('202', '283', '12', '15', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('203', '284', '5', '7', '深圳', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('204', '284', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('205', '285', '3', '5', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('206', '285', '5', '8', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('207', '286', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('208', '286', '5', '7', '广州', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('209', '286', '7', '11', '4分以上', 'jiudianpingfen', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('210', '288', '4', '6', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('211', '288', '6', '8', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('212', '288', '8', '11', '虹口区', 'diqu', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('213', '288', '12', '15', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('214', '289', '5', '7', '深圳', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('215', '289', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('216', '290', '3', '5', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('217', '290', '5', '8', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('218', '291', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('219', '291', '5', '7', '广州', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('220', '291', '7', '11', '4分以上', 'jiudianpingfen', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('221', '292', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('222', '292', '5', '15', '深圳湾科技园海尚酒店', 'jiudianmingcheng', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('223', '296', '1', '3', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('224', '296', '5', '7', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('225', '297', '4', '6', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('226', '297', '6', '8', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('227', '297', '8', '11', '虹口区', 'diqu', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('228', '297', '12', '15', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('229', '298', '5', '7', '深圳', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('230', '298', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('231', '299', '3', '5', '上海', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('232', '299', '5', '8', '五星级', 'jiudianxingji', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('233', '300', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('234', '300', '5', '7', '广州', 'chengshi', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('235', '300', '7', '11', '4分以上', 'jiudianpingfen', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('236', '301', '1', '3', '明天', 'shijian', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('237', '301', '5', '15', '深圳湾科技园海尚酒店', 'jiudianmingcheng', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('238', '302', '2', '4', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('239', '302', '5', '7', '深圳', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('240', '302', '8', '10', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('241', '303', '5', '7', '深圳', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('242', '303', '1', '3', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('243', '304', '3', '5', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('244', '304', '6', '9', '经济舱', 'jicangleixing', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('245', '305', '2', '4', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('246', '305', '5', '7', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('247', '305', '8', '10', '广州', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('248', '305', '11', '14', '商务舱', 'jicangleixing', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('249', '306', '4', '6', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('250', '306', '6', '8', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('251', '306', '8', '11', '虹口区', 'diqu', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('252', '306', '12', '15', '五星级', 'jiudianxingji', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('253', '307', '5', '7', '深圳', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('254', '307', '1', '3', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('255', '308', '3', '5', '上海', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('256', '308', '5', '8', '五星级', 'jiudianxingji', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('257', '309', '1', '3', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('258', '309', '5', '7', '广州', 'chengshi', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('259', '309', '7', '11', '4分以上', 'jiudianpingfen', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('260', '310', '5', '15', '深圳湾科技园海尚酒店', 'jiudianmingcheng', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('261', '310', '1', '3', '明天', 'shijian', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('262', '311', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('263', '311', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('264', '313', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('273', '320', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('274', '320', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('275', '322', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('276', '322', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('277', '323', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('278', '323', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('279', '325', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('280', '325', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('281', '326', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('282', '326', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('283', '328', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('284', '328', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('285', '329', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('286', '329', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('287', '331', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('288', '331', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('289', '332', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('290', '332', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('291', '334', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('292', '334', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('293', '335', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('294', '335', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('295', '337', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('296', '337', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('297', '338', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('298', '338', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('299', '340', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('300', '340', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('301', '341', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('302', '341', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('303', '343', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('304', '343', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('305', '344', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('306', '344', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('307', '346', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('308', '346', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('309', '347', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('310', '347', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('311', '349', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('312', '349', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('313', '350', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('314', '350', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('315', '352', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('316', '352', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('317', '353', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('318', '353', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('319', '355', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('320', '355', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('321', '356', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('322', '356', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('323', '358', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('324', '358', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('325', '359', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('326', '359', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('327', '361', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('328', '361', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('337', '368', '9', '12', '火车票', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('338', '368', '6', '9', '南昌的', 'aiyawei', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('339', '370', '18', '21', '客家话', 'woshiciku1', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('340', '370', '18', '21', '客家话', 'zheishiciku2', '1');
INSERT INTO `robot_scene_ask_entitys` VALUES ('341', '371', '9', '12', '火车票', 'woshiciku1', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('342', '371', '6', '9', '南昌的', 'aiyawei', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('343', '373', '18', '21', '客家话', 'woshiciku1', '0');
INSERT INTO `robot_scene_ask_entitys` VALUES ('344', '373', '18', '21', '客家话', 'zheishiciku2', '0');

-- ----------------------------
-- Table structure for `robot_scene_mark`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene_mark`;
CREATE TABLE `robot_scene_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `app_id` int(11) DEFAULT NULL COMMENT '应用id',
  `int_id` int(11) DEFAULT NULL COMMENT '意图id',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `ask` varchar(128) DEFAULT NULL COMMENT '问题',
  `y_hint` varchar(64) DEFAULT NULL COMMENT '肯定回答的提示 ',
  `y_action` varchar(64) DEFAULT NULL COMMENT '肯定回答触发的动作',
  `on_hint` varchar(64) DEFAULT NULL COMMENT '输出否定回答的提示',
  `on_action` varchar(64) DEFAULT NULL COMMENT '输出否定回答触发的动作',
  `in_hint` varchar(64) DEFAULT NULL COMMENT '输入否定回答的提示',
  `in_action` varchar(64) DEFAULT NULL COMMENT '输入否定回答触发的动作',
  `lifecycle` varchar(8) DEFAULT NULL COMMENT '生命周期',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COMMENT='意图标识表';

-- ----------------------------
-- Records of robot_scene_mark
-- ----------------------------
INSERT INTO `robot_scene_mark` VALUES ('1', '44', '43', '出差', '是否出差', null, null, null, null, null, null, '3', '1');
INSERT INTO `robot_scene_mark` VALUES ('2', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('3', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('4', '44', '43', '航班', '南航', null, null, null, null, null, null, '3', '1');
INSERT INTO `robot_scene_mark` VALUES ('5', '44', '43', '出差', '是否出差', null, null, null, null, null, null, '3', '1');
INSERT INTO `robot_scene_mark` VALUES ('6', '44', '43', '航班', '南航', null, null, null, null, null, null, '3', '1');
INSERT INTO `robot_scene_mark` VALUES ('7', '44', '43', '再见', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('8', '45', '65', 'trip', '您是不是要去出差呢？', '', '出差申请', null, null, '想要订购酒店，必须先执行出差申请哦', '酒店查询', '5', '0');
INSERT INTO `robot_scene_mark` VALUES ('9', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('10', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('11', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('12', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('13', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('14', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('15', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('16', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('17', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('18', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('19', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('20', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('21', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('22', '44', '43', '状态', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('23', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('24', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('25', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('26', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('27', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('28', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('29', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('30', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('31', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('32', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('33', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('34', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('35', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('36', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('37', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('38', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('39', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('40', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('41', '44', '44', '哈哈', '好笑', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('42', '44', '44', '天气', '晴朗', null, null, null, null, null, null, '5', '1');
INSERT INTO `robot_scene_mark` VALUES ('43', '44', '44', 'uyu', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('44', '44', '44', 'uyu', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('45', '44', '44', 'uyu', '', null, null, null, null, null, null, '', '1');
INSERT INTO `robot_scene_mark` VALUES ('46', '44', '44', 'uyu', '', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '', '1');
INSERT INTO `robot_scene_mark` VALUES ('47', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('48', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('49', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('50', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('51', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('52', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('53', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('54', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('55', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('56', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('57', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('58', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('59', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('60', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('61', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('62', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('63', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('64', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('65', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('66', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('67', '44', '44', 'uyu', '', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '', '1');
INSERT INTO `robot_scene_mark` VALUES ('68', '44', '44', 'uyu', '', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '', '0');
INSERT INTO `robot_scene_mark` VALUES ('69', '44', '44', '状态啊啊', '房东', '精分', 'niahoao', '方式', 'niahoao', '烦死哒', '新家场景', '1', '0');
INSERT INTO `robot_scene_mark` VALUES ('70', '45', '74', 'qureyHotel', '请问您是要出差么？', '出差', '出差申请', null, null, null, null, null, '1');
INSERT INTO `robot_scene_mark` VALUES ('72', '45', '65', 'trip-filght', '您是不是要去出差呢？', '', '出差申请', null, null, '想要订购机票，必须先执行出差申请哦', '航班查询', '5', '0');
INSERT INTO `robot_scene_mark` VALUES ('73', '56', '82', '出差', '', '', '', '', '', '', '', '', '1');
INSERT INTO `robot_scene_mark` VALUES ('74', '56', '82', '出差', '', '', '', '', '', '', '', '', '0');
INSERT INTO `robot_scene_mark` VALUES ('75', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('76', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('77', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('78', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('79', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('80', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('81', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('82', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('83', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('84', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('85', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('86', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('87', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('88', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('89', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('90', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('91', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('92', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('93', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('94', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('95', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('96', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('97', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('98', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('99', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('100', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('101', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('102', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('103', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('104', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('105', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('106', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('107', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('108', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('109', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('110', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('111', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('112', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('113', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('114', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('115', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('116', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('117', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('118', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('119', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('120', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('121', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('122', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('123', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('124', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('125', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('126', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('127', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('128', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('129', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('130', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('131', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('132', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('133', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('134', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('135', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('136', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('137', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('138', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('139', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('140', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('141', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('142', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('143', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('144', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('145', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('146', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('147', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('148', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('149', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('160', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('161', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('162', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '1');
INSERT INTO `robot_scene_mark` VALUES ('163', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('164', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '1');
INSERT INTO `robot_scene_mark` VALUES ('165', '44', '43', '状态1', '问题1', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '1', '0');
INSERT INTO `robot_scene_mark` VALUES ('166', '44', '43', '状态2', '问题2', '是否要出差', '出差', '预定酒店先要确定是否出差', '查询酒店', '预定酒店先要确定是否出差', '查询酒店', '2', '0');
INSERT INTO `robot_scene_mark` VALUES ('167', '44', '43', '状态1', '问题1', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_mark` VALUES ('168', '44', '43', '状态2', '问题2', null, null, null, null, null, null, '2', '0');
INSERT INTO `robot_scene_mark` VALUES ('169', '44', '43', '状态3', '问题', null, null, null, null, null, null, '2', '0');
INSERT INTO `robot_scene_mark` VALUES ('170', '45', '74', 'qureyHotel', '请问您是要出差么？', '出差', '出差申请', null, null, null, null, null, '1');
INSERT INTO `robot_scene_mark` VALUES ('171', '45', '74', 'qureyHotel', '请问您是要出差么？', '出差', '出差申请', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `robot_scene_mic_service`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene_mic_service`;
CREATE TABLE `robot_scene_mic_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `int_id` int(11) DEFAULT NULL COMMENT '意图id',
  `int_name` varchar(64) DEFAULT NULL COMMENT '意图名称',
  `action_name` varchar(64) DEFAULT NULL COMMENT '微服务动作名称',
  `mic_id` int(11) DEFAULT NULL COMMENT '微服务接口id',
  `type` int(1) DEFAULT NULL COMMENT '两种类型：0判断微服务结果内容，1判断微服务结果有无',
  `y_result` varchar(128) DEFAULT NULL COMMENT '有结果执行的动作',
  `n_result` varchar(128) DEFAULT NULL COMMENT '没有结果执行的动作',
  `content` varchar(500) DEFAULT NULL COMMENT '微服务返回结果与相应的动作',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of robot_scene_mic_service
-- ----------------------------
INSERT INTO `robot_scene_mic_service` VALUES ('1', '43', '新家场景', '查询酒店微服务', '5', '1', 'action1', 'action2', null, '1');
INSERT INTO `robot_scene_mic_service` VALUES ('2', '42', '查询酒店', '查询酒店微服务', '5', '0', null, null, '[{\"message\":\"酒店真好\",\"action\":\"行动1\"},{\"message\":\"酒店真好2\",\"action\":\"行动2\"}]', '0');
INSERT INTO `robot_scene_mic_service` VALUES ('3', '43', '新家场景', '查询酒店微服务', '5', '1', 'action1', 'action2', null, '1');
INSERT INTO `robot_scene_mic_service` VALUES ('4', '43', '新家场景', '查询酒店微服务', '2', '0', 'action1', 'action', null, '0');
INSERT INTO `robot_scene_mic_service` VALUES ('5', '78', '订购机票', '订购机票', null, '0', '航班查询', null, null, '0');
INSERT INTO `robot_scene_mic_service` VALUES ('6', '74', '酒店查询', '酒店查询', null, '0', '酒店查询', null, null, '1');
INSERT INTO `robot_scene_mic_service` VALUES ('7', '74', '酒店查询', '酒店查询', null, '0', '酒店查询', '', null, '1');
INSERT INTO `robot_scene_mic_service` VALUES ('8', '74', '酒店查询', '酒店查询', null, '0', '酒店查询', '', null, '0');
INSERT INTO `robot_scene_mic_service` VALUES ('9', '76', '航班查询', '', null, '1', '', '', null, '0');

-- ----------------------------
-- Table structure for `robot_scene_slot`
-- ----------------------------
DROP TABLE IF EXISTS `robot_scene_slot`;
CREATE TABLE `robot_scene_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'slot id',
  `int_id` int(11) DEFAULT NULL COMMENT '场景id',
  `flag` varchar(8) DEFAULT NULL COMMENT '参数是否必要标识 ',
  `dict_name` varchar(32) DEFAULT NULL COMMENT '参数类型 词库名称',
  `type_name` varchar(32) DEFAULT NULL COMMENT '参数名称 拼音',
  `message` varchar(500) DEFAULT NULL COMMENT '提示信息',
  `def_value` varchar(500) DEFAULT NULL COMMENT '默认取值',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  `can_reset` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`can_reset`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COMMENT='场景动作表';

-- ----------------------------
-- Records of robot_scene_slot
-- ----------------------------
INSERT INTO `robot_scene_slot` VALUES ('2', '3', '1', '报表类型', 'report_type', '您需要什么报表呢？', '财务报表', '2017-12-23 11:53:58', '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('3', '3', '1', '时间', 'date', '您需要哪个月份的呢？', '当月', '2017-12-23 11:53:58', '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('4', '11', null, '好吗', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('5', '11', null, '吗', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('6', '11', null, '很好', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('7', '11', null, '我', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('8', '11', null, null, 'aheli', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('9', '12', null, '一个', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('10', '12', null, '个', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('11', '12', null, '新的', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('12', '12', null, null, 'zidingyi', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('13', '16', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('14', '16', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('15', '21', null, '哈', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('16', '21', null, '呦喂', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('17', '21', null, '好哇', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('18', '21', null, '哈', 'xinjianyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('19', '21', null, '好哇', 'xinchuangjiandeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('20', '1', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('21', '1', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('22', '16', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('23', '16', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('24', '16', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('25', '16', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('26', '16', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('27', '16', null, '有关键词的词库', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('28', '16', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('29', '16', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('30', '16', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('31', '16', null, '有关键词的词库', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('32', '16', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('33', '16', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('34', '16', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('35', '16', null, '有关键词的词库', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('36', '16', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('37', '16', null, '第二个', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('38', '21', null, '一个', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('39', '21', null, '个', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('40', '21', null, '新的', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('41', '21', null, null, 'zidingyi', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('42', '21', null, '好吗', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('43', '21', null, '吗', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('44', '21', null, '很好', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('45', '21', null, '我', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('46', '21', null, null, 'aheli', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('47', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('48', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('49', '44', null, '我是词库1', 'woshiciku1', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('50', '44', null, '我是词库1', 'woshiciku1', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('51', '44', null, '黑鸭', 'heiya', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('52', '22', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('53', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('54', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('55', '1', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('56', '1', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('57', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('58', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('59', '1', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('60', '1', null, '创建创建创建床架创建', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('61', '1', null, null, 'cansu', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('62', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('63', '1', '1', null, null, 'adshfkjsdahf', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('64', '1', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('65', '1', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('66', '1', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('67', '1', null, '再次创建', 'zaicichuangjian', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('68', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('69', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('70', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('71', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('72', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('73', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('74', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('75', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('76', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('77', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('78', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('79', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('80', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('81', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('82', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('83', '12', null, '这里萨卡斯绝代风华', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('84', '12', null, '这里萨卡斯绝代风华', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('85', '12', null, '新建一个词库', 'xinjianyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('86', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('87', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('88', '35', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('89', '35', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('90', '35', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('91', '35', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('92', '35', null, '再次创建', 'zaicichuangjian', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('93', '10', null, '这里萨卡斯绝代风华', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('94', '35', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('95', '35', null, '再次创建', 'zaicichuangjian', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('96', '35', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('97', '35', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('98', '35', null, '创建一个新的词库', 'chuangjianyigexindeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('99', '35', null, '再次创建', 'zaicichuangjian', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('100', '20', null, '这里萨卡斯绝代风华', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('101', '11', null, '好吗', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('102', '11', null, '吗', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('103', '11', null, '很好', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('104', '11', null, '我', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('105', '11', null, null, 'aheli', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('106', '11', null, '好吗', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('107', '11', null, '吗', 'youguanjiancideciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('108', '11', null, '很好', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('109', '11', null, '我', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('110', '11', null, null, 'aheli', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('111', '63', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('112', '63', null, '可不行', 'kebuxing', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('113', '63', null, '没有', 'meiyou', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('114', '44', null, '黑鸭', 'heiya', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('115', '35', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('116', '35', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('117', '35', null, '创建一个新的词库', 'chuangjianyigexindeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('118', '35', null, '再次创建', 'zaicichuangjian', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('119', '22', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('120', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('121', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('122', '22', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('123', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('124', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('125', '22', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('126', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('127', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('128', '22', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('129', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('130', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('131', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('132', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('133', '63', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('134', '63', null, '可不行', 'kebuxing', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('135', '63', null, '没有', 'meiyou', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('136', '63', null, '词库', 'ciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('137', '63', null, '可不行', 'kebuxing', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('138', '63', null, '没有', 'meiyou', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('139', '64', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('140', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('141', '64', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('142', '57', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('143', '57', null, null, 'areyouok', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('144', '57', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('145', '57', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('146', '57', null, null, 'areyouok', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('147', '57', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('148', '57', null, '这是一个', 'zheishiyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('149', '65', null, '起始时间', 'date', '请问您准备哪一天出差？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('150', '65', null, '目标城市', 'address', '请问您的出差地点是哪里呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('151', '2', null, '是否提交申请', 'comfirm', '是否提交${date}到${address}的出差申请？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('153', '2', null, '跑鞋', 'paoxie', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('154', '2', null, '哈哈', 'haha', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('156', '2', null, '跑鞋', 'paoxie', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('157', '2', null, '哈哈', 'haha', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('158', '57', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('159', '57', null, null, 'areyouok', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('160', '57', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('161', '57', null, '这是一个', 'zheishiyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('162', '64', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('163', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('164', '64', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('165', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('166', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('167', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('168', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('169', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('170', '64', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('171', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('172', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('173', '64', null, null, '发生的法兰克福', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('174', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('175', '22', null, '这是一个', 'zheishiyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('176', '22', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('177', '22', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('178', '69', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('179', '70', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('180', '70', null, '这是一个', 'zheishiyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('181', '70', null, '新建一个', 'xinjianyige', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('182', '64', null, '这 啦啦', 'zheishiyigeciku', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('183', '11', null, '我', 'zheili', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('184', '11', null, null, 'aheli', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('185', '11', null, '第二个', 'dierge', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('186', '11', null, '词库3', 'ciku3', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('187', '11', null, null, 'hhhh', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('188', '43', null, null, null, null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('189', '43', null, '我是词库1', 'woshiciku1', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('190', '43', null, '哎呀喂', 'aiyawei', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('191', '75', 'true', '起始时间', 'date', '请问你要查询哪一天的天气呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('192', '75', 'true', '目标城市', 'city', '请问你要查询哪个城市的天气呢？', null, null, '0', '1');
INSERT INTO `robot_scene_slot` VALUES ('193', '74', 'true', '目标城市', 'hotelCity', '请问你要预订哪个城市的酒店呢？', null, null, '1', '1');
INSERT INTO `robot_scene_slot` VALUES ('194', '74', 'true', '目标区域', 'hotelArea', '请问你要预订哪个区的酒店呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('195', '76', 'true', '起始时间', 'departureDate', '请问你要订哪一天的飞机呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('196', '76', 'true', '出发城市', 'departureCity', '请问你要订从哪个城市出发航班？', null, null, '1', '1');
INSERT INTO `robot_scene_slot` VALUES ('197', '76', 'true', '目标城市', 'terminusCity', '请问你想要订的航班目标城市是哪里？', null, null, '1', '1');
INSERT INTO `robot_scene_slot` VALUES ('198', '74', 'true', '起始时间', 'departureDate', '请问你要哪一天入住呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('199', '77', 'true', '起始时间', 'arrivalDate', '请问你的到店日期是哪一天呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('200', '77', 'true', '酒店名称', 'hotelName', '请问你要入住哪家酒店呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('201', '78', 'true', '起始时间', 'departureDate', '请问你要订哪一天的机票呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('202', '78', 'true', '航班号', 'flightNumber', '请问你要订的飞机航班号是多少？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('203', '43', null, '这是词库2', 'zheishiciku2', null, null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('204', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('205', '77', 'true', '目标城市', 'hotelCity', '请问你要入住哪个城市的酒店？', null, null, '0', '1');
INSERT INTO `robot_scene_slot` VALUES ('206', '78', 'true', '目标城市', 'terminusCity', '请问您要订的航班目标城市是哪里？', null, null, '0', '1');
INSERT INTO `robot_scene_slot` VALUES ('207', '78', null, '出发城市', 'departureCity', '请问你要订从哪个城市出发的航班？', null, null, '0', '1');
INSERT INTO `robot_scene_slot` VALUES ('208', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('209', '43', 'false', '哎呀喂', 'aiyawei', '-', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('210', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('211', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('212', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('213', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('214', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('215', '43', 'false', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('216', '43', 'false', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('217', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('218', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('219', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('220', '43', 'false', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('221', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('222', '43', 'false', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('223', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('224', '43', 'true', null, null, '-', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('225', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('226', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('227', '43', 'false', null, null, '-', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('228', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('229', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('230', '43', 'true', null, null, '', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('231', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('232', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('233', '43', 'true', null, null, '', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('234', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('235', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('236', '43', 'false', '这是词库2', 'zheishiciku2', '', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('243', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('244', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('245', '43', 'false', '这是词库2', 'zheishiciku2', '', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('246', '43', 'true', '这是词库2', 'zheishiciku2', 'haha', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('247', '43', 'true', '哎呀喂', 'aiyawei', 'sd', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('248', '43', 'false', '这是词库2', 'zheishiciku2', '', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('249', '74', 'true', '目标城市', 'hotelCity', '请问你要预订哪个城市的酒店呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('250', '74', 'true', '目标区域', 'hotelArea', '请问你要预订哪个区的酒店呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('251', '74', 'true', '起始时间', 'departureDate', '请问你要哪一天入住呢？', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('252', '74', 'true', '酒店房型', 'jiudianfangxing', '', null, null, '1', '0');
INSERT INTO `robot_scene_slot` VALUES ('253', '74', 'true', '目标城市', 'hotelCity', '请问你要预订哪个城市的酒店呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('254', '74', 'true', '目标区域', 'hotelArea', '请问你要预订哪个区的酒店呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('255', '74', 'true', '起始时间', 'departureDate', '请问你要哪一天入住呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('256', '74', 'true', '酒店房型', 'jiudianfangxing', '请问你要住什么房型呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('287', '76', 'true', '起始时间', 'departureDate', '请问你要订哪一天的飞机呢？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('288', '76', 'true', '出发城市', 'departureCity', '请问你要订从哪个城市出发航班？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('289', '76', 'true', '目标城市', 'terminusCity', '请问你想要订的航班目标城市是哪里？', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('290', '76', 'true', '航空公司', 'hangkonggongsi', '请问你要选择什么航空公司呢', null, null, '0', '0');
INSERT INTO `robot_scene_slot` VALUES ('291', '76', 'true', '舱等', 'cangdeng', '请问你想坐的舱等是哪个等级呢', null, null, '0', '0');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `name` varchar(32) DEFAULT NULL COMMENT '权限名称',
  `menu_name` varchar(64) DEFAULT NULL COMMENT '菜单名称',
  `parent_menu` smallint(6) DEFAULT NULL COMMENT '父菜单id',
  `menu_router` varchar(64) DEFAULT NULL COMMENT '菜单路由',
  `sort` smallint(6) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='系统基本权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'ROLE_SYS_MODEL', '模型管理', null, 'Apps', '10');
INSERT INTO `sys_menu` VALUES ('2', 'ROLE_SYS_FRAG', '碎片化平台', null, 'fragmentation', '20');
INSERT INTO `sys_menu` VALUES ('3', 'ROLE_SYS_SERVICE', '微服务管理', null, 'micro_services', '30');
INSERT INTO `sys_menu` VALUES ('4', 'ROLE_SYS_FLOW', '流程管理', null, 'flow', '40');
INSERT INTO `sys_menu` VALUES ('5', 'ROLE_SYS_POWER', '权限管理', null, 'Auth', '50');
INSERT INTO `sys_menu` VALUES ('6', 'ROLE_SYS_DATA', '数据安全管理', null, 'information', '60');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `name` varchar(64) DEFAULT NULL COMMENT '机构名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `parent_ids` varchar(32) DEFAULT NULL COMMENT '所有父级id',
  `type` varchar(32) DEFAULT NULL COMMENT 'Office类型',
  `expand` int(1) DEFAULT '0' COMMENT '是否有子菜单，0，没有；1有',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '微构科技', '0', '0', '1', '1', 'admin', '2017-12-26 14:21:52', '2018-01-19 09:52:05', '0');
INSERT INTO `sys_office` VALUES ('2', '销售部', '1', '1,0', '2', null, 'admin', '2017-12-26 14:21:52', '2018-03-02 11:19:13', '0');
INSERT INTO `sys_office` VALUES ('3', '大数据部', '1', '1,0', '2', null, 'mao', '2018-01-18 15:41:20', '2018-01-19 16:28:50', '0');
INSERT INTO `sys_office` VALUES ('4', null, '1', '0,1', '2', '0', 'admin', '2018-01-18 16:47:27', '2018-01-18 16:47:27', '1');
INSERT INTO `sys_office` VALUES ('5', '人力资源部', '1', '1,0', '2', null, 'admin', '2018-01-18 16:59:08', '2018-01-19 16:28:37', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `enname` varchar(64) DEFAULT NULL COMMENT '角色名称（英文）',
  `name` varchar(16) DEFAULT NULL COMMENT '角色名',
  `data_scope` varchar(8) DEFAULT NULL COMMENT '数据等级',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='权限配置信息';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'sys_admin', '超级管理员', '1', 'admin', '2017-12-26 14:21:52', '2017-12-26 14:21:52', '0');
INSERT INTO `sys_role` VALUES ('2', 'sdks', '经分2333', '3', 'admin', '2017-12-26 14:21:52', '2018-03-02 11:17:53', '0');
INSERT INTO `sys_role` VALUES ('3', 'general', '普通员工', '5', 'admin', '2017-12-26 14:21:52', '2017-12-26 14:21:52', '0');
INSERT INTO `sys_role` VALUES ('4', 'USERABC', '系统管理员', '1', 'admin', '2017-12-26 14:21:52', '2018-01-18 17:41:04', '0');
INSERT INTO `sys_role` VALUES ('5', 'erdsg', 'dg', '5', 'admin', '2017-12-26 14:21:52', '2017-12-26 14:21:52', '0');
INSERT INTO `sys_role` VALUES ('16', 'TEST', '测试管理', '2', 'admin', '2018-01-18 17:40:33', '2018-01-18 17:40:33', '0');
INSERT INTO `sys_role` VALUES ('17', '', '', '', 'admin', '2018-03-02 11:14:12', '2018-03-02 11:14:12', '1');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `menu_id` int(11) NOT NULL COMMENT '权限id',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限详细信息';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('4', '1');
INSERT INTO `sys_role_menu` VALUES ('4', '2');
INSERT INTO `sys_role_menu` VALUES ('5', '1');
INSERT INTO `sys_role_menu` VALUES ('5', '2');

-- ----------------------------
-- Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `office_id` int(11) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_secret`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_secret`;
CREATE TABLE `sys_role_secret` (
  `secret_id` int(11) NOT NULL COMMENT '密级id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`secret_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_secret
-- ----------------------------
INSERT INTO `sys_role_secret` VALUES ('1', '1');
INSERT INTO `sys_role_secret` VALUES ('3', '1');
INSERT INTO `sys_role_secret` VALUES ('4', '1');

-- ----------------------------
-- Table structure for `sys_role_theme`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_theme`;
CREATE TABLE `sys_role_theme` (
  `theme_id` int(11) NOT NULL COMMENT '密级id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`theme_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色主题表';

-- ----------------------------
-- Records of sys_role_theme
-- ----------------------------
INSERT INTO `sys_role_theme` VALUES ('1', '1');
INSERT INTO `sys_role_theme` VALUES ('4', '2');

-- ----------------------------
-- Table structure for `sys_secret`
-- ----------------------------
DROP TABLE IF EXISTS `sys_secret`;
CREATE TABLE `sys_secret` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `describe` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='密级表';

-- ----------------------------
-- Records of sys_secret
-- ----------------------------
INSERT INTO `sys_secret` VALUES ('1', '财务', '财务微服务', 'mao', '2018-01-30 17:13:12', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_secret` VALUES ('2', '绝密', '3', 'mao', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_secret` VALUES ('3', '普通密级1', '23', 'mao', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_secret` VALUES ('4', '普通密级2', '435', 'mao', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_secret` VALUES ('5', '私密', '1234', 'admin', '2018-01-20 14:36:56', '2018-01-20 14:36:04', '1');

-- ----------------------------
-- Table structure for `sys_theme`
-- ----------------------------
DROP TABLE IF EXISTS `sys_theme`;
CREATE TABLE `sys_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `describe` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='主题表';

-- ----------------------------
-- Records of sys_theme
-- ----------------------------
INSERT INTO `sys_theme` VALUES ('1', '经分1', '1', 'mao', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_theme` VALUES ('2', '经分', '2', 'mao', '2018-01-20 14:27:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_theme` VALUES ('3', '经分2333', '描述', 'mao', '2018-01-20 14:18:09', '2017-12-23 10:48:29', '1');
INSERT INTO `sys_theme` VALUES ('4', '经分4', '4', 'mao', '2017-12-23 10:48:29', '2017-12-23 10:48:29', '0');
INSERT INTO `sys_theme` VALUES ('5', '精分', '一个分', 'admin', '2018-01-20 14:27:22', '2018-01-20 14:27:11', '0');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '用户名  唯一',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `role` varchar(32) DEFAULT NULL COMMENT '角色',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话',
  `company_id` int(11) DEFAULT NULL COMMENT '所属公司id',
  `office_id` int(11) DEFAULT NULL COMMENT '所属部门id',
  `type` varchar(64) DEFAULT NULL COMMENT '用户的类型，，，移动端 或是公司内部 PC端',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `update_date` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '是否被删除 0 不是 ； 1 是',
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'd6160a5992bf07785b1226a0543e28ff', 'sys_admin', null, null, '1', '3', 'pc端', 'admin', '2017-12-26 14:21:52', '2018-02-11 15:26:53', '0');
INSERT INTO `sys_user` VALUES ('2', '张三12123', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, '18813299654', '1', '3', null, null, '2017-12-26 14:21:52', '2017-12-26 14:21:52', '1');
INSERT INTO `sys_user` VALUES ('3', '张三1', 'd6160a5992bf07785b1226a0543e28ff', null, 'sdfsa', '23154416', null, '5', null, null, '2017-12-26 14:21:52', '2017-12-26 14:21:52', '1');
INSERT INTO `sys_user` VALUES ('4', '李四', 'd6160a5992bf07785b1226a0543e28ff', null, 'sdfsa', '23154416sdfa', '1', '3', null, null, '2017-12-26 14:21:52', '2017-12-26 14:21:53', '1');
INSERT INTO `sys_user` VALUES ('5', '王五1', 'd6160a5992bf07785b1226a0543e28ff', null, 'sdfsa', '23154416sdfa', '1', '5', null, null, '2017-12-26 14:31:47', '2017-12-26 14:31:47', '0');
INSERT INTO `sys_user` VALUES ('7', 'skhakfj', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '5', null, null, '2017-12-29 14:26:38', '2017-12-29 14:26:38', '0');
INSERT INTO `sys_user` VALUES ('8', 'kdslkgh', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, null, '2017-12-29 15:35:54', '2017-12-29 15:35:54', '1');
INSERT INTO `sys_user` VALUES ('12', '王五', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', 'sdfsa', '23154416sdfa', '1', '2', null, null, '2018-01-02 14:46:34', '2018-01-02 14:46:34', '1');
INSERT INTO `sys_user` VALUES ('13', '张三', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, 'mao', '2018-01-03 16:26:49', '2018-01-03 16:26:49', '0');
INSERT INTO `sys_user` VALUES ('14', 'mao', 'd6160a5992bf07785b1226a0543e28ff', 'USERBUMEN', null, null, '1', '2', 'pc端', null, '2018-01-03 16:28:26', '2018-02-11 15:27:22', '0');
INSERT INTO `sys_user` VALUES ('15', '张三12', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, 'mao', '2018-01-08 11:01:18', '2018-01-08 11:01:18', '1');
INSERT INTO `sys_user` VALUES ('16', 'zhang', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '5', null, 'mao', '2018-01-08 11:01:35', '2018-01-08 11:01:35', '0');
INSERT INTO `sys_user` VALUES ('18', 'wang', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, 'mao', '2018-01-08 16:05:16', '2018-01-08 16:05:16', '0');
INSERT INTO `sys_user` VALUES ('19', 'xxxq不会', null, 'sys_user', '', '', '1', '5', null, 'mao', '2018-01-09 15:26:01', '2018-01-18 15:30:35', '0');
INSERT INTO `sys_user` VALUES ('20', 'kajsdfhkj', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, 'mao', '2018-01-09 15:42:35', '2018-01-09 15:42:35', '0');
INSERT INTO `sys_user` VALUES ('21', 'ma', null, 'sys_user', '', '', '1', '5', null, 'mao', '2018-01-10 10:45:28', '2018-01-18 09:27:58', '0');
INSERT INTO `sys_user` VALUES ('22', 'kajsdfhkjww', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '5', null, 'mao', '2018-01-10 15:37:08', '2018-01-10 15:37:08', '0');
INSERT INTO `sys_user` VALUES ('23', '123', 'd6160a5992bf07785b1226a0543e28ff', 'sys_user', null, null, '1', '2', null, 'mao', '2018-01-10 15:48:09', '2018-01-10 15:48:09', '1');
INSERT INTO `sys_user` VALUES ('25', 'kjshakpolk', null, null, '发发发', '', '1', '2', null, null, '2018-01-17 15:05:13', '2018-01-18 15:35:26', '0');
INSERT INTO `sys_user` VALUES ('26', 'lalal', null, null, '', '', '1', '3', null, null, '2018-01-17 15:32:56', '2018-01-18 09:27:25', '0');
INSERT INTO `sys_user` VALUES ('27', 'xiaozhang', null, null, '', '', '1', '3', null, null, '2018-01-17 15:36:14', '2018-01-18 15:30:05', '0');
INSERT INTO `sys_user` VALUES ('28', '毛慧君', null, null, '1462019088@qq.com', '15070852698', '1', '3', null, null, '2018-01-17 16:49:46', '2018-01-18 15:27:36', '0');
INSERT INTO `sys_user` VALUES ('29', 'xiaoxiao', '05c29c3159740f7823cd75d907bcdb91', null, '', '', '1', '3', null, null, '2018-01-17 16:50:06', '2018-01-17 16:50:06', '0');
INSERT INTO `sys_user` VALUES ('30', '哈哈哈哈哈', null, null, '', '', '1', '3', null, null, '2018-01-17 16:50:20', '2018-01-18 15:32:35', '0');
INSERT INTO `sys_user` VALUES ('31', '修改', null, null, '', '', '1', '3', null, null, '2018-01-17 16:55:22', '2018-01-18 15:29:01', '0');
INSERT INTO `sys_user` VALUES ('32', '123', null, null, '', '', '1', '3', null, null, '2018-01-18 15:31:04', '2018-01-18 16:33:13', '0');
INSERT INTO `sys_user` VALUES ('33', '防辐', null, null, '给对方的', '', '1', '3', null, null, '2018-01-18 15:32:18', '2018-01-18 15:35:54', '0');
INSERT INTO `sys_user` VALUES ('34', '放过来看到', null, null, '', '', '1', '2', null, null, '2018-01-18 15:37:40', '2018-01-18 16:39:04', '0');
INSERT INTO `sys_user` VALUES ('35', '大幅度de', null, null, 'sdggsa', '', '1', '2', null, null, '2018-01-18 15:37:48', '2018-01-18 16:32:33', '0');
INSERT INTO `sys_user` VALUES ('36', '', '05c29c3159740f7823cd75d907bcdb91', null, '', '', '1', '5', null, null, '2018-01-18 16:40:15', '2018-01-18 16:40:15', '1');
INSERT INTO `sys_user` VALUES ('37', '王小明', null, null, '', '', '1', '5', null, null, '2018-01-18 16:42:30', '2018-01-18 16:50:22', '0');
INSERT INTO `sys_user` VALUES ('38', 'mao1', null, null, '', '', '1', '5', null, null, '2018-01-18 18:49:48', '2018-01-24 15:53:49', '0');
INSERT INTO `sys_user` VALUES ('39', 'wei', '8b59a770ae7c39cbb22075f832318816', null, null, null, '1', null, null, null, '2018-02-08 17:16:32', '2018-02-08 17:16:32', '0');
INSERT INTO `sys_user` VALUES ('40', '18521355656', '6409be2f94e9e2d4755aa7caa220879d', null, null, null, '1', null, null, null, '2018-02-08 17:16:40', '2018-02-08 17:16:40', '0');
INSERT INTO `sys_user` VALUES ('41', 'weiji', '8b59a770ae7c39cbb22075f832318816', null, null, null, '1', null, null, null, '2018-02-08 17:17:01', '2018-02-08 17:17:01', '0');
INSERT INTO `sys_user` VALUES ('42', '18521355444', '61a7fcb3573d3664bd0703752834bafa', null, null, null, '1', null, null, null, '2018-02-08 17:18:08', '2018-02-08 17:18:08', '0');
INSERT INTO `sys_user` VALUES ('43', 'nba', 'd6160a5992bf07785b1226a0543e28ff', null, null, null, '1', null, null, null, '2018-02-08 17:21:00', '2018-02-08 17:21:00', '0');
INSERT INTO `sys_user` VALUES ('44', '18521355658', 'ba0b0c3d8f787193dac44c97ba713e28', null, null, null, '1', null, null, null, '2018-02-08 17:21:24', '2018-02-08 17:21:24', '0');
INSERT INTO `sys_user` VALUES ('45', 'zhou', 'be9ade065329daf022122787cd15dbc9', null, null, null, '1', null, null, null, '2018-02-09 17:50:53', '2018-02-09 17:50:53', '0');
INSERT INTO `sys_user` VALUES ('46', 'wjy', '92c076512ff759b029a62f06c8006fe4', null, null, null, '1', null, null, null, '2018-02-09 18:54:00', '2018-02-09 18:54:00', '0');
INSERT INTO `sys_user` VALUES ('47', 'weijy', '92c076512ff759b029a62f06c8006fe4', null, null, null, '1', null, null, null, '2018-02-09 19:59:54', '2018-02-09 19:59:54', '0');
INSERT INTO `sys_user` VALUES ('48', 'admin125', 'd6160a5992bf07785b1226a0543e28ff', null, null, null, '1', null, null, null, '2018-02-09 20:58:35', '2018-02-09 20:58:35', '0');
INSERT INTO `sys_user` VALUES ('49', 'admin325', 'd6160a5992bf07785b1226a0543e28ff', null, null, null, '1', null, null, null, '2018-02-10 09:25:46', '2018-02-10 09:25:46', '0');
INSERT INTO `sys_user` VALUES ('50', 'admin3256', 'd6160a5992bf07785b1226a0543e28ff', null, null, null, '1', null, null, null, '2018-02-10 09:26:54', '2018-02-10 09:26:54', '0');
INSERT INTO `sys_user` VALUES ('51', 'admin895', 'd6160a5992bf07785b1226a0543e28ff', null, null, null, '1', null, 'pc端', null, '2018-02-10 14:34:47', '2018-02-11 15:33:09', '0');
INSERT INTO `sys_user` VALUES ('52', '18319021740', 'f763d0f07c02baa9cc04924833f12e47', null, null, null, '1', null, '移动端', null, '2018-02-14 22:34:02', '2018-02-14 22:34:17', '0');
INSERT INTO `sys_user` VALUES ('53', '', '05c29c3159740f7823cd75d907bcdb91', null, '', '', '1', null, null, null, '2018-03-02 11:07:56', '2018-03-02 11:07:56', '0');
INSERT INTO `sys_user` VALUES ('54', '', '05c29c3159740f7823cd75d907bcdb91', null, '', '', '1', null, null, null, '2018-03-02 11:07:56', '2018-03-02 11:07:56', '0');
INSERT INTO `sys_user` VALUES ('55', '13691989664', 'ae443975c4a4f8045a6fe9fba2e6767a', null, null, null, '1', null, '移动端', null, '2018-03-07 17:34:57', '2018-03-07 17:35:01', '0');

-- ----------------------------
-- Table structure for `sys_user_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_config`;
CREATE TABLE `sys_user_config` (
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名称',
  `token` varchar(500) DEFAULT NULL COMMENT 'token',
  `time` varchar(16) DEFAULT '30' COMMENT '有效时长',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户token表';

-- ----------------------------
-- Records of sys_user_config
-- ----------------------------
INSERT INTO `sys_user_config` VALUES ('36', '', 'VZ51PhlmztdTulOc3b1niQ==', '30');
INSERT INTO `sys_user_config` VALUES ('23', '123', 'ddH/zg3PEnzQ5gIJg9p6KQ==', '30');
INSERT INTO `sys_user_config` VALUES ('55', '13691989664', '6thdXrr14Rx8cG4lPkO4QA==', '30');
INSERT INTO `sys_user_config` VALUES ('52', '18319021740', 'RIVot4Ny9WRuhN5BNAhUCw==', '30');
INSERT INTO `sys_user_config` VALUES ('42', '18521355444', 'ISnRGHMpOvJo4to2ym90yw==', '30');
INSERT INTO `sys_user_config` VALUES ('40', '18521355656', 'UrHQ04IDZfMqs2n/mZAouA==', '30');
INSERT INTO `sys_user_config` VALUES ('44', '18521355658', 'z64wsyRUdnF1UP2E8gaqaQ==', '30');
INSERT INTO `sys_user_config` VALUES ('1', 'admin', 'sdkajfhksajdhfkj', '30');
INSERT INTO `sys_user_config` VALUES ('48', 'admin125', 'SkUBSxUKKon9tA7C5Y7Lgg==', '30');
INSERT INTO `sys_user_config` VALUES ('49', 'admin325', 'sgAGNJwByPRVwsLzyibe6g==', '30');
INSERT INTO `sys_user_config` VALUES ('50', 'admin3256', 'BZ7IPt6OjVupbWO67lqf+A==', '30');
INSERT INTO `sys_user_config` VALUES ('51', 'admin895', 'Tv3NtFeNRUUz8WrY/vg2gw==', '30');
INSERT INTO `sys_user_config` VALUES ('20', 'kajsdfhkj', 'TU6d6lgJi57zz3681WwFyg==', '30');
INSERT INTO `sys_user_config` VALUES ('22', 'kajsdfhkjww', 'FK5cAPdMAAigGC4ocMxxuw==', '30');
INSERT INTO `sys_user_config` VALUES ('8', 'kdslkgh', 'SPQAD4SyrbKVSCpbTyLCSQ==', '30');
INSERT INTO `sys_user_config` VALUES ('25', 'kjshakpolk', 'PsZATksIlyaymf40G4NBQw==', '30');
INSERT INTO `sys_user_config` VALUES ('26', 'lalal', 'v3DOGg/nI3g3vXNGlhd31g==', '30');
INSERT INTO `sys_user_config` VALUES ('21', 'ma', 'welZIidEmLdnnIsREcVQcw==', '30');
INSERT INTO `sys_user_config` VALUES ('14', 'mao', '42eGluz0kIQwg/TwEaupkw==', '30');
INSERT INTO `sys_user_config` VALUES ('38', 'mao1', 'ji8tBAfDA0ODsnJACNiZeg==', '30');
INSERT INTO `sys_user_config` VALUES ('43', 'nba', '8DvvsvLS/bRfFVx/4eDiWA==', '30');
INSERT INTO `sys_user_config` VALUES ('7', 'skhakfj', 'fER4Zn3yZ06zZNxvwPt8oA==', '30');
INSERT INTO `sys_user_config` VALUES ('18', 'wang', 'wug/hevBykhrJLSLlHwW0A==', '30');
INSERT INTO `sys_user_config` VALUES ('39', 'wei', 'eMFzz7Kg9aLJQ3WFIgOMSg==', '30');
INSERT INTO `sys_user_config` VALUES ('41', 'weiji', 'UXhf44u2kNQ2JRd4b4wf0A==', '30');
INSERT INTO `sys_user_config` VALUES ('47', 'weijy', 'hC31FGOhgHgZYZAOxordGw==', '30');
INSERT INTO `sys_user_config` VALUES ('46', 'wjy', 'UuJGv5a7F1DMPtGOKTRFsg==', '30');
INSERT INTO `sys_user_config` VALUES ('29', 'xiaoxiao', 'behizk+WxJlF0ztdFw+Xnw==', '30');
INSERT INTO `sys_user_config` VALUES ('27', 'xiaozhang', 'i5qsNRL3euniO1wUnhorvA==', '30');
INSERT INTO `sys_user_config` VALUES ('19', 'xxxq', 'Fho1kyKaUU3mSOJcI5+8Ig==', '30');
INSERT INTO `sys_user_config` VALUES ('16', 'zhang', '2jIaiVtD6bz/zkxjrHVfPw==', '30');
INSERT INTO `sys_user_config` VALUES ('6', 'zhanganr', 'sdkajfhksajdhfkj11', '30');
INSERT INTO `sys_user_config` VALUES ('45', 'zhou', 'hMj6NHt5sCzuKhYcfL14fg==', '30');
INSERT INTO `sys_user_config` VALUES ('30', '哈哈哈', 'VoIxntvOUQah4mxt9l7bxA==', '30');
INSERT INTO `sys_user_config` VALUES ('35', '大幅度', '10gqCKULNckol/wZwINYbA==', '30');
INSERT INTO `sys_user_config` VALUES ('13', '张三', 'SZFakePaH1oEVgheQTvXcA==', '30');
INSERT INTO `sys_user_config` VALUES ('34', '放过来看到', 'CEMl43i7VXtlZ27BiWB9vw==', '30');
INSERT INTO `sys_user_config` VALUES ('28', '毛慧君', 'cqApmwSEDMSkS/mZ4FD1AA==', '30');
INSERT INTO `sys_user_config` VALUES ('31', '添加', '+34yzbCjr7jA1RmQI9HgkA==', '30');
INSERT INTO `sys_user_config` VALUES ('10', '王五', 'NKAb3KK2Gi7W/H1dqbLSrA==', '30');
INSERT INTO `sys_user_config` VALUES ('37', '王小明', 'iLlzGbsS3r4fRplC1gGVVw==', '30');
INSERT INTO `sys_user_config` VALUES ('33', '防辐射', 'LNL0zifQkUefHqvGN/lS9A==', '30');

-- ----------------------------
-- Table structure for `sys_user_mobcode`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_mobcode`;
CREATE TABLE `sys_user_mobcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(16) DEFAULT NULL COMMENT '验证码',
  `mobile` varchar(32) NOT NULL COMMENT '电话',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `verify_date` varchar(32) DEFAULT NULL COMMENT '验证时间',
  PRIMARY KEY (`id`,`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_mobcode
-- ----------------------------
INSERT INTO `sys_user_mobcode` VALUES ('1', '449307', '18813299717', '2018-01-19 17:08:09', null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('5', '2');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('13', '3');
INSERT INTO `sys_user_role` VALUES ('14', '2');
INSERT INTO `sys_user_role` VALUES ('26', '2');
INSERT INTO `sys_user_role` VALUES ('27', '2');
INSERT INTO `sys_user_role` VALUES ('48', '1');
INSERT INTO `sys_user_role` VALUES ('50', '3');
INSERT INTO `sys_user_role` VALUES ('51', '3');
INSERT INTO `sys_user_role` VALUES ('52', '3');
INSERT INTO `sys_user_role` VALUES ('55', '3');

-- ----------------------------
-- Procedure structure for `splitString`
-- ----------------------------
DROP PROCEDURE IF EXISTS `splitString`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `splitString`(IN f_string varchar(1000),IN f_delimiter varchar(5))
BEGIN 

# 拆分结果 

declare cnt int default 0; 

declare i int default 0; 

set cnt = func_split_TotalLength(f_string,f_delimiter); 

DROP TABLE IF EXISTS `tmp_split`; 

create temporary table `tmp_split` (`status` varchar(128) not null) DEFAULT CHARSET=utf8; 

while i < cnt 

do 

    set i = i + 1; 

    insert into tmp_split(`status`) values (func_split(f_string,f_delimiter,i)); 

end while; 

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `func_split`
-- ----------------------------
DROP FUNCTION IF EXISTS `func_split`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_split`(f_string varchar(1000),f_delimiter varchar(5),f_order int) RETURNS varchar(255) CHARSET utf8
BEGIN 

    # 拆分传入的字符串，返回拆分后的新字符串 

        declare result varchar(255) default ''; 

        set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1)); 

        return result; 

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `func_split_TotalLength`
-- ----------------------------
DROP FUNCTION IF EXISTS `func_split_TotalLength`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_split_TotalLength`(f_string varchar(1000),f_delimiter varchar(5)) RETURNS int(11)
BEGIN 

    # 计算传入字符串的总length 

    return 1+(length(f_string) - length(replace(f_string,f_delimiter,''))); 

END
;;
DELIMITER ;
