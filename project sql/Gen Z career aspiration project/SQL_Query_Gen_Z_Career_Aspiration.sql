SELECT Gender, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
WHERE Country='India'
GROUP BY Gender

--2. What percentage of respondents from India are interested in education abroad and sponsorship?
SELECT Higher_Education_Aspiration, COUNT(*) AS Count,
COUNT(*)*100.0/SUM(COUNT(*)) OVER() AS Percentage
FROM "GEN Z Career Aspirations"
WHERE Country='India'
GROUP BY Higher_Education_Aspiration


--3. What are the 6 top influences on career aspirations for respondents in India?
SELECT TOP 6 Influencing_Factors, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
WHERE Country='India'
GROUP BY Influencing_Factors
ORDER BY COUNT(Influencing_Factors) Desc


--4. How do career aspiration influences vary by gender in India?

SELECT Gender, Influencing_Factors, COUNT(*) AS Count 
FROM "GEN Z Career Aspirations"
WHERE Country='India'
GROUP BY Gender,Influencing_Factors


--5. What percentage of respondents are willing to work for a company for at least 3 years?

SELECT _3_years_tenurity, COUNT(*) AS Count,
COUNT(*)*100.0/SUM(COUNT(*)) OVER() AS Percentage
FROM "GEN Z Career Aspirations"
GROUP BY _3_years_tenurity


--6. How many respondents prefer to work for socially impactful companies?
SELECT Working_for_a_Company_Lacking_Social_Impact, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Working_for_a_Company_Lacking_Social_Impact
ORDER BY Working_for_a_Company_Lacking_Social_Impact


--7. How does the preference for socially impactful companies vary by gender?
SELECT Working_for_a_Company_Lacking_Social_Impact, Gender, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Working_for_a_Company_Lacking_Social_Impact, Gender
ORDER BY Working_for_a_Company_Lacking_Social_Impact, Gender


--8. What is the distribution of minimum expected salary in the first three years among respondents?

SELECT Minimum_expected_monthly_salary_after_3_years, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Minimum_expected_monthly_salary_after_3_years
ORDER BY Count
 

 --9. What is the expected minimum monthly salary in hand?
 SELECT Expected_salary_at_career_start, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Expected_salary_at_career_start
ORDER BY Count



--10. What percentage of respondents prefer remote working?

SELECT Preferred_working_environment, COUNT(*) AS Count,
COUNT(*)*100.0/SUM(COUNT(*)) OVER() AS Percentage
FROM "GEN Z Career Aspirations"
GROUP BY Preferred_working_environment
ORDER BY Count


--11. What is the preferred number of daily work hours?

SELECT Daily_Work_Hours_Preference, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Daily_Work_Hours_Preference
ORDER BY Count


--12. What are the common work frustrations among respondents?
SELECT Reason_for_Frustrations_at_Work, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Reason_for_Frustrations_at_Work
ORDER BY Count

--13. How does the need for work-life balance interventions vary by gender?

SELECT Frequency_of_Breaks_for_Work_Life_Balance, Gender, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Frequency_of_Breaks_for_Work_Life_Balance, Gender
ORDER BY Frequency_of_Breaks_for_Work_Life_Balance, Gender


--14. How many respondents are willing to work under an abusive manager?

SELECT Working_under_ill_speaking_Manager, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Working_under_ill_speaking_Manager
ORDER BY Count


--15. What is the distribution of minimum expected salary after five years?

SELECT Minimum_expected_monthly_salary_after_5_years, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Minimum_expected_monthly_salary_after_5_years
ORDER BY Count



--16. What are the remote working preferences by gender?

SELECT Preferred_working_environment, Gender, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
WHERE Preferred_working_environment LIKE '%Remote%'
GROUP BY  Preferred_working_environment, Gender
ORDER BY  Preferred_working_environment, Gender



--17. What are the top work frustrations for each gender?
SELECT Reason_for_Frustrations_at_Work, Gender, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY  Reason_for_Frustrations_at_Work, Gender
ORDER BY  Reason_for_Frustrations_at_Work, Gender


--18. What factors boost work happiness and productivity for respondents?

SELECT Reason_for_Happiness_and_Productivity_at_Work, COUNT(*) AS Count
FROM "GEN Z Career Aspirations"
GROUP BY Reason_for_Happiness_and_Productivity_at_Work
ORDER BY Count



--19. What percentage of respondents need sponsorship for education abroad?

SELECT Higher_Education_Aspiration, COUNT(*) AS Count,
COUNT(*)*100.0/SUM(COUNT(*)) OVER() AS Percentage
FROM "GEN Z Career Aspirations"
GROUP BY Higher_Education_Aspiration