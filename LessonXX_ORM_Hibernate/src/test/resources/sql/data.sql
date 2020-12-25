DELETE FROM DISH_PRODUCT;
DELETE FROM DISH;
DELETE FROM PRODUCT;

INSERT INTO DISH (NAME, CUISINE) VALUES ('OMELET', 'EUROPEAN');
INSERT INTO DISH (NAME, CUISINE) VALUES ('MANTI', 'ASIAN');
INSERT INTO DISH (NAME, CUISINE) VALUES ('VARENIKI', 'RUSSIAN');

INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('CHICKEN EGGS', 'NULL', 'PIECES');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('MILK', 'NULL', 'MILLILITER');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('WHEAT FLOUR', 'GROCERY', 'GRAMS');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('WATER', 'NULL', 'MILLILITER');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('POTATOES', 'VEGETABLES', 'GRAMS');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('ONION', 'VEGETABLES', 'GRAMS');
INSERT INTO PRODUCT (NAME, TYPE, UNITS) VALUES ('MEAT', 'NULL', 'GRAMS');

--OMELET: CHICKEN EGGS - 2 PIECES, MILK - 50 GRAM
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'OMELET',
    SELECT ID FROM PRODUCT WHERE NAME = 'CHICKEN EGGS',
    2
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'OMELET',
    SELECT ID FROM PRODUCT WHERE NAME = 'MILK',
    100
);
--MANTI: WATER - 200 MILLILITER, WHEAT FLOUR - 600 GRAM, CHICKEN EGGS - 1 PIECES, MEAT - 400 GRAM, ONION - 200 GRAM
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'MANTI',
    SELECT ID FROM PRODUCT WHERE NAME = 'WATER',
    200
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'MANTI',
    SELECT ID FROM PRODUCT WHERE NAME = 'WHEAT FLOUR',
    600
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'MANTI',
    SELECT ID FROM PRODUCT WHERE NAME = 'CHICKEN EGGS',
    1
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'MANTI',
    SELECT ID FROM PRODUCT WHERE NAME = 'MEAT',
    400
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'MANTI',
    SELECT ID FROM PRODUCT WHERE NAME = 'ONION',
    200
);
--VARENIKI: WATER - 300 MILLILITER, WHEAT FLOUR - 800 GRAM, CHICKEN EGGS - 2 PIECES, POTATOES - 500 GRAM, ONION - 250 GRAM
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'VARENIKI',
    SELECT ID FROM PRODUCT WHERE NAME = 'WATER',
    300
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'VARENIKI',
    SELECT ID FROM PRODUCT WHERE NAME = 'WHEAT FLOUR',
    800
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'VARENIKI',
    SELECT ID FROM PRODUCT WHERE NAME = 'CHICKEN EGGS',
    2
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'VARENIKI',
    SELECT ID FROM PRODUCT WHERE NAME = 'POTATOES',
    500
);
INSERT INTO DISH_PRODUCT (DISH_ID, PRODUCT_ID, QUANTITY) VALUES (
    SELECT ID FROM DISH WHERE NAME = 'VARENIKI',
    SELECT ID FROM PRODUCT WHERE NAME = 'ONION',
    250
);
