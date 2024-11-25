Create table If Not Exists _2_2_1_1661_leet_code_activity
(
    machine_id    int,
    process_id    int,
    activity_type ENUM ('start', 'end'),
    timestamp     float
);
Truncate table _2_2_1_1661_leet_code_activity;
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('0', '0', 'start', '0.712');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('0', '0', 'end', '1.52');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('0', '1', 'start', '3.14');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('0', '1', 'end', '4.12');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('1', '0', 'start', '0.55');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('1', '0', 'end', '1.55');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('1', '1', 'start', '0.43');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('1', '1', 'end', '1.42');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('2', '0', 'start', '4.1');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('2', '0', 'end', '4.512');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('2', '1', 'start', '2.5');
insert into _2_2_1_1661_leet_code_activity (machine_id, process_id, activity_type, timestamp)
values ('2', '1', 'end', '5');

SELECT start.machine_id,
       ROUND(
               AVG(end.timestamp - start.timestamp),
               3
       ) AS processing_time
FROM _2_2_1_1661_leet_code_activity AS start
         JOIN _2_2_1_1661_leet_code_activity AS end
              ON start.machine_id = end.machine_id
                  AND start.process_id = end.process_id
                  AND start.activity_type = 'start'
                  AND end.activity_type = 'end'
GROUP BY machine_id;