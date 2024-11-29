select  count("Employee ID"),"Department" as no_of_staffs from hrdata group by "Department";

select "Department",
 ROUND(cast(AVG("Performance Rating") as DECIMAL), 2) as avg_perfo_rate from hrdata group by "Department"

 select "Department",
 ROUND(cast(AVG("L&D Hours") as DECIMAL), 2) as avg_l_and_d_rate from hrdata group by "Department";

select "Department",
 ROUND(cast(AVG("Performance Rating") as DECIMAL), 2) as avg_perfo_rate,
 ROUND(cast(AVG("L&D Hours") as DECIMAL), 2) as avg_l_and_d_rate  from hrdata group by "Department"
 order by avg_perfo_rate desc ;

 select "Department", ROUND(cast(AVG("Tenure (Months)") as DECIMAL), 2) as avg_tenure from hrdata group by "Department"
 order by avg_tenure desc;

  select "Department", ROUND(cast(AVG("Tenure (Months)") as DECIMAL), 2) as avg_tenure from hrdata group by "Department"
 order by avg_tenure desc;

select avg("Engagement Score") as avg_engagement_score,"Department" from hrdata group by "Department" order by avg_engagement_score desc


select avg("Salary (INR)") as avg_salary , "Department" from hrdata group by "Department" order by avg_salary desc

select avg("Salary (INR)") as avg_salary, avg("Performance Rating") as avg_perfo, "Department" as avg_perf from hrdata group by "Department"
order by avg_salary desc

select "Location", avg("Engagement Score") as avg_engag, avg("Performance Rating")as avg_perfomance, avg("Tenure (Months)") as avg_tenure, avg("L&D Hours") as avgld from hrdata group by "Location" order by avg_engag desc