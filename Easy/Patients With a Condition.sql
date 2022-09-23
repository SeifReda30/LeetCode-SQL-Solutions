/*
Write an SQL query to report the patient_id, patient_name all conditions of patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix

Return the result table in any order.
*/
select patient_id,patient_name,conditions 
from patients 
where conditions like 'DIAB1__ %' or conditions like  '% DIAB1__ %' or conditions like  '% DIAB1__' or conditions like  'DIAB1__'
/*
In this solution I get patient id and name and conditions from patients table filtered by conditions on 4 cases
1- If the condition start with DIAB1__
2- If the condition contains DIAB1__
3- If the condition end with DIAB1__
4- If the condition is equal to DIAB1__
Note: take care of spaces for each like clause so the word DIAB1__ should by a separated word in the conditions string so that it should has a space before it and a space after it
*/
