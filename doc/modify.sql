ALTER TABLE `sys_score`
MODIFY COLUMN `score`  double(10,2) NULL DEFAULT 0 COMMENT 'ѧҵ������' AFTER `glass_id`,
MODIFY COLUMN `behavior_score`  double(10,2) NULL DEFAULT 0 COMMENT '��Ϊ������' AFTER `score`;
ALTER TABLE `sys_score`
ADD COLUMN `total_score`  double(10,2) NULL DEFAULT 0.00 COMMENT '�ܷ�' AFTER `behavior_score`;
ALTER TABLE `sys_score`
ADD COLUMN `prize_level`  int(11) NULL DEFAULT 0 COMMENT '�񽱵ȼ� 1һ�ȼ� 2���Ƚ� 3���Ƚ�' AFTER `total_score`;

