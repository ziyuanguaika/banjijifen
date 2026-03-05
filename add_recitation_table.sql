-- 补充创建 recitation_completed 表（如果之前没有创建）
USE `class_points`;
SET NAMES utf8mb4;

CREATE TABLE IF NOT EXISTS `recitation_completed` (
    `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `class_id`    VARCHAR(50)  NOT NULL,
    `student_id`  VARCHAR(50)  NOT NULL,
    `completed_at` DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='背诵完成记录表';

SELECT '✅ recitation_completed 表创建完成' AS 结果;
