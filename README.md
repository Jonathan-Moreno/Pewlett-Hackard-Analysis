# Pewlett-Hackard-Analysis

## Project Overview

Creating databases to assist a large scale employer in keeping track of their upcoming reitrees.

## Results

* After creating a tailored list of all current employees born between 1952 and 1955, I found that Pewlett-Hackard is expecting 72,458 retirees.
* Filtering through that data to narrow down which positions will need to be filled the most produced the table below, showing that the positions of senior engineer and senior staff are facing the most upcoming retirments.
* ![Screen Shot 2022-03-20 at 5 36 26 PM](https://user-images.githubusercontent.com/96406929/159192919-68ab9aa6-3a5d-477b-8f98-68db2cd71872.png)
* With such a high ammount of offboarding employees, a mentorship program should be put in place where upcoming retirees can mentor younger employees to fill their positions. 
* After querrying through the data to create a table titled "mentorship_eligibility" I found a total of 1,549 employees eligible for the mentorship program.

## Summary 
As the "silver tsunami" begins to make an impact, Pewlett-Hackard will have to fill 72,458 positions. This information can be pulled using the following query:

* SELECT COUNT (emp_no) FROM retiring_titles

It is important to pull the count from this table, as it has had a DISTINCT ON statement applied to the data. This ensures that there are no rows of repeating names on the list. 

Using a similar query we can pull the count from the mentorship_eligibility table to find how many eligible mentors PH will have to assist with the "silver tsunami," the query is as follows:
* SELECT COUNT (emp_no)FROM mentorship_eligibilty;

Running this query will show us that there are 1,549 eligible employees for the mentorship program, with 72,458 positions to fill. This would leave each mentor having to be responsible for ~47 employees each which doesn't seem feasible. It is my belief that PH will have to find more mentors elsewhere before the silver tsunami makes its impact. 

