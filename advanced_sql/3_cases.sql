create table january_jobs as
select *
from job_postings_fact
where EXTRACT(
        MONTH
        from job_posted_date
    ) = 1;
create table february_jobs as
select *
from job_postings_fact
where EXTRACT(
        MONTH
        from job_posted_date
    ) = 2;
create table march_jobs as
select *
from job_postings_fact
where EXTRACT(
        MONTH
        from job_posted_date
    ) = 3;
select job_posted_date
from march_jobs;