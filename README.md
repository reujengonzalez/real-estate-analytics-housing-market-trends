# Housing Market Trends (Real Estate Analytics) [MySQL, Tableau]

## 📌 Overview
This project analyzes **housing market data** to evaluate price distributions, neighborhood dynamics, and property type performance in the real estate sector. Using **MySQL** for data preparation and **Tableau** for visualization, I designed an interactive **dashboard** with neighborhood and house-type filters to track housing price trends over time.  

The analysis supports data-driven decisions in **property investment, pricing strategy, and urban development planning**.  

---

## 🎯 Objectives
Key goals of the project:
- Measure **average and median housing prices** across neighborhoods.  
- Compare **price distributions** between different house types.  
- Track **long-term price trends** and seasonal fluctuations.  
- Build an **interactive Tableau dashboard** with filters for neighborhood and property type.  

---

## 📂 Dataset Description
- **Source:** Public housing dataset (e.g., Zillow / Kaggle housing data)  
- **Size:** ~20,000 records, multiple fields depending on source  
- **Main Features:**
  - `Date`, `Neighborhood`, `House Type`
  - `Sale Price`, `Lot Size`, `Square Footage`
  - `Bedrooms`, `Bathrooms`
- **Preprocessing with MySQL:**
  - Cleaned and standardized date formats  
  - Removed duplicate property records  
  - Created derived metrics: `Price per Square Foot`, `YoY Growth %`  
  - Aggregated data by neighborhood and property type  

---

## 🛠️ Tools & Techniques
- **MySQL**
  - Aggregate queries for price analysis  
  - Window functions for YoY price growth  
  - Joins & subqueries for neighborhood-level insights  
- **Tableau**
  - Dashboard with dynamic filters (Neighborhood, House Type, Year)  
  - Charts: Trendlines, heatmaps, boxplots, and bar charts  
  - Calculated fields (Median Price, PPSF, Growth %)
  - KPI cards for quick insights  
- **Excel**
  - Used for initial exploration and pivot tables  

---

## 📊 Key Insights
- **Neighborhood Performance:** Certain neighborhoods showed **consistent YoY price growth**, while others remained flat.  
- **House Type Analysis:**  
  - *Single-family homes* had the highest median prices.  
  - *Apartments/condos* showed greater variability across neighborhoods.  
- **Price Distributions:** Luxury homes caused **long-tailed price distributions** in high-value neighborhoods.  
- **Market Trends:** Prices generally rose in Q2 and Q3, suggesting seasonal demand patterns.  

👉 [View Tableau Dashboard](https://public.tableau.com/app/profile/reujen.gonzalez/viz/AmesHousingMarketAnalysisDashboard/Dashboard2)

---

## ⚡ Challenges & Solutions
- **Challenge:** Neighborhood names were inconsistent across records.  
  **Solution:** Used **MySQL string functions** to normalize and standardize neighborhood names.  

- **Challenge:** Wide variation in property sizes distorted price comparisons.  
  **Solution:** Introduced **Price per Square Foot (PPSF)** metric to enable fair comparisons across house types.  

- **Challenge:** Visualizing both median and high-end property trends together.  
  **Solution:** Added **boxplots** in Tableau to capture distribution while showing trendlines for overall growth.  

---

## 🔍 How to Explore
1. **Dashboard** – Explore the interactive Tableau dashboard [here](https://public.tableau.com/app/profile/reujen.gonzalez/viz/AmesHousingMarketAnalysisDashboard/Dashboard2).  
2. **SQL Queries** – Check the `scripts/` folder for MySQL queries.  
3. **Case Study** – Read the full write-up in `real-estate-case-study.docx`.  

---

## 🚀 Next Steps
- Add **forecasting models** to project housing prices.  
- Include **geospatial maps** to highlight neighborhood differences visually.  
- Extend analysis with **rental yields** and **affordability indices**.  
- Automate ETL workflows for **real-time housing market dashboards**.  

---

📌 **Author:** Reujen Gonzalez  

🔗 **Portfolio Website:** [Link](https://reujengonzalez.github.io/) | **LinkedIn:** [Link](https://www.linkedin.com/in/reujen-river-gonzalez-878356350/) | **GitHub:** [Link](https://github.com/reujengonzalez)  
