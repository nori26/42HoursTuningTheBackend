-- ALTER TABLE record_comment ADD INDEX index_linked_record_id(linked_record_id);
ALTER TABLE record_comment ADD INDEX index_name(linked_record_id, created_at);
ALTER TABLE record ADD INDEX index_record_id(record_id);
ALTER TABLE file ADD INDEX index_file_id(file_id);
ALTER TABLE record_item_file ADD INDEX index_linked_record_id(linked_record_id);
ALTER TABLE group_member ADD INDEX index_user_id(user_id);

-- explain select count(*) from group_member;

