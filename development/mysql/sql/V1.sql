ALTER TABLE record_comment ADD INDEX index_linked_record_id(linked_record_id);
ALTER TABLE record ADD INDEX index_record_id(record_id);
ALTER TABLE file ADD INDEX index_file_id(file_id);
