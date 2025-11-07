Here is a README file generated based on your SQL project files.

---

# SQL Data Job Analysis Project

## Introduction

This project analyzes data job postings to uncover trends in the data analyst job market. By querying a database of job postings, this analysis aims to identify the top-paying jobs, the most in-demand skills, and the skills that correlate with the highest salaries. The goal is to provide actionable insights for data analysts, job seekers, and professionals looking to optimize their skill sets for career growth.

## Background

The data analytics job market is dynamic and highly competitive. Understanding which skills are most valued by employers is crucial. This project was initiated to answer key questions for aspiring and current data analysts:

- What are the highest-paying data analyst jobs, and where are they located?
- What specific skills are required for these top-tier positions?
- What are the most in-demand skills in the job market overall?
- Which skills command the highest salaries?
- What are the "optimal" skills to learn that balance high demand with a high salary?

## Tools Used

- **Database:** PostgreSQL
- **Language:** SQL
- **Version Control:** Git & GitHub
- **IDE/Editor:** Visual Studio Code

## Analysis

The analysis consists of five main SQL queries, each designed to answer a specific question about the job market. The queries are located in the `project_sql/` directory.

### 1. Top Paying Data Analyst Jobs

- **File:** `1_top_paying_jobs.sql`
- **Purpose:** This query identifies the top 10 highest-paying Data Analyst roles.
- **Logic:** It filters for jobs with the title 'Data Analyst' that are either remote (`Anywhere`) or located in 'Bengaluru, Karnataka, India'. It filters out postings with no specified salary and orders the results by the average yearly salary in descending order.

### 2. Skills for Top Paying Jobs

- **File:** `2_top_paying_jobs_skill.sql`
- **Purpose:** This query identifies the specific skills required for the top 10 highest-paying data analyst jobs found in the first query.
- **Logic:** It uses a Common Table Expression (CTE) named `top_paying_jobs` to first select the top 10 jobs. It then joins this CTE with the `skills_job_dim` and `skills_dim` tables to retrieve the list of skills associated with each of those top jobs, providing insight into what skills are required for high-paying roles.

### 3. Top Demanded Skills

- **File:** `3_top_demanded_skills.sql`
- **Purpose:** This query finds the top 5 most in-demand skills for Data Analysts in India.
- **Logic:** "In-demand" is measured by the number of job postings. This query joins the job postings and skills tables, filters for 'Data Analyst' roles in 'India', and then counts and groups by skill. It orders the results by the demand count to show the most frequently requested skills.

### 4. Top Paying Skills

- **File:** `4_top_paying_skills.sql`
- **Purpose:** This query identifies the skills that are associated with the highest average salaries for Data Analysts in India.
- **Logic:** The query calculates the average `salary_year_avg` for each skill, filtering for 'Data Analyst' roles in 'India' with specified salaries. This reveals which skills are the most financially rewarding, with the results limited to the top 25.

### 5. Optimal Skills to Learn

- **File:** `5_optimal_skills.sql`
- **Purpose:** This query identifies the most "optimal" skills to learn, defined as skills that are both in high demand and have a high average salary.
- **Logic:** This query uses two CTEs: `skills_demand` (to count demand) and `average_salary` (to calculate average salary) for Data Analyst roles in India. It then joins these two CTEs on `skill_id` to present a unified view, ordering by demand and salary to help identify skills that offer the best return on investment for learning.

## What I Learned

- **Database Management:** Gained hands-on experience in the complete database lifecycle, from creating a database (`1_create_database.sql`) and defining a relational schema with primary and foreign keys (`2_create_tables.sql`) to loading data into the tables from CSV files (`3_modify_tables.sql`).
- **Complex SQL Queries:** Developed proficiency in writing complex queries that join multiple tables.
- **Common Table Expressions (CTEs):** Effectively used the `WITH` clause to create CTEs, which was essential for breaking down complex problems into logical, readable steps (as seen in `2_top_paying_jobs_skill.sql` and `5_optimal_skills.sql`).
- **Data Aggregation:** Practiced using aggregate functions like `COUNT()` and `AVG()` paired with the `GROUP BY` clause to summarize data and derive meaningful insights (e.g., skill demand and average salary).
- **Strategic Filtering:** Used `WHERE` and `HAVING` clauses to meticulously filter datasets by job title, location, and salary, ensuring the analysis was focused and the results were accurate.

## Conclusion

This project successfully leveraged SQL to analyze a real-world dataset of job postings. The analysis provides clear, data-driven insights into the Data Analyst job market in India.

The key findings show that while foundational skills like **SQL** and **Excel** are the most in-demand, the highest-paying skills are often more specialized tools, including business intelligence software like **Power BI** and **Visio**, cloud platforms like **Azure**, and project management tools like **Jira**. The "optimal skills" analysis provides a strategic roadmap for professionals to identify which skills to learn to maximize both their job security (high demand) and earning potential (high salary).
