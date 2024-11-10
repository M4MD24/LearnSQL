ALTER TABLE copy_of_users
    ADD PRIMARY KEY (ID);

ALTER TABLE users
    ADD CONSTRAINT user_id
        FOREIGN KEY (ID) REFERENCES copy_of_users (ID);