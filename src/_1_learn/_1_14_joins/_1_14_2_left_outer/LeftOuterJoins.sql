SELECT users.ID, users.FIRST_NAME, copy_of_users.SECOND_NAME
FROM users
         LEFT OUTER JOIN copy_of_users
                         ON users.FIRST_NAME = copy_of_users.SECOND_NAME;