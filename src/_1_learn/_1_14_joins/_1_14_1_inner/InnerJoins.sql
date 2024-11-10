SELECT users.ID, users.FIRST_NAME, copy_of_users.ID
FROM users
         INNER JOIN copy_of_users
                    ON users.ID = copy_of_users.ID