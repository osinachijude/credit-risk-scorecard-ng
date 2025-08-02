# Credit Risk Scorecard Development for Nigerian Lending

A production-grade credit acquisition scorecard built for a Nigerian financial institution using synthetic data in **Naira (₦)**. This project demonstrates end-to-end data science and credit risk modeling skills aligned with regulatory standards and business decision-making.

---

## 🎯 Project Overview

- **Objective**: Build, validate, and deploy a credit risk scorecard to support lending decisions and control loan loss rates.
- **Target**: 90+ days delinquent within 12 months of loan origination.
- **Models**: 
  - Logistic Regression (regulatory-compliant)
  - XGBoost (benchmark)
  - Hybrid ML-Augmented Scorecard
- **Output**: Points-based scorecard, cut-off recommendation, executive insights.

---

## 📁 Repository Structure
├── data/ - Synthetic Nigerian loan dataset
├── notebooks/ - Jupyter notebook with full analysis
├── sql/ - Simulated production SQL query
├── scorecards/ - Excel scorecard tables (3 types)
├── reports/ - Validation & executive summaries
├── images/ - Charts and visualizations
├── README.md - This file
└── LICENSE - MIT

---

## 🧪 Key Features

- **Nigerian Context**: Loan amounts in ₦, local income levels, regions, bureau scores
- **Regulatory Ready**: WOE/IV, PSI, CSI, logistic regression
- **ML Benchmarking**: XGBoost + SHAP explainability
- **Business Impact**: Cut-off at **580** reduces loss rate from 12.3% → 8.1%
- **Stakeholder-Ready**: Executive summary, validation report, MI dashboards

---

## 📈 Model Performance

| Model             | AUC   | KS Statistic | Gini  |
|-------------------|-------|--------------|-------|
| Logistic Regression | 0.76  | 42%          | 52%   |
| XGBoost           | 0.82  | 49%          | 64%   |

> **Recommended Cut-off**: 580 (Balances approval rate and risk)

---

## 📄 Reports & Outputs

- [x] `exec_summary.pdf` – For senior management
- [x] `validation_report.pdf` – For model governance
- [x] `scorecard_tables.xlsx` – Ready for implementation

---

## 🚀 How to Use

1. Clone the repo
2. Open `notebooks/scorecard_development.ipynb`
3. Run cells to reproduce results
4. Use `sql/extract_loans.sql` as template for production

---

## 📄 License

MIT License – Free to use, modify, and share.

