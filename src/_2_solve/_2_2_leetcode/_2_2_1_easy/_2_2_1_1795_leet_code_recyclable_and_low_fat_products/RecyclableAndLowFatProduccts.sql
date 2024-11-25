Create table If Not Exists _2_2_1_1795_leet_code_recyclable_and_low_fat_products
(
    product_id int,
    low_fats   ENUM ('Y', 'N'),
    recyclable ENUM ('Y','N')
);
Truncate table _2_2_1_1795_leet_code_recyclable_and_low_fat_products;
insert into _2_2_1_1795_leet_code_recyclable_and_low_fat_products (product_id, low_fats, recyclable)
values ('0', 'Y', 'N');
insert into _2_2_1_1795_leet_code_recyclable_and_low_fat_products (product_id, low_fats, recyclable)
values ('1', 'Y', 'Y');
insert into _2_2_1_1795_leet_code_recyclable_and_low_fat_products (product_id, low_fats, recyclable)
values ('2', 'N', 'Y');
insert into _2_2_1_1795_leet_code_recyclable_and_low_fat_products (product_id, low_fats, recyclable)
values ('3', 'Y', 'Y');
insert into _2_2_1_1795_leet_code_recyclable_and_low_fat_products (product_id, low_fats, recyclable)
values ('4', 'N', 'N');

SELECT product_id
FROM _2_2_1_1795_leet_code_recyclable_and_low_fat_products
WHERE low_fats = 'Y'
  AND recyclable = 'Y'