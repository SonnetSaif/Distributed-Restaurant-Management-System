clear screen;

DROP TABLE customers2 CASCADE CONSTRAINTS;
DROP TABLE meals2 CASCADE CONSTRAINTS;
DROP TABLE staff_rule2 CASCADE CONSTRAINTS;
DROP TABLE staff2 CASCADE CONSTRAINTS;
DROP TABLE menu_item2 CASCADE CONSTRAINTS;
DROP TABLE meal_dish2 CASCADE CONSTRAINTS;


CREATE TABLE customers2 (
    customer_id     INTEGER NOT NULL,
    customer_name   VARCHAR2(200 CHAR),
    phone           VARCHAR2(200 CHAR),
    location        VARCHAR2(200)
);

commit;

ALTER TABLE customers2 ADD CONSTRAINT customers_pk PRIMARY KEY ( customer_id );
commit;

--meals table
CREATE TABLE meals2 (
    meal_id        INTEGER NOT NULL,
    date_of_meal   DATE,
    cost_of_meal   NUMBER,
    customer_id    INTEGER NOT NULL,
    staff_id       INTEGER NOT NULL
);
commit;

CREATE INDEX meals__idx ON
    meals2 (
        meal_id
    ASC );
commit;
ALTER TABLE meals2 ADD CONSTRAINT meals_pk PRIMARY KEY ( meal_id );
commit;
ALTER TABLE meals2
    ADD CONSTRAINT customer_id FOREIGN KEY ( customer_id )
        REFERENCES customers2 ( customer_id );
commit;
ALTER TABLE meals2
    ADD CONSTRAINT staff_id FOREIGN KEY ( staff_id )
        REFERENCES staff2 ( staff_id );
commit;
--Staff Rule table
CREATE TABLE staff_rule2 (
    staff_rule_code    INTEGER NOT NULL,
    rule_describtion   VARCHAR2(200)
);
commit;
ALTER TABLE staff_rule2 ADD CONSTRAINT staff_rule_pk PRIMARY KEY ( staff_rule_code );
commit;



--Staff table
CREATE TABLE staff2 (
    staff_id          INTEGER NOT NULL,
    staff_name        VARCHAR2
--  ERROR: VARCHAR2 size not specified
    ,
    staff_salary      NUMBER,
    staff_rule_code   INTEGER NOT NULL
);
commit;
ALTER TABLE staff2 ADD CONSTRAINT staff_pk PRIMARY KEY ( staff_id );
commit;
ALTER TABLE staff2
    ADD CONSTRAINT staff_rule_fk FOREIGN KEY ( staff_rule_code )
        REFERENCES staff_rule2 ( staff_rule_code );
commit;
--Menu_item table

CREATE TABLE menu_item2(
    menu_item_name    VARCHAR2(200),
    menu_item_id      INTEGER NOT NULL,
    menu_item_price   FLOAT
);
commit;
ALTER TABLE menu_item2 ADD CONSTRAINT menu_item_pk PRIMARY KEY ( menu_item_id );

--Meal_Dish table
commit;
CREATE TABLE meal_dish2 (
    meal_id        INTEGER NOT NULL,
    menu_item_id   INTEGER NOT NULL
);
commit;
ALTER TABLE meal_dish2 ADD CONSTRAINT meal_dish_pk PRIMARY KEY ( meal_id,
                                                                menu_item_id );
commit;
ALTER TABLE meal_dish2
    ADD CONSTRAINT meal_id_fk FOREIGN KEY ( meal_id )
        REFERENCES meals2 ( meal_id );
commit;
ALTER TABLE meal_dish2
    ADD CONSTRAINT menu_item_fk FOREIGN KEY ( menu_item_id )
        REFERENCES menu_item2 ( menu_item_id );
commit;