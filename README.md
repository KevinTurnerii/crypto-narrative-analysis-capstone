# Cryptocurrency Narrative Performance Analytics Framework  
Risk-Adjusted Return Modeling • Cross-Platform Data Engineering

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SAS](https://img.shields.io/badge/SAS-1E90FF?style=for-the-badge&logo=sas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

 **Scope:** 65 cryptocurrencies | 10 narratives | Multi-year analysis  
 **Validation:** Cross-platform consistency verified (Python ↔ SQL ↔ SAS ↔ Tableau)


## Executive Summary

This project evaluates narrative-level cryptocurrency performance across 65 assets and 10 market themes using risk-adjusted return modeling.

Core performance dimensions include:

- Return on Investment (ROI)  
- Volatility  
- Maximum Drawdown  
- Recovery Duration  

Results show that Blue-Chip Layer-1 and AI & Tech narratives delivered the most consistent risk-adjusted returns, while Meme and Emerging Layer-1 sectors exhibited higher upside accompanied by materially elevated volatility and deeper drawdowns.

Cross-platform validation (Python statistical modeling, SQL aggregation, SAS confirmation, Tableau visualization) ensures reproducibility and metric consistency across analytic environments.


## Table of Contents
- [Executive Summary](#executive-summary)
- [Project Overview](#project-overview)
- [Methodology](#methodology)
- [Data Architecture Overview](#data-architecture-overview)
- [Tools & Technologies](#tools--technologies)
- [Results & Visuals](#results--visuals)
- [Key Findings](#key-findings)
- [Business & Analytical Impact](#business--analytical-impact)
- [Conclusion](#conclusion)
- [Future Work](#future-work--recommendations)
- [Reproducibility](#reproducibility)
- [Repository Structure](#repository-structure)
---

## Project Overview  

This project investigates the comparative performance of 65 cryptocurrencies grouped across 10 major market narratives, including Blue-Chip Layer-1s, DeFi, AI & Tech, Meme, Stablecoins, Layer-2s, Infrastructure, Payments & RWA, Metaverse & Gaming, and Emerging Layer-1s.

The study evaluates each narrative’s Return on Investment (ROI), volatility, and resilience (maximum drawdown and recovery duration) over a multi-year period.

The analysis is implemented within a structured, reproducible analytics architecture integrating Python for feature engineering, PostgreSQL for relational modeling and aggregation, SAS for statistical validation, and Tableau for executive visualization.

---
 
## Methodology

The project follows a layered financial analytics workflow:

### Data Engineering (Python)
- Ingested and cleaned historical price data from CoinGecko
- Engineered derived metrics: ROI, volatility, maximum drawdown, recovery days

### Data Warehousing (PostgreSQL)
- Designed normalized schema (`coin_summary`, `coin_resilience`)
- Built analytical views (`vw_category_performance`, `vw_tier_profile`)
- Exported structured outputs for SAS and Tableau integration

### Statistical Modeling (Python & SAS)
- Conducted ANOVA, OLS regression, and correlation analysis
- Compared narrative-level performance distributions
- Validated cross-tool statistical consistency

### Business Intelligence (Tableau)
- Developed risk–return dashboards
- Visualized volatility clustering and recovery behavior

##  Data Architecture Overview

The project follows a layered analytics architecture:

1. Python Layer  
   - Data ingestion and cleaning  
   - Feature engineering (ROI, volatility, drawdown, recovery days)

2. PostgreSQL Layer  
   - Normalized schema (`coin_summary`, `coin_resilience`)  
   - Aggregated analytical views (`vw_category_performance`, `vw_tier_profile`)

3. SAS Validation Layer  
   - Statistical confirmation (correlation, variance analysis)

4. Tableau BI Layer  
   - Interactive dashboards for narrative-level storytelling

This layered design ensures analytical reproducibility and cross-tool validation.

---

## 🛠️ Tools & Technologies  

| Tool | Purpose | Key Skills Demonstrated |
|------|----------|--------------------------|
| **Python (Jupyter Notebook)** | Data cleaning, descriptive statistics, ANOVA, regression | pandas, numpy, matplotlib, seaborn, statsmodels |
| **PostgreSQL (pgAdmin)** | ETL process, data normalization, aggregated views | SQL schema design, joins, GROUP BY analysis |
| **SAS Studio** | Statistical validation and visualization | PROC IMPORT, PROC CORR, PROC MEANS, SGPlot |
| **Tableau** | Interactive dashboards for business storytelling | KPI charts, risk–reward maps, category ROI comparison |


**Skills Demonstrated:**  
Python · SQL · SAS · Tableau · Statistical Modeling · ETL · BI Dashboards · Risk Analysis


---
##  Results & Visuals

Below are the final cross-platform visuals generated using **Python (JupyterLab)**, **PostgreSQL (SQL)**, **SAS Studio**, and **Tableau**.  
Together, they illustrate ROI performance, volatility, and recovery trends across 65 cryptocurrencies grouped by narrative and tier.

---

###  Python (JupyterLab)

| Visualization | Description |
|---------------|-------------|
| ![ROI by Category](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_roi_by_category.png) | **Category-level ROI distribution** — compares median ROI across narratives such as AI, DeFi, Layer 1, and Meme tokens. |
| ![ROI vs Volatility](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_roi_vs_vol.png) | **ROI vs Volatility scatterplot** — analyzes the risk–reward relationship between volatility and returns. |
| ![Volatility by Tier](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_vol_by_tier.png) | **Tier comparison boxplot** — contrasts volatility levels among Blue-Chip, Major, and Speculative coins. |

---

###  SQL (PostgreSQL Exports & Visual Validation)

####  **Data Exports**

| Export | Description |
|---------|-------------|
| `coin_metrics.csv` | Aggregated table combining ROI, volatility, and recovery data across all coins. |
| `category_performance.csv` | Narrative-level summary view used for Tableau integration. |
| `tier_profile.csv` | Tier-level breakdown used for SAS validation and Python comparisons. |

 *These SQL views form the structured backbone of the project’s analytics pipeline, enabling consistent cross-tool outputs across Python, SAS, and Tableau.*

---

####  **SQL Validation & Visual Outputs**

| Visualization | Description |
|----------------|-------------|
| ![SQL Category Performance View](Crypto%20Narrative%20Analysis/Visuals/SQL/vw_category_performance.png) | **vw_category_performance** — narrative-level aggregation summarizing ROI, volatility, drawdown, and recovery. |
| ![SQL Tier Profile Output](Crypto%20Narrative%20Analysis/Visuals/SQL/sql_tier_profile_output.png) | **vw_tier_profile** — tier-level performance view comparing speculative, blue-chip, and major coins. |
| ![SQL Schema Diagram](Crypto%20Narrative%20Analysis/Visuals/SQL/sql_schema_diagram.png) | **SQL Schema** — illustrates relationships between core tables and SQL views (`coin_summary`, `coin_resilience`, etc.). |

 *These visuals reinforce the SQL layer’s role as the backbone of the analytics pipeline — connecting Python data cleaning with SAS validation and Tableau visualization.*

---

###  SAS Studio

| Visualization | Description |
|----------------|-------------|
| ![ROI by Category (SAS)](Crypto%20Narrative%20Analysis/Visuals/SAS/sas_viz_roi_by_category.png) | **PROC SGPLOT VBOX output** — validates category-level ROI variance and aligns with Python results. |
| ![ROI vs Volatility (SAS)](Crypto%20Narrative%20Analysis/Visuals/SAS/sas_viz_roi_vs_vol.png) | **PROC SGPLOT Scatterplot** — highlights ROI–volatility patterns by tier to confirm cross-tool consistency. |




###  Tableau Dashboards

| Visualization | Description |
|----------------|-------------|
| ![ROI by Narrative](Crypto%20Narrative%20Analysis/Visuals/Tableau/roi_by_narrative.png) | **Interactive dashboard** — tracks ROI trends by narrative (Blue Chip, DeFi, AI & Tech, etc.). |
| ![Risk vs Volatility](Crypto%20Narrative%20Analysis/Visuals/Tableau/risk_vs_volatility.png) | **Risk–Reward Matrix** — maps coins based on volatility and maximum drawdown. |
| ![Resilience Map](Crypto%20Narrative%20Analysis/Visuals/Tableau/resilience_map.png) | **Recovery analysis** — visualizes average drawdown and recovery days by category. |
| ![ROI vs Breakeven](Crypto%20Narrative%20Analysis/Visuals/Tableau/roi_vs_breakeven.png) | **Profitability dashboard** — compares ROI performance versus breakeven ratios. |

---

 These visuals collectively demonstrate an end-to-end analytics pipeline — validating insights across Python, SAS, and Tableau while linking statistical modeling to interactive business intelligence.

---

## Key Findings

- Blue-Chip Layer-1 and AI & Tech narratives delivered superior long-term risk-adjusted returns.
- Meme and Emerging Layer-1 assets exhibited the highest upside with extreme volatility.
- Stablecoins demonstrated low ROI and minimal drawdown, functioning primarily as capital preservation instruments.
- Volatility alone does not explain returns — drawdown depth and recovery duration materially improve predictive insight.
  
---
## Business & Analytical Impact

This framework demonstrates the ability to:

- Engineer structured financial datasets from raw market data
- Design normalized SQL schemas and analytical views
- Perform statistical hypothesis testing and regression modeling
- Validate cross-platform analytical consistency
- Translate quantitative findings into executive-level dashboards

The architecture can be adapted to portfolio benchmarking, sector risk analysis, fintech analytics, and financial performance modeling.  

---

###  Conclusion

This project demonstrates the ability to engineer structured financial datasets, design relational SQL schemas and analytical views, apply statistical modeling, and deliver executive-level risk analysis dashboards within a reproducible cross-platform framework.

The architecture supports scalable financial analytics use cases including portfolio benchmarking, sector risk comparison, and narrative-based performance evaluation.

---

## Future Work

- Integrate predictive models (Random Forest, ARIMA) for ROI forecasting  
- Automate ETL pipelines with scheduled refresh workflows  
- Deploy live dashboards using API-fed market data  

---

##  Reproducibility

To replicate this project:

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the Python notebook:

 ```
python_crypto_capstone_final.ipynb
 ```

3. Execute SQL schema and views:

 ```
crypto_schema_views.sql
 ```

4. Run SAS validation script:
 ```

sas_analysis.sas
 ```

5. Open Tableau workbook:

  ```
 Crypto_Narratives_Performance.twbx
 ```

All outputs were validated across tools to ensure consistency.

---

```
Crypto Narrative Analysis/
│
├── Data/
│   ├── processed/                # Clean CSVs used across tools (coin_summary.csv, coin_resilience.csv)
│   └── tableau/                  # Subsets formatted for Tableau dashboards
│
├── Analysis/
│   ├── python_outputs/
│   │   ├── plots/                # Python-generated plots (ROI, Volatility, Tier Analysis)
│   │   ├── py_category_performance.csv
│   │   ├── py_coin_metrics.csv
│   │   ├── py_coin_summary.csv
│   │   └── py_tier_profile.csv
│   │
│   ├── sql_exports/
│   │   ├── category_performance.csv
│   │   ├── coin_metrics.csv
│   │   └── tier_profile.csv
│   │
│   └── sas_outputs/
│       ├── sas_category_summary.csv
│       └── sas_summary_tier.csv
│
├── Scripts/
│   ├── python_crypto_capstone_final.ipynb   # Python notebook (ROI, Volatility, ANOVA, Regression)
│   ├── crypto_schema_views.sql              # SQL schema, joins, and views
│   └── sas_analysis.sas                     # SAS statistical analysis + plots
│
├── Visuals/
│   ├── SQL/
│   │   ├── sql_schema_diagram.png
│   │   ├── sql_tier_profile_output.png
│   │   └── vw_category_performance.png
│   │
│   ├── SAS/
│   │   ├── sas_viz_roi_by_category.png
│   │   └── sas_viz_roi_vs_vol.png
│   │
│   └── Tableau/
│       ├── roi_by_narrative.png
│       ├── risk_vs_volatility.png
│       ├── resilience_map.png
│       ├── roi_vs_breakeven.png
│       └── Crypto_Narratives_Performance.twbx
│
└── README.md                              # Full documentation (you are here)

```


