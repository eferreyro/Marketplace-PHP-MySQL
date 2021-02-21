ALTER TABLE messages
ADD id_product_message INT(11),	
ADD transmitter_message INT(11),	
ADD receiver_message INT(11),	
ADD content_message TEXT,	
ADD answer_message TEXT,	
ADD date_created_message DATE,	
ADD date_updated_message TIMESTAMP;
