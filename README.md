# Adventure Works Project

This project is dedicated to transforming and modeling data from the AdventureWorks dataset, hosted in Google BigQuery, to prepare it for insightful analysis and visualization. AdventureWorks is a sample database provided by Microsoft, which simulates a retail company's operations, including sales, product management, and customer interactions.

The transformations in this project focus on:

- Data modeling: building robust dimensions and fact tables to support various business analyses.
- Data quality: ensuring data integrity through rigorous testing and validation.
- Performance optimization: streamlining queries and models for efficient data processing and quick response times.
- Visualization readiness: structuring data in a way that facilitates easy integration with data visualization tools for reporting and dashboards.

This project serves as a foundational layer for business intelligence, enabling stakeholders to derive actionable insights from well-structured and reliable data.

For more information about the Adventure Works Data, access their data dictionary [HERE](https://dataedo.com/download/AdventureWorks.pdf).

All the schemas, tables and interactions can also be checked [HERE](https://raw.githubusercontent.com/dpavancini/analytics-engineering/main/AdventureWorks/AdventureWorksERD.jpeg).

## Tools utilized in this project:

- Google BigQuery
- dbt Cloud
- Power BI
- GitHub

## Project Structure:

- Staging (stg): in the staging layer, raw tables were refined by adjusting data types, reorganizing column positions, and renaming fields for consistency.
- Dimensions (dim): dimension tables were crafted to describe and contextualize the data within the fact table, following a star schema to support effective relationships in Power BI.
- Fact Table (fact): the fact table consolidates the core data, providing direct answers to the business questions and incorporating essential IDs for seamless future connections.

Each table created within this project undergoes rigorous testing to ensure the highest data quality.

Note: seed files were removed from the repository after executing dbt seed to optimize the runtime of dbt run. These files can be retrieved from [THIS](https://github.com/techindicium/academy-dbt) repository.

## Data Models and Lineage:

The links below provide access to key visualizations, including:

[Conceptual Model](https://drive.google.com/file/d/1TGVarulpOfbxSvAut2nOChjDF7P_RdZm/view?usp=sharing): a high-level overview of the main entities and their relationships within the project.

[Star Schema Model](https://drive.google.com/file/d/1ywjyMx2uTr-E-vnB7tvFB_Lzz037REue/view?usp=sharing): a representation of the star schema used in the data warehouse, showing the relationships between fact and dimension tables.

[dbt Lineage](https://drive.google.com/file/d/13A3XZsfcFnn6ceJK7t7RHeNhovB2Mvpv/view?usp=sharing): a visualization of the data lineage within the dbt project, illustrating how data flows through the transformation pipeline.
