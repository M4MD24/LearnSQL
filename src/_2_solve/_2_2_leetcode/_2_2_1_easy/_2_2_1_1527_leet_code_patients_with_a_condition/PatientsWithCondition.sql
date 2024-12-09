Create table If Not Exists _2_2_1_1527_leet_code_patients
(
    patient_id   int,
    patient_name varchar(30),
    conditions   varchar(100)
);

Truncate table _2_2_1_1527_leet_code_patients;
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('1', 'Daniel', 'YFEV COUGH');
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('2', 'Alice', '');
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('3', 'Bob', 'DIAB100 MYOP');
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('4', 'George', 'ACNE DIAB100');
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('5', 'Alain', 'DIAB201');

Truncate table _2_2_1_1527_leet_code_patients;
insert into _2_2_1_1527_leet_code_patients (patient_id, patient_name, conditions)
values ('1', 'Daniel', 'SADIAB100');

SELECT *
FROM _2_2_1_1527_leet_code_patients
WHERE conditions LIKE '%DIAB1%';

# >x
/*SELECT patient_id, patient_name, conditions
FROM _2_2_1_1527_leet_code_patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';*/