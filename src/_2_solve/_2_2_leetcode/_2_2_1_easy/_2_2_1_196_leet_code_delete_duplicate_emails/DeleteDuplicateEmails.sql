Create table If Not Exists _2_2_1_196_leet_code_person
(
    Id    int,
    Email varchar(255)
);
Truncate table _2_2_1_196_leet_code_person;
insert into _2_2_1_196_leet_code_person (id, email)
values ('1', 'john@example.com');
insert into _2_2_1_196_leet_code_person (id, email)
values ('2', 'bob@example.com');
insert into _2_2_1_196_leet_code_person (id, email)
values ('3', 'john@example.com');

DELETE first_person
FROM _2_2_1_196_leet_code_person first_person
         INNER JOIN _2_2_1_196_leet_code_person second_person
                    ON first_person.email = second_person.email
                        AND first_person.id > second_person.id;

SELECT *
FROM _2_2_1_196_leet_code_person;