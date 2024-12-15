# The United Nations Comtrade Database
An end-to-end ETL pipeline project with the United Nations Commercial Trade Database via GCP Products.

---

## Problem Statement:
Develop a dashboard with two tiles by:
- [x] Selecting a dataset of interest (see [Datasets](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/projects/datasets.md))
- [ ] Creating a pipeline for processing this dataset and putting it to a datalake
- [ ] Creating a pipeline for moving the data from the lake to a data warehouse
- [ ] Transforming the data in the data warehouse: prepare it for the dashboard
- [ ] Building a dashboard to visualize the data

---

## Data Pipeline
The pipeline could be stream or batch: this is the first thing you'll need to decide
- [x] Stream: If you want to consume data in real-time and put them to data lake
- [ ] Batch: If you want to run things periodically (e.g. hourly/daily)

---

## Technology Stack
- [x] __Cloud Platform:__ `GCP`
- [x] __Infrastructure-as-Code (IaC):__ `Terraform`
- [x] __Workflow Orchestration:__ `Mage`
- [x] __Data Lake:__ `Cloud Storage`
- [x] __Data Warehouse:__ `BigQuery`
- [ ] __Data Processing:__
    - [ ] __Batch:__ `Spark`, `Flink`, `AWS Batch`, ...
    - [ ] __Stream:__ `Kafka`, `Pulsar`, `Kinesis`, ...
- [ ] __Business Intelligence Tool:__ `Looker Studio`, `Tableau`, `Metabase`, ...
---

## Dashboard
You can use any of the tools shown in the course (Data Studio or Metabase) or any other BI tool of your choice to build a dashboard. If you do use another tool, please specify and make sure that the dashboard is somehow accessible to your peers.

Dashboard to contain at least two tiles:
- [ ] a graph that shows the distribution of some categorical data
- [ ] a graph that shows the distribution of the data across a temporal line

---

## Evaluation Criteria
- Problem description
    - [ ] 0 points: Problem is not described
    - [ ] 2 points: Problem is described but shortly or not clearly
    - [ ] 4 points: Problem is well described and it's clear what the problem the project solves
- Cloud Platform
    - [ ] 0 points: Cloud is not used, things run only locally
    - [ ] 2 points: The project is developed in the cloud
    - [ ] 4 points: The project is developed in the cloud and IaC tools are used
- Data ingestion (choose either batch or stream)
    - Batch / Workflow orchestration
        - [ ] 0 points: No workflow orchestration
        - [ ] 2 points: Partial workflow orchestration: some steps are orchestrated, some run manually
        - [ ] 4 points: End-to-end pipeline: multiple steps in the DAG, uploading data to data lake
    - Stream
        - [ ] 0 points: No streaming system (like Kafka, Pulsar, etc)
        - [ ] 2 points: A simple pipeline with one consumer and one producer
        - [ ] 4 points: Using consumer/producers and streaming technologies (like Kafka streaming, Spark streaming, Flink, etc)
- Data warehouse
    - [ ] 0 points: No DWH is used
    - [ ] 2 points: Tables are created in DWH, but not optimized
    - [ ] 4 points: Tables are partitioned and clustered in a way that makes sense for the upstream queries (with explanation)
- Transformations (dbt, spark, etc)
    - [ ] 0 points: No tranformations
    - [ ] 2 points: Simple SQL transformation (no dbt or similar tools)
    - [ ] 4 points: Tranformations are defined with dbt, Spark or similar technologies
- Dashboard
    - [ ] 0 points: No dashboard
    - [ ] 2 points: A dashboard with 1 tile
    - [ ] 4 points: A dashboard with 2 tiles
- Reproducibility
    - [ ] 0 points: No instructions how to run the code at all
    - [ ] 2 points: Some instructions are there, but they are not complete
    - [ ] 4 points: Instructions are clear, it's easy to run the code, and the code works

> [!NOTE]
>
> It's highly recommended to create a new repository for your project (not inside an existing repo) with a meaningful title, such as
> "Quake Analytics Dashboard" or "Bike Data Insights" and include as many details as possible in the README file. ChatGPT can assist you with this. Doing so will not only make it easier to showcase your project for potential job opportunities but also have it featured on the [Projects Gallery App](#projects-gallery).
> If you leave the README file empty or with minimal details, there may be point deductions as per the [Evaluation Criteria](#evaluation-criteria).

---

## Going the extra mile (Optional)

> [!NOTE]
>
> The following things are not covered in the course, are entirely optional and they will not be graded.

However, implementing these could significantly enhance the quality of your project:
- Add tests
- Use make
- Add CI/CD pipeline

If you intend to include this project in your portfolio, adding these additional features will definitely help you to stand out from others.

#### Helpful Links

- [Unit Tests + CI for Airflow](https://www.astronomer.io/events/recaps/testing-airflow-to-bulletproof-your-code/)
- [CI/CD for Airflow (with Gitlab & GCP state file)](https://engineering.ripple.com/building-ci-cd-with-airflow-gitlab-and-terraform-in-gcp)
- [CI/CD for Airflow (with GitHub and S3 state file)](https://programmaticponderings.com/2021/12/14/devops-for-dataops-building-a-ci-cd-pipeline-for-apache-airflow-dags/)
- [CD for Terraform](https://towardsdatascience.com/git-actions-terraform-for-data-engineers-scientists-gcp-aws-azure-448dc7c60fcc)
- [Spark + Airflow](https://medium.com/doubtnut/github-actions-airflow-for-automating-your-spark-pipeline-c9dff32686b)

---
---
---
