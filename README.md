# 🪙 Crypto Narrative Analysis Capstone  
*Comparative performance analysis of cryptocurrency narratives using Python, SQL, SAS, and Tableau.*

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SAS](https://img.shields.io/badge/SAS-1E90FF?style=for-the-badge&logo=sas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)


## 📑 Table of Contents
- [Overview](#-project-overview)
- [Methodology](#-methodology)
- [Tools & Technologies](#️-tools--technologies)
- [Results & Visuals](#-results--visuals)
- [Key Findings](#-key-findings--insights)
- [Conclusion](#-conclusion)

---

## 📘 Project Overview  
This capstone investigates the comparative performance of **65 cryptocurrencies** grouped across **10 major narratives**, including **Blue Chip Layer-1s, DeFi, AI & Tech, Meme, Stablecoins, Layer-2s, Infrastructure, Payments & RWA, Metaverse & Gaming, and Emerging Layer-1s**.  

The study evaluates each narrative’s **Return on Investment (ROI)**, **volatility**, and **resilience (drawdown and recovery)** over a multi-year period.  
The project integrates data pipelines, statistical modeling, and visualization dashboards across four analytic environments — **Python, SQL, SAS, and Tableau** — to demonstrate full-stack data analytics capability.

---

## 🎯 Objective  
To determine which cryptocurrency narratives yield the **strongest long-term risk-adjusted returns** and **resilience** in down markets while showcasing advanced analytics skills across multiple professional tools.
 
## 🧠 Methodology  
This project followed a structured, reproducible data science workflow:

1. **Data Collection & Preparation**  
   - Collected historical pricing data for 65 cryptocurrencies across 10 narratives from **CoinGecko**.
   - Cleaned, merged, and enriched datasets using **Python (pandas)**.
   - Created derived metrics such as ROI, volatility, drawdown, and recovery days.

2. **Data Storage & ETL (PostgreSQL)**  
   - Created structured tables for `coin_summary` and `coin_resilience`.  
   - Designed SQL **views** (`vw_coin_metrics`, `vw_category_performance`, `vw_tier_profile`) to aggregate data by narrative and tier, then validated schema relationships in pgAdmin before exporting to SAS and Tableau.


3. **Statistical Modeling (Python & SAS)**  
   - Conducted **ANOVA**, **OLS regression**, and **correlation analysis** using Python (`statsmodels`) and SAS (`PROC CORR`, `PROC MEANS`).
   - Compared narrative-level means and visualized trends in ROI and volatility.

4. **Visualization (Tableau)**  
   - Built a **dashboard** integrating multi-year ROI, volatility, and drawdown metrics.  
   - Highlighted outlier narratives and visualized performance clusters.


Created structured tables for `coin_summary` and `coin_resilience`.  
Designed SQL **views** (`vw_coin_metrics`, `vw_category_performance`, `vw_tier_profile`) to aggregate data by narrative and tier, then validated schema relationships in pgAdmin before exporting to SAS and Tableau.

---

## 🛠️ Tools & Technologies  

| Tool | Purpose | Key Skills Demonstrated |
|------|----------|--------------------------|
| **Python (Jupyter Notebook)** | Data cleaning, descriptive statistics, ANOVA, regression | pandas, numpy, matplotlib, seaborn, statsmodels |
| **PostgreSQL (pgAdmin)** | ETL process, data normalization, aggregated views | SQL schema design, joins, GROUP BY analysis |
| **SAS Studio** | Statistical validation and visualization | PROC IMPORT, PROC CORR, PROC MEANS, SGPlot |
| **Tableau** | Interactive dashboards for business storytelling | KPI charts, risk–reward maps, category ROI comparison |

---
## 📊 Results & Visuals

Below are the final cross-platform visuals generated using **Python (JupyterLab)**, **PostgreSQL (SQL)**, **SAS Studio**, and **Tableau**.  
Together, they illustrate ROI performance, volatility, and recovery trends across 65 cryptocurrencies grouped by narrative and tier.

---

### 🐍 Python (JupyterLab)

| Visualization | Description |
|---------------|-------------|
| ![ROI by Category](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_roi_by_category.png) | **Category-level ROI distribution** — compares median ROI across narratives such as AI, DeFi, Layer 1, and Meme tokens. |
| ![ROI vs Volatility](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_roi_vs_vol.png) | **ROI vs Volatility scatterplot** — analyzes the risk–reward relationship between volatility and returns. |
| ![Volatility by Tier](Crypto%20Narrative%20Analysis/Analysis/python_outputs/plots/plot_vol_by_tier.png) | **Tier comparison boxplot** — contrasts volatility levels among Blue-Chip, Major, and Speculative coins. |

---

### 🗄️ SQL (PostgreSQL Exports & Visual Validation)

#### 📂 **Data Exports**

| Export | Description |
|---------|-------------|
| `coin_metrics.csv` | Aggregated table combining ROI, volatility, and recovery data across all coins. |
| `category_performance.csv` | Narrative-level summary view used for Tableau integration. |
| `tier_profile.csv` | Tier-level breakdown used for SAS validation and Python comparisons. |

🧩 *These SQL views form the structured backbone of the project’s analytics pipeline, enabling consistent cross-tool outputs across Python, SAS, and Tableau.*

---

#### 🧠 **SQL Validation & Visual Outputs**

| Visualization | Description |
|----------------|-------------|
| ![SQL Category Performance View](Crypto%20Narrative%20Analysis/Visuals/SQL/vw_category_performance.png) | **vw_category_performance** — narrative-level aggregation summarizing ROI, volatility, drawdown, and recovery. |
| ![SQL Tier Profile Output](Crypto%20Narrative%20Analysis/Visuals/SQL/sql_tier_profile_output.png) | **vw_tier_profile** — tier-level performance view comparing speculative, blue-chip, and major coins. |
| ![SQL Schema Diagram](Crypto%20Narrative%20Analysis/Visuals/SQL/sql_schema_diagram.png) | **SQL Schema** — illustrates relationships between core tables and SQL views (`coin_summary`, `coin_resilience`, etc.). |

🧩 *These visuals reinforce the SQL layer’s role as the backbone of the analytics pipeline — connecting Python data cleaning with SAS validation and Tableau visualization.*

---

### 📘 SAS Studio

| Visualization | Description |
|----------------|-------------|
| ![ROI by Category (SAS)](Crypto%20Narrative%20Analysis/Visuals/SAS/sas_viz_roi_by_category.png) | **PROC SGPLOT VBOX output** — validates category-level ROI variance and aligns with Python results. |
| ![ROI vs Volatility (SAS)](Crypto%20Narrative%20Analysis/Visuals/SAS/sas_viz_roi_vs_vol.png) | **PROC SGPLOT Scatterplot** — highlights ROI–volatility patterns by tier to confirm cross-tool consistency. |




### 📈 Tableau Dashboards

| Visualization | Description |
|----------------|-------------|
| ![ROI by Narrative](Crypto%20Narrative%20Analysis/Visuals/Tableau/roi_by_narrative.png) | **Interactive dashboard** — tracks ROI trends by narrative (Blue Chip, DeFi, AI & Tech, etc.). |
| ![Risk vs Volatility](Crypto%20Narrative%20Analysis/Visuals/Tableau/risk_vs_volatility.png) | **Risk–Reward Matrix** — maps coins based on volatility and maximum drawdown. |
| ![Resilience Map](Crypto%20Narrative%20Analysis/Visuals/Tableau/resilience_map.png) | **Recovery analysis** — visualizes average drawdown and recovery days by category. |
| ![ROI vs Breakeven](Crypto%20Narrative%20Analysis/Visuals/Tableau/roi_vs_breakeven.png) | **Profitability dashboard** — compares ROI performance versus breakeven ratios. |

---

💡 These visuals collectively demonstrate an end-to-end analytics pipeline — validating insights across Python, SAS, and Tableau while linking statistical modeling to interactive business intelligence.

---

## 🧠 Key Findings & Insights

This capstone project delivers a **complete end-to-end analytics lifecycle** — integrating Python, SQL, SAS, and Tableau — to evaluate cryptocurrency performance across 10 market narratives.

### 🔍 Major Takeaways
- **AI & Tech** and **Blue-Chip Layer 1s** delivered the strongest **long-term ROI** and **resilience**, aligning with their institutional adoption and innovation drivers.  
- **Meme & Community tokens** achieved the **highest short-term gains**, but also showed extreme volatility and inconsistent recovery.  
- **DeFi protocols** exhibited unstable returns tied to liquidity cycles and regulation shocks.  
- **Recovery analysis (SAS + SQL)** showed that coins with **moderate volatility** recovered faster from drawdowns than either ultra-risky or ultra-stable assets.  
- **Regression analysis (Python)** revealed that **volatility alone** doesn’t explain ROI — but combining **drawdown** and **recovery days** improves predictive strength.

---

### 💡 Analytical Highlights

| Tool | Contribution |
|------|---------------|
| **Python (JupyterLab)** | ANOVA, OLS regression, and export automation — examined ROI, volatility, and tier-based performance. |
| **SAS Studio** | Statistical validation using `PROC CORR` and `PROC MEANS`, reinforcing Python findings. |
| **PostgreSQL (pgAdmin)** | ETL process, data normalization, aggregated views, and schema validation | SQL schema design, joins, GROUP BY, `vw_category_performance`, `vw_tier_profile`, and data export integrity 
| **Tableau** | Built interactive dashboards visualizing narrative ROI, volatility, and recovery patterns for decision-making. |

---

### 🚀 Impact & Interpretation
This study introduces a **framework for narrative-based crypto analytics** that blends descriptive, diagnostic, and predictive insights.  
It demonstrates applied expertise in **data pipelines**, **statistical modeling**, and **visual storytelling** — skills directly transferable to professional data analytics and BI roles.  

Key interpretive takeaways:
- **Layer-1 assets** (BTC, ETH, SOL) maintain **strong ROI with lower volatility**, validating their “digital blue-chip” status.  
- **AI & Meme sectors** remain **high-risk, high-return**, performing cyclically but rewarding early entry.  
- **DeFi & RWA narratives** provide **balanced risk–return profiles**, suitable for long-term, fundamentals-driven investors.  
- **Cross-tool validation (Python ↔ SAS)** confirmed correlation structures and strengthened reliability of insights.  

---

### 🧾 Conclusion
An integrated workflow across **Python → SQL → SAS → Tableau** enabled a multi-lens analysis of crypto market behavior.  
By pairing statistical rigor with visualization clarity, this project produces a **decision-ready framework** for investors, analysts, and data professionals seeking narrative-level performance intelligence.


### 🔮 Future Work & Recommendations

This project establishes a foundational multi-platform analytical framework for cryptocurrency performance benchmarking.  
Future enhancements can deepen both analytical precision and automation efficiency:

#### 🧠 Advanced Predictive Analytics
- Integrate **machine learning models** (e.g., Random Forest, XGBoost, or ARIMA) to forecast ROI and volatility trends.  
- Expand regression models to include **market sentiment, trading volume, and macroeconomic indicators**.

#### 📈 Interactive Dashboards
- Upgrade Tableau dashboards with **dynamic parameters** for year-over-year or month-over-month ROI comparisons.  
- Deploy a **Power BI or Streamlit app** for live performance tracking using API-fed crypto data.

#### 🗄️ Automated Data Pipelines
- Convert CSV imports to **ETL pipelines** using Python scripts or SQL stored procedures.  
- Schedule updates via **Airflow, cron jobs, or Azure Data Factory** to ensure continuous refresh cycles.

#### 🔍 Comparative Research Expansion
- Include additional narratives (e.g., **Gaming 2.0**, **ZK Proofs**, **RWA tokens**) as new sectors mature.  
- Evaluate performance resilience under **market shocks**, testing recovery post high-volatility events.

#### 🧾 Reproducibility Enhancements
- Incorporate a **requirements.txt** or **environment.yml** file for full environment replication.  
- Add **Docker support** to streamline deployment for academic or enterprise review.

---

💡 *Together, these extensions would evolve this capstone from a static comparative analysis into a dynamic, continuously learning analytics system — blending finance, data engineering, and AI insights into one unified workflow.*
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
└── README.md                              # Full documentation (you are here 🎯)

```
## 🏁 Final Remarks

This capstone demonstrates a **complete, end-to-end analytics workflow** — from data engineering and modeling to visualization and insight delivery — using **Python, SQL, SAS, and Tableau**.

The project connects quantitative rigor with clear business storytelling, highlighting **narrative-level crypto performance** across ROI, volatility, and resilience metrics.  

By merging structured data warehousing, statistical validation, and interactive dashboards, this study exemplifies **professional-grade analytics execution** suited for business, research, and fintech applications.

---
**Student:** Kevin Turner II  
**Course:** MIS581 – Capstone: Business Intelligence & Data Analytics  
**Institution:** Colorado State University Global  
**Date:** October 2025  


