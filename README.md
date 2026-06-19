# 📦 Procurement Management System
### SQL + Power BI · 4,000+ Transactions · Construction & Infrastructure Supply Chain

> Vendor concentration risks, stockout alerts, demand-supply gaps, and monthly spend volatility — identified through structured SQL analysis and visualized in Power BI.

---

## 🔍 What This Project Does

Real procurement teams lose time and money to the same recurring problems: over-reliance on a handful of vendors, poor reorder planning, and budgets that fluctuate wildly month to month. This project uses **SQL analysis on 4,000+ procurement transactions** to surface exactly those issues — and back them with numbers.

The analysis answers five core questions:

1. Which vendors account for the bulk of spend — and what happens if one of them fails?
2. Which products are ordered most, and are we keeping enough stock?
3. Which items have fallen below safe reorder levels?
4. Where is the gap between demand and available stock the most dangerous?
5. How much does monthly spend swing, and why does that matter for budgeting?

---

## 🛠️ Stack

| Tool | Role |
|------|------|
| **MySQL** | Data modeling, querying, aggregation |
| **Power BI** | Dashboard & visual storytelling |
| **Excel / CSV** | Raw data preparation |
| **GitHub** | Version control & project documentation |

---

## 📁 Dataset

**4,000+ procurement transactions** simulating real construction and infrastructure supply chain operations.

| Column | Description |
|--------|-------------|
| `Order ID` | Unique transaction identifier |
| `Product ID / Name` | Item procured |
| `Vendor ID / Name` | Supplier |
| `Quantity` | Units ordered |
| `Unit Price` | Cost per unit |
| `Total Cost` | Order value |
| `Order Date` | Transaction date |
| `Current Stock` | Units in inventory at time of order |
| `Reorder Level` | Minimum stock threshold before replenishment |

---

## 📊 Key Findings

### 1 · Vendor Concentration Risk

Five vendors account for a disproportionate share of total procurement spend:

| Vendor | Total Spend |
|--------|------------:|
| AquaFlow Solutions | ₹10,258,481 |
| Bharat Infra Supply Co. | ₹9,740,426 |
| Shree Steel Traders | ₹9,640,290 |
| Reliable Bitumen Works | ₹9,602,658 |
| Green Earth Aggregates | ₹9,570,257 |

**Risk:** A single vendor failure disrupts procurement cycles and delays project delivery. Diversification across backup suppliers is critical.

---

### 2 · High-Demand Products

Products with the highest cumulative order volume:

| Product | Total Demand |
|---------|-------------:|
| Electrical Cables | 55,098 |
| Bitumen Drums | 50,817 |
| Paver Blocks | 50,653 |
| PVC Drain Pipes | 50,422 |
| Stormwater Grates | 49,137 |

**Risk:** These items drive the most operational activity. Stockouts here don't just delay orders — they stall entire project phases.

---

### 3 · Reorder Threshold Breaches

Items currently below their minimum safe stock levels:

| Product | Current Stock | Reorder Level | Gap |
|---------|-------------:|---------------:|----:|
| PVC Drain Pipes | 5 | 35 | **−30** |
| Paver Blocks | 5 | 45 | **−40** |
| Coarse Aggregates | 5 | 60 | **−55** |
| Stormwater Grates | 5 | 20 | **−15** |

**Risk:** All four require urgent restocking. Delayed action means emergency purchasing at premium cost.

---

### 4 · Demand vs. Stock Gap

Comparing total procurement demand against average available stock:

| Product | Total Demand | Avg Stock | Demand/Stock Ratio |
|---------|-------------:|----------:|-------------------:|
| Electrical Cables | 55,098 | 61.9 | **889.75×** |
| Bitumen Drums | 50,817 | 60.1 | **845.13×** |
| Stormwater Grates | 49,137 | 59.4 | **827.03×** |
| PVC Drain Pipes | 50,422 | 60.9 | **826.97×** |
| Paver Blocks | 50,653 | 63.5 | **797.76×** |

**Risk:** Demand is running 800–900× higher than average stock levels across the top five products. This points to reactive, not planned, procurement — orders get placed after the shortage is already felt.

---

### 5 · Monthly Spending Trend

| Month | Spend |
|-------|------:|
| February | ₹69,707,284 |
| March | ₹82,272,414 |
| October | ₹82,618,027 |
| **December** | **₹90,817,145** |

- **Peak:** December at ₹90.8M
- **Trough:** February at ₹69.7M
- **Swing:** ~₹21M between the lowest and highest months

**Risk:** A 30% swing in monthly spend indicates inconsistent procurement planning, not seasonal demand. Stronger budget controls and rolling forecasts would reduce this volatility.

---

## 📈 Power BI Dashboard

The interactive dashboard covers:

- **Top Vendors by Spend** — concentration risk at a glance
- **High-Demand Products** — ranked by cumulative order volume
- **Low Stock Alert Table** — items below reorder threshold
- **Monthly Procurement Trend** — spend volatility over time

---

## 🗂️ Project Structure

```
procurement-management-system/
├── sql/
│   └── procurement_queries.sql    # All SQL queries used in the analysis
├── data/
│   └── procurement_data.csv       # Raw dataset (4,000+ transactions)
├── dashboard/
│   └── procurement_dashboard.pbix   # Power BI dashboard file
└── README.md
```

---

## 💡 Business Takeaways

| Finding | Action |
|---------|--------|
| Top 5 vendors hold majority of spend | Onboard 2–3 backup suppliers per category |
| 4 products below reorder threshold | Trigger immediate procurement for PVC Pipes, Paver Blocks, Aggregates, Grates |
| Demand/stock ratios above 800× | Move from reactive orders to demand-based forecasting |
| ₹21M monthly spend swing | Implement rolling 3-month procurement budget planning |

---

## 👤 Author

Built to demonstrate how structured SQL analysis translates raw procurement data into operational decisions — reducing vendor risk, preventing stockouts, and bringing predictability to procurement spend.
