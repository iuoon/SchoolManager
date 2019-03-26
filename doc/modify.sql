ALTER TABLE `sys_score`
MODIFY COLUMN `score`  double(10,2) NULL DEFAULT 0 COMMENT '学业基础分' AFTER `glass_id`,
MODIFY COLUMN `behavior_score`  double(10,2) NULL DEFAULT 0 COMMENT '行为基础分' AFTER `score`;
ALTER TABLE `sys_score`
ADD COLUMN `total_score`  double(10,2) NULL DEFAULT 0.00 COMMENT '总分' AFTER `behavior_score`;
ALTER TABLE `sys_score`
ADD COLUMN `prize_level`  int(11) NULL DEFAULT 0 COMMENT '获奖等级 1一等级 2二等奖 3三等奖' AFTER `total_score`;

