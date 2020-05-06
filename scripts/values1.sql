INSERT INTO customers2 VALUES (1, 'Tonmoy', '01820904850','Dhaka');
INSERT INTO customers2 VALUES (2, 'Sonnet', '01777777777','Khulna');
INSERT INTO customers2 VALUES (3, 'Jhony', '01888888888','Chittagong');
INSERT INTO customers2 VALUES (4, 'Saad', '01988888888','Rajshahi');

INSERT INTO customers2 VALUES (5, 'Rahim', '0131000000','Chittagong');
INSERT INTO customers2 VALUES (6, 'karim', '014800000','Barisal');
INSERT INTO customers2 VALUES (7, 'Nishad', '019999999','Khulna');


INSERT INTO meals2 VALUES (1, TO_DATE('2019/10/14','yyyy/mm/dd'), 1, 1, 1);
INSERT INTO meals2 VALUES (2, TO_DATE('2019/10/15','yyyy/mm/dd'), 2, 1, 3);
INSERT INTO meals2 VALUES (3, TO_DATE('2019/10/15','yyyy/mm/dd'), 2, 3, 2);

INSERT INTO meals2 VALUES (4, TO_DATE('2019/09/20','yyyy/mm/dd'), 1, 1, 1);
INSERT INTO meals2 VALUES (5, TO_DATE('2019/09/10','yyyy/mm/dd'), 2, 1, 3);


INSERT INTO staff_rule2 VALUES (1,'Manager');
INSERT INTO staff_rule2 VALUES (2,'Waiter');
INSERT INTO staff_rule2 VALUES (3,'Chef');
INSERT INTO staff_rule2 VALUES (4,'Kitchen Manager');
INSERT INTO staff_rule2 VALUES (5,'Dishwashers');

INSERT INTO staff_rule2 VALUES (6,'Chef');
INSERT INTO staff_rule2 VALUES (7,'Waiter');



INSERT INTO staff2 VALUES (1,'Rahim', 45000, 1);
INSERT INTO staff2 VALUES (2,'Abdullah', 40000, 1);
INSERT INTO staff2 VALUES (3,'Sakib', 10000, 2);
INSERT INTO staff2 VALUES (4,'Rakib', 20000, 3);
INSERT INTO staff2 VALUES (5,'Jasim', 20000, 3);
INSERT INTO staff2 VALUES (6,'William', 35000, 4);
INSERT INTO staff2 VALUES (7,'Rahima', 4500, 5);

INSERT INTO staff2 VALUES (8,'patrick', 20000, 3);
INSERT INTO staff2 VALUES (9,'jackson', 30000, 4);
INSERT INTO staff2 VALUES (10,'robert', 5500, 5);



INSERT INTO menu_item2 VALUES ('Biriyani',1,230.00);
INSERT INTO menu_item2 VALUES ('Burger',2,120.00);
INSERT INTO menu_item2 VALUES ('Pizza',3,330.00);
INSERT INTO menu_item2 VALUES ('Pasta',4,130.00);
INSERT INTO menu_item2 VALUES ('Sandwich',5,60.00);
INSERT INTO menu_item2 VALUES ('Juice',6,70.00);


select * from menu_item2;

INSERT INTO meal_dish2 VALUES (1,1);
INSERT INTO meal_dish2 VALUES (1,2);
INSERT INTO meal_dish2 VALUES (1,3);

INSERT INTO meal_dish2 VALUES (2,3);
INSERT INTO meal_dish2 VALUES (2,4);



commit;

select * from customers2;
select * from meals2;
select * from staff_rule2;
select * from staff2;
select * from menu_item2;
select * from meal_dish2;
