-- STRING FUNCTIONS
# built in function that will help us work with strings

#Length = Gives us the length of the given string
SELECT LENGTH('SKYFALL');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

#UPPER = Convert the string to uppercase
#LOWER = COnvert the string to lowercase
SELECT UPPER('sky');
SELECT LOWER('SKY');


SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

#Trim = Takes the white space in front or behind and get rid of it
#Ltrim = removes the white space in the left hand side
#Rtrim = removes the white space in the right hand side
SELECT RTRIM('             sky             ');

#LEFT AND RIGHT
#LEFT = How many characters from the left do we want to select
#RIGHT = FROM the end slects the number of characters we put in
SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name,4)
FROM employee_demographics
;

#SUBSTRING
# Gives us the substring from the given position and how many characters we want
SELECT first_name, birth_date,
SUBSTRING(first_name ,3,2),
SUBSTRING(birth_date,6,2) AS month
FROM employee_demographics
;

#REPLACE
# WIll replace specific character with a different character of our choice
SELECT first_name, REPLACE(first_name , 'a' ,'z') #Removes all the a in the first name with z
FROM employee_demographics
;

#LOCATE
# tells us the position of our character or substring
SELECT LOCATE('c','Alecandar');

#Will give the position if their name is containing An otherwise gives 0
SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics
;

#CONCATENATION
#Combines the two column making it a single one
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics
;


