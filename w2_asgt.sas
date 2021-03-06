/*	Author - Anupama Rajaram
	Function - Calculate frequency distribution for research questions
*/
	
/* 	Suppressing the first part of the program 
	Calculate freq distribution for participants of all ages
	
/* 	Importing data from a file called "anu_ool_pds-w3.csv
	this file has 2295 rows
	Values will be stored in an object call "temp_chk"

data temp_chk; 
   infile " /home/anurajaram230/my_courses/Wesleyan/anu_ool_pds-w3.csv" 
   DELIMITER=',' ;
   Input CASEID W1_CASEID W2_CASEID2 W1_F3 W1_F4_B W1_F4_D W1_F5_A W1_F6; 

/* Giving labels to variable names for better understanding 
LABEL 	CASEID = "Case Number"
		W1_F3 = "Belief in achieving American Dream"
		W1_F4_B = "Achieving financially secure retirement"
		W1_F4_D = "Achieving wealth"
		W1_F5_A = "Owning a home"
		W1_F6 = "How close to achieve the American Dream";
   
/* 	Computing frequency distribution for 5 variables 
PROC FREQ DATA = temp_chk;
	TABLES W1_F3 W1_F4_B W1_F4_D W1_F5_A W1_F6;
	run;

	Code suppression ends here	
*/

	
/* 	Importing data from a file called "anu_ool_pds-w3.csv
	this file has 290 rows
	Values will be stored in an object call "temp_chk"
*/
data temp_chk; 
   infile " /home/anurajaram230/my_courses/Wesleyan/anu_ool_pds-w5.csv" 
   DELIMITER=',' ;
   Input CASEID W1_CASEID W2_CASEID2 PPAGECAT W1_F3 W1_F4_B W1_F4_D W1_F5_A W1_F6; 

/* Giving labels to variable names for better understanding */
LABEL 	CASEID = "Case Number"
		W1_F3 = "Belief in achieving American Dream"
		W1_F4_B = "Achieving financially secure retirement"
		W1_F4_D = "Achieving wealth"
		W1_F5_A = "Owning a home"
		W1_F6 = "How close to achieve the American Dream";
   
/* 	Only considering participants in age range 25-34 */
IF PPAGECAT=2;

/* 	Computing frequency distribution for 5 variables */
PROC FREQ DATA = temp_chk;
	TABLES W1_F3 W1_F4_B W1_F4_D W1_F5_A W1_F6;
	run;
