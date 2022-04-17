-- ordered by tabel

-- use index
ALTER TABLE user ADD INDEX index_user_id(user_id);

ALTER TABLE group_info ADD INDEX index_group_id(group_id);

ALTER TABLE group_member ADD INDEX index_user_id(user_id);
ALTER TABLE group_member ADD INDEX index_is_primary(is_primary);

ALTER TABLE record ADD INDEX index_record_id(record_id);
ALTER TABLE record ADD INDEX index_status(status);
ALTER TABLE record ADD INDEX index_created_by(created_by);
ALTER TABLE record ADD INDEX index_category_id(category_id);

ALTER TABLE record_item_file ADD INDEX index_linked_item_id(item_id);
ALTER TABLE record_item_file ADD INDEX index_linked_record_id(linked_record_id);

ALTER TABLE record_last_access ADD INDEX index_user_and_record(user_id, record_id);

ALTER TABLE record_comment ADD INDEX index_linked_record_id(linked_record_id);
ALTER TABLE record_comment ADD INDEX index_name(linked_record_id, created_at);

ALTER TABLE category ADD INDEX index_category_id(category_id);

ALTER TABLE category_group ADD INDEX index_group_id(group_id);

ALTER TABLE session ADD INDEX index_value(value);

-- use numeric data type

-- ALTER TABLE record alter column record_id bigint;
ALTER TABLE record_item_file alter column linked_record_id bigint;
ALTER TABLE record_comment alter column linked_record_id bigint;

-- explain select count(*) from group_member;

-- select * from record_comment where linked_record_id = 1 order by created_at desc;
