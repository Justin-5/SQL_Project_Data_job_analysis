/*
 Question: What skills are required for the top-paying data analyst jobs?
 -Use the top 10 highest-paying Data Analyst jobs from the first query.
 -Add the specific skills required for these roles.
 -Why? It provides a detailed look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develope that align with top salaries.
 */
WITH top_paying_jobs AS (
    SELECT job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM job_postings_fact
        LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Data Analyst'
        AND (
            job_location = 'Anywhere'
            OR job_location = 'Bengaluru, Karnataka, India'
        )
        AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT top_paying_jobs.*,
    skills
FROM top_paying_jobs
    INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC
    /*
     Here’s a concise version of your insights:
     
     ---
     
     ### **SQL (8)**
     
     SQL is the most in-demand skill, appearing in nearly 80% of top-paying roles. It’s the foundation of all analytics work — essential for querying, joining, and optimizing large datasets. Mastery in SQL remains critical for analysts at every level.
     
     ---
     
     ### **Python (7)**
     
     Python ranks just behind SQL and is vital for data cleaning, automation, and advanced analytics. Employers favor analysts who can build scalable scripts and integrate machine learning into workflows using libraries like Pandas and scikit-learn.
     
     ---
     
     ### **Tableau (6)**
     
     Tableau highlights the value of storytelling with data. High-paying roles prioritize analysts who can design interactive dashboards and clearly communicate insights to business leaders.
     
     ---
     
     ### **R (4)**
     
     R represents strong statistical and analytical thinking. Its presence shows that employers still value analysts with deep statistical skills for data modeling and experimentation.
     
     ---
     
     ### **Snowflake (3)**
     
     Snowflake’s inclusion shows a shift toward cloud-based data ecosystems. Modern analysts are expected to understand data architecture and work efficiently within tools like Snowflake, BigQuery, and Databricks.
     
     ---
     
     ### **Summary**
     
     Top-paying data analyst roles demand a hybrid skill set — combining SQL for data handling, Python for automation and modeling, Tableau for visualization, R for statistical depth, and Snowflake for cloud data management. The best-paid analysts blend **technical, analytical, and storytelling skills** to drive strategic decisions.
     
     [
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "sql"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "python"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "r"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "azure"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "databricks"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "aws"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "pandas"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "pyspark"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "jupyter"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "excel"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "tableau"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "power bi"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "powerpoint"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "sql"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "python"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "r"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "hadoop"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "tableau"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "sql"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "crystal"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "oracle"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "tableau"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "flow"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "sql"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "python"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "go"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "snowflake"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "pandas"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "numpy"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "excel"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "tableau"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "gitlab"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "sql"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "python"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "azure"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "aws"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "oracle"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "snowflake"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "tableau"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "power bi"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "sap"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "jenkins"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "bitbucket"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "atlassian"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "jira"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "confluence"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "sql"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "python"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "r"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "git"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "bitbucket"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "atlassian"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "jira"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "confluence"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "sql"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "python"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "go"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "snowflake"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "pandas"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "numpy"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "excel"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "tableau"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "gitlab"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "sql"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "python"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "r"
     }
     ]
     
     */