# PAINTING-PROJECT-SQL-
SQL-based data analysis project exploring artists, paintings, museums, and art market trends using advanced queries, joins, aggregations, and window functions.

📌 Project Overview

This project applies data analytics techniques using SQL to explore and extract business intelligence from a structured art market dataset containing artists, paintings, museums, and pricing information.

The objective of this project is to simulate a real-world data science workflow:

Data exploration

Pattern identification

Aggregation & feature extraction

Ranking & comparative analysis

Insight generation

The dataset includes:

421 Artists

14,775 Paintings

35 Art Styles

Multiple Nationalities

Global Museum Collections

Artwork Pricing Data

🎯 Problem Statement

Art institutions and collectors need to understand:

Which artists generate the highest economic value?

Which museums hold the most valuable collections?

How does nationality influence market performance?

Are certain artists consistently high-performing?

What historical periods show higher artistic concentration?

This project answers these questions using structured data analysis techniques.

🗂 Data Model & Structure

The relational database includes:

artist – Artist demographics (nationality, lifespan)

work – Artwork metadata

museum – Museum collection details

product_size – Pricing & size information

canvas_size

subject

image_link

Data Relationships

One-to-many relationships between artists and works

One-to-many relationships between museums and works

Pricing linked at artwork level

This schema enables feature engineering through joins and aggregation.

🔎 Analytical Methodology
1️⃣ Exploratory Data Analysis (EDA)

Count of artists and artworks

Distribution of nationalities

Distribution of art styles

Temporal analysis (1800–1900 artist activity)

Objective: Understand dataset scale, diversity, and historical spread.

2️⃣ Feature Engineering via Aggregation

Derived features such as:

Total paintings per artist

Total sales value per artist

Average painting price per artist

Total collection value per museum

Sales distribution by nationality

Used:

COUNT()

SUM()

AVG()

GROUP BY

These features simulate metrics commonly used in real-world analytics.

3️⃣ Ranking & Comparative Analysis

Applied window functions to:

Rank artists by total revenue

Identify top 3 most expensive paintings

Identify top 5 artists by average price

Determine the museum with highest total asset value

Used:

RANK() OVER()

Ordered aggregations

Multi-table joins

This mirrors ranking models used in financial and performance analytics.

📊 Key Insights

A small subset of artists contributes disproportionately to total market value (Pareto-like distribution).

French artists dominate in total volume of paintings sold.

The 19th century (1800–1900) was a peak artistic production period.

High average price artists differ from high total revenue artists — indicating consistency vs. volume distinction.

Certain museums hold significantly higher total asset value, reflecting institutional prestige.

📈 Data Science Relevance

This project demonstrates:

Structured data exploration

Business metric engineering

Financial data aggregation

Ranking models using window functions

Insight extraction from relational databases

Analytical thinking applied to cultural datasets

Although implemented in SQL, the analytical approach mirrors data science workflows used in:

Market analysis

Revenue analytics

Asset valuation

Performance modeling

🛠 Technologies Used

MySQL

MySQL Workbench

Advanced SQL (Joins, Aggregations, Window Functions)

💡 Core Competencies Demonstrated

Data Exploration & Profiling

Feature Engineering via Aggregation

Relational Data Modeling

Performance Ranking & Comparative Analytics

Business Insight Communication

Analytical Problem Solving

🏁 Conclusion

This project highlights how structured query languages can be used to perform advanced analytical tasks typically associated with data science workflows. By transforming raw relational data into interpretable metrics and rankings, the project bridges the gap between database querying and data-driven decision-making.

It demonstrates strong foundations in:

Data manipulation

Metric construction

Insight generation

Business-focused analysis
