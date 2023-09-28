create table diabeties2(Pregnancies int,Glucose int,BloodPressure int, SkinThickness int, Insulin int, BMI float4 , DiabetesPedigreeFunction float4, Age int, Outcome int)

select * from diabeties2

copy diabeties2 from 'C:\Users\HP\Desktop\meriskill\D1.csv' WITH csv header

select age,count(outcome) as diabeticsbyage from diabeties2
where outcome =1 
group by age

select age, glucose , count(outcome) as diabeticsbyglucose from diabeties2
where outcome = 1
group by age,glucose 


select age, glucose from diabeties2
where outcome = 1
group by age,glucose

select age,max(glucose) from diabeties2
where outcome=1
group by age

select count(outcome) from diabeties2
where outcome=0

select count(outcome) from diabeties2
where outcome=1

select  count(age), age  from diabeties2
where outcome=1 and age>50
group by age

select  count(age)  from diabeties2
where outcome=1 and age>50

select max(diabetespedigreefunction) from diabeties2
where outcome=1 

select max(diabetespedigreefunction) from diabeties2
where outcome=1 and age>40

select * from diabeties2
where outcome=1 and age>40 and insulin>800

select avg(age) from diabeties2
where outcome=1

select avg(BMI) from diabeties2
where outcome=1

select avg(BMI) from diabeties2
where outcome=0

select * from diabeties2
where glucose > 100

select * from diabeties2
where bloodpressure > 100

select * from diabeties2
where bloodpressure > 100 and glucose >100
