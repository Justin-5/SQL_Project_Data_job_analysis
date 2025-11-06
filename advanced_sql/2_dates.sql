SELECT count(job_id) as jobs,
    EXTRACT(
        MONTH
        from job_posted_date
    ) as month
FROM job_postings_fact
GROUP BY month
ORDER BY jobs desc;