# 📊 Telco Customer Churn Analysis
### AnalystLab Africa Internship Program — Week 5 Business Analytics Case Study

---

<div align="center">

![Tool 1](https://img.shields.io/badge/SQL-SQL%20Server%20Express-blue?style=for-the-badge&logo=microsoftsqlserver)
![Tool 2](https://img.shields.io/badge/Excel-Data%20Cleaning%20%26%20EDA-green?style=for-the-badge&logo=microsoftexcel)
![Tool 3](https://img.shields.io/badge/PowerBI-Visualisation-yellow?style=for-the-badge&logo=powerbi)

</div>

---

## 📌 Project Overview

This project is a comprehensive, end-to-end **Business Analytics Case Study** completed as part of the **AnalystLab Africa Internship Program**. The analysis focuses on understanding and solving the customer churn problem for a fictional telecommunications company using real-world data from IBM Watson Analytics.

Customer churn — the rate at which customers stop doing business with a company is one of the most costly challenges in the telecommunications industry. Research consistently shows that **acquiring a new customer costs 5 to 7 times more than retaining an existing one**, making churn prevention a direct and measurable lever on business profitability.

This project follows a structured, professional analytics workflow:

```
Data Understanding (SQL) → Data Cleaning & EDA (Excel) → Visualisation & Insights (Power BI)
```

The final output includes a fully interactive **2-page Power BI dashboard**, a detailed **business case study report**, and a **presentation deck** — all grounded in statistical analysis and business context.

> 💡 **Core Finding:** *"1 in 4 customers are churning. The company is losing customers who pay $13 more per month than those who stay — a clear signal of dissatisfaction, not price sensitivity."*

---

## 🗂️ Table of Contents

- [Business Problem Statement](#business-problem-statement)
- [Dataset Description](#dataset-description)
- [Dashboard Preview](#dashboard-preview)
- [Tools & Technologies](#tools--technologies)
- [Project Workflow](#project-workflow)
  - [Step 1: Data Understanding — SQL](#step-1-data-understanding--sql)
  - [Step 2: Data Cleaning & EDA — Excel](#step-2-data-cleaning--excel)
  - [Step 3: Visualisation — Power BI](#step-3-visualisation--power-bi)
- [Key Findings](#key-findings)
- [Business Insights](#business-insights)
- [Recommendations](#recommendations)
- [Folder Structure](#folder-structure)
- [Skills Demonstrated](#skills-demonstrated)
- [Author](#author)

---

## ❓ Business Problem Statement

A telecommunications company is experiencing a **churn rate of 26.5%** significantly above the industry benchmark of 15–20%. This means more than **1 in 4 customers** is leaving within the observation period, representing a substantial and ongoing revenue loss.

The business has identified four critical questions it needs answered:

1. **Why are customers leaving the company?**
2. **Which factors contribute most to customer churn?**
3. **Which customer segments are at the highest risk right now?**
4. **What data-driven actions can the company take to reduce churn?**

This analysis was designed to answer all four questions using the available customer data, producing insights that are directly actionable by marketing, product, and customer success teams.

---

## 📁 Dataset Description

| Attribute | Detail |
|---|---|
| **Dataset Name** | Telco Customer Churn |
| **Source** | [Kaggle — blastchar/telco-customer-churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) |
| **Original Publisher** | IBM Watson Analytics |
| **Total Records** | 7,043 customers |
| **Total Features** | 21 columns (including target variable) |
| **Target Variable** | `Churn` — whether the customer left (Yes / No) |
| **Churned Customers** | 1,869 (26.5%) |
| **Retained Customers** | 5,174 (73.5%) |
| **Time Period** | Cross-sectional snapshot (not time series) |

### Feature Breakdown

| Category | Features | Description |
|---|---|---|
| **Customer ID** | customerID | Unique identifier per customer |
| **Demographics** | gender, SeniorCitizen, Partner, Dependents | Who the customer is |
| **Account Info** | tenure, Contract, PaperlessBilling, PaymentMethod | How and how long they engage |
| **Phone Services** | PhoneService, MultipleLines | Phone-related subscriptions |
| **Internet Services** | InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies | Internet-related add-ons |
| **Financials** | MonthlyCharges, TotalCharges | Revenue metrics |
| **Target** | Churn | Did the customer leave? |

---

## 🛠️ Tools & Technologies

| Tool | Version | Purpose |
|---|---|---|
| **Microsoft SQL Server Express** | 17.0 | Data import, structure exploration, missing value detection, duplicate checking |
| **Microsoft Excel** | 2021/365 | Data cleaning, calculated fields, pivot tables, EDA summary statistics |
| **Microsoft Power BI Desktop** | Latest | Interactive dashboard, DAX measures, calculated columns, data visualisation |

---
## 📸 Dashboard Preview

### Page 1 — Churn Overview & Key Metrics
<img width="521" height="293" alt="Screenshot 2026-07-03 142949" src="https://github.com/user-attachments/assets/576a667e-e42d-4dfb-aea7-5e0fe353aba8" />


### Page 2 — Churn Drivers & Root Cause Analysis
<img width="607" height="341" alt="Screenshot 2026-07-04 072908" src="https://github.com/user-attachments/assets/0553026a-4ccb-4220-9260-60ced6df56f9" />



## 🔄 Project Workflow

### Step 1: Data Understanding — SQL

The dataset was first imported into **SQL Server Express** for structured data exploration before any cleaning or analysis began. SQL was chosen at this stage because it provides a fast, reliable way to understand a dataset's structure, quality, and completeness without altering the data.

#### 1.1 Table Structure Exploration

```sql
-- Check all column names and data types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'WA_Fn-UseC_-Telco-Customer-Churn';
```

This revealed that many Yes/No columns (Partner, Dependents, OnlineSecurity, etc.) were imported as `bit` type rather than `nvarchar` — an important finding that shaped how missing value queries were written.


### Step 2: Data Cleaning & EDA — Excel

After SQL-based exploration, the cleaned dataset was exported to **Microsoft Excel** for deeper exploratory data analysis. Excel was used for its accessibility, pivot table functionality, and ease of creating quick summary statistics.

#### 2.1 Data Cleaning Steps

- ✅ Replaced the 11 rows with blank `TotalCharges` (as a secondary validation step)
- ✅ Verified no duplicate `customerID` values
- ✅ Standardised column headers (removed spaces, consistent casing)
- ✅ Confirmed `SeniorCitizen` values are `0` and `1` (not text)
- ✅ Converted `TotalCharges` from text to number format (Excel sometimes imports mixed types as text)
- 

#### 2.2 Summary Statistics

| Variable | Mean | Min | Max | Std Dev |
|---|---|---|---|---|
| Tenure (months) | 32.4 | 0 | 72 | 24.6 |
| MonthlyCharges ($) | $64.76 | $18.25 | $118.75 | $30.09 |
| TotalCharges ($) | $2,283 | $0 | $8,684 | $2,266 |

---

### Step 3: Visualisation — Power BI

The cleaned and analysed dataset was loaded into **Power BI Desktop** via SQL Server connection for interactive dashboard development. DAX measures and calculated columns were created to power dynamic, slicer-responsive visuals.

#### 3.1 DAX Measures Created

```dax
Total Customers = COUNTROWS('WA_Fn-UseC_-Telco-Customer-Churn')

Churned Customers = 
CALCULATE(COUNTROWS('WA_Fn-UseC_-Telco-Customer-Churn'),
    'WA_Fn-UseC_-Telco-Customer-Churn'[Churn] = 1)

Overall Churn Rate = DIVIDE([Churned Customers], [Total Customers], 0)

Retained Customers = [Total Customers] - [Churned Customers]

Avg Monthly Charges = 
AVERAGE('WA_Fn-UseC_-Telco-Customer-Churn'[MonthlyCharges])

Avg Churned Monthly Charges = 
CALCULATE(AVERAGE('WA_Fn-UseC_-Telco-Customer-Churn'[MonthlyCharges]),
    'WA_Fn-UseC_-Telco-Customer-Churn'[Churn] = 1)

Avg Retained Monthly Charges = 
CALCULATE(AVERAGE('WA_Fn-UseC_-Telco-Customer-Churn'[MonthlyCharges]),
    'WA_Fn-UseC_-Telco-Customer-Churn'[Churn] = 0)

Avg Tenure = 
AVERAGE('WA_Fn-UseC_-Telco-Customer-Churn'[tenure])

#### 3.2 Calculated Columns Created

```dax
Tenure Group = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[tenure] <= 12, "0-12 Months",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[tenure] <= 24, "13-24 Months",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[tenure] <= 48, "25-48 Months",
"49+ Months")))

Senior Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[SeniorCitizen] = 1,
"Senior (65+)", "Non-Senior")

Billing Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[PaperlessBilling] = "Yes",
"Paperless Billing", "Paper Billing")

TechSupport Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[TechSupport] = "Yes", "Has Tech Support",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[TechSupport] = "No", "No Tech Support", "N/A"))

OnlineSecurity Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[OnlineSecurity] = "Yes", "Has Security",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[OnlineSecurity] = "No", "No Security", "N/A"))

DeviceProtection Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[DeviceProtection] = "Yes", "Has Device Protection",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[DeviceProtection] = "No", "No Device Protection", "N/A"))

OnlineBackup Label = 
IF('WA_Fn-UseC_-Telco-Customer-Churn'[OnlineBackup] = "Yes", "Has Online Backup",
IF('WA_Fn-UseC_-Telco-Customer-Churn'[OnlineBackup] = "No", "No Online Backup", "N/A"))
```

#### 3.3 Dashboard Pages

**Page 1 — Churn Overview & Key Metrics**
> *"How serious is the churn problem — and who is most at risk?"*

| Visual | Type | Key Message |
|---|---|---|
| Total Customers | KPI Card | 7,043 customers total |
| Churned Customers | KPI Card | 1,869 customers lost |
| Overall Churn Rate | KPI Card | 26.54% — above benchmark |
| Avg Monthly Charges | KPI Card | $64.76 average bill |
| Avg Tenure | KPI Card | 32.37 months average |
| Churn Distribution | Pie Chart | 73.5% retained vs 26.5% churned |
| Churn by Tenure Group | Column Chart | First-year customers at 47.4% |
| Churn by Contract Type | Bar Chart | Month-to-month at 42.7% |
| Churn by Internet Service | Bar Chart | Fiber optic at 41.9% |
| Avg Monthly Charges by Churn | Donut Chart | Churned pay $74.44 vs $61.27 |
| Avg Tenure by Churn | Bar Chart | Churned stay 18 vs 38 months |

**Page 2 — Churn Drivers & Root Cause Analysis**
> *"Why are customers leaving — and what can be done about it?"*

| Visual | Type | Key Message |
|---|---|---|
| Churn by Payment Method | Bar Chart | Electronic check at 45.3% |
| Churn by Billing Type | Bar Chart | Paperless billing at 33.6% |
| Churn: With vs Without Add-Ons | Clustered Bar Chart | 27pp gap for Online Security |
| Churn by Demographic Factor |Table (conditional formatting) | Seniors and singles at highest risk |
| Slicers | Dropdown | Gender + Contract + Dependents + Partner — filters all visuals |

---

## 🔍 Key Findings

| # | Finding | Statistic |
|---|---|---|
| 1 | Overall churn rate is above industry benchmark | **26.5%** vs 15–20% benchmark |
| 2 | Month-to-month customers churn at an alarming rate | **42.7%** — 15× higher than 2-year holders |
| 3 | Fiber optic — the premium product — drives the most exits | **41.9%** churn rate |
| 4 | Electronic check users are the highest-risk payment segment | **45.3%** churn rate |
| 5 | The first year is the most critical retention window | **47.4%** churn in 0–12 months |
| 6 | Add-on services dramatically reduce churn | **27pp gap** — 41.8% vs 14.6% for Online Security |
| 7 | Senior citizens are the most at-risk demographic | **41.7%** churn rate |
| 8 | Churned customers have significantly shorter tenure | **18 months** vs 38 months retained |
| 9 | Churned customers pay more per month yet still leave | **$74.44** vs $61.27 for retained |
| 10 | Customers without partners or dependents churn more | **33%** and **31.3%** respectively |

---

## 💡 Business Insights

### Insight 1 — The Contract Commitment Gap
The 40-percentage-point churn gap between month-to-month and two-year contracts reveals a structural business model risk. Over 55% of customers are on short-term contracts with no financial reason to stay. This is the single most impactful lever available to reduce churn.

### Insight 2 — Fiber Optic Is Underdelivering
Fiber optic is the company's flagship, highest-priced product — yet it generates the most exits. Customers are paying a premium but not experiencing proportionate value. This points to a quality, reliability, or expectation management failure that requires urgent investigation.

### Insight 3 — The First Year Is Make-or-Break
Nearly half of all new customers churn before completing 12 months. Since customer acquisition costs are only recovered after several months of subscription, losing customers in year one is structurally loss-making. A dedicated onboarding programme is financially essential.

### Insight 4 — Add-On Services Create Stickiness
Each additional service a customer subscribes to deepens their dependence on the platform and raises switching costs. The 27pp churn reduction from Online Security alone demonstrates that cross-selling is a retention strategy, not just a revenue strategy.

### Insight 5 — Payment Method Signals Commitment
Customers who set up automatic payments have made a small but meaningful psychological commitment. Electronic check users retain full monthly optionality — they are on a rolling opt-in basis. Incentivising automatic payment enrollment is a low-cost, high-impact retention lever.

---

## ✅ Recommendations

| # | Recommendation | Expected Impact |
|---|---|---|
| 1 | **Contract Upgrade Campaign** — Offer month-to-month customers 10–15% discount to switch to annual contracts | Reduce overall churn by 6–8pp |
| 2 | **Fix the Fiber Optic Experience** — Audit service quality, introduce a Fiber Guarantee with bill credits | Reduce fiber churn from 41.9% toward 25% |
| 3 | **New Customer Onboarding Programme** — 90-day structured journey: welcome call, 30-day check-in, 60-day cross-sell offer, 90-day loyalty milestone | Reduce first-year churn from 47.4% to below 30% |
| 4 | **Bundle Add-On Services** — Include Online Security & Tech Support in base plans as standard features | Reduce baseline churn by up to 27pp |
| 5 | **Auto-Payment Incentive** — Offer $5/month bill credit to electronic check users who switch to automatic payment | Reduce electronic check churn from 45.3% to ~16% |
| 6 | **Senior Citizen Programme** — Dedicated support line, simplified billing, and 5–8% monthly discount for customers aged 65+ | Reduce senior churn from 41.7% toward 25% |

---

## 📂 Folder Structure

```
telco-churn-analysis/
│
├── 📁 data/
│   └── WA_Fn-UseC_-Telco-Customer-Churn.csv       # Raw dataset from Kaggle
│   └── 01_data_exploration.sql                      # Structure, missing values, duplicates
│   └── Telco_Churn_EDA.xlsx                         # Cleaned data + pivot tables + summary stats
│   └── Telco_Churn_Presentation.pptx                # Slide deck
│   └── dashboard_page1.png                          # Screenshot of Page 1
│   └── dashboard_page2.png                          # Screenshot of Page 2
│
└── README.md                                         # This file
```

---

## 🧠 Skills Demonstrated

| Category | Skills |
|---|---|
| **SQL** | Data import, schema exploration, NULL handling, CASE statements, UPDATE queries, duplicate detection |
| **Excel** | Data cleaning, type conversion, calculated columns, pivot tables, summary statistics, EDA |
| **Power BI** | DAX measures, calculated columns, SWITCH/IF logic, interactive slicers, conditional formatting, clustered bar charts, donut charts, matrix visuals, KPI cards |
| **Analytics** | Churn analysis, segmentation, root cause analysis, business insight generation |
| **Communication** | Business report writing, executive presentation, data storytelling, dashboard design |

---

## 👤 Author

**Name:** *(Vivian Okoaze)*
**Program:** AnalystLab Africa Internship
**Week:** 5 — Business Analytics Case Study
**Dataset:** [Telco Customer Churn — Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

---

## 📜 Disclaimer

*This project was completed as part of the AnalystLab Africa Internship Program for educational purposes. The dataset is publicly available on Kaggle and was originally published by IBM Watson Analytics. All business insights and recommendations are based on the available data and are intended for learning purposes only.*

---

<div align="center">
⭐ If you found this project helpful, consider giving it a star on GitHub! ⭐
</div>
