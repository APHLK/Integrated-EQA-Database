ALTER TABLE data_manager ADD COLUMN IsTester VARCHAR(45) DEFAULT '0';
ALTER TABLE participant_manager_map ADD COLUMN Parent_id INT(11) DEFAULT 0;
ALTER TABLE participant ADD COLUMN ModuleID INT(11) DEFAULT 0;
