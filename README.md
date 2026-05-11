# ☕ Coffee Shop Sales Analytics Dashboard (Power BI)

---

## 📌 Short Description / Purpose

An end-to-end sales analytics dashboard built in Power BI to evaluate the performance of a multi-location Coffee Shop chain across **3 store locations** in New York City. The dashboard enables operations and business teams to monitor revenue trends, identify peak sales periods, understand product performance, and make data-driven decisions to improve profitability and customer experience.

---

## 🛠️ Tech Stack

- **Power BI Desktop** — Dashboard development and report publishing
- **DAX (Data Analysis Expressions)** — KPI measures, MoM calculations, time intelligence
- **Power Query (M Language)** — Data cleaning, type conversion, transformation
- **MySQL** — Data extraction, pre-analysis, and KPI validation queries
- **Excel (.xlsx)** — Source data file
- **Star Schema Data Modelling** — Date_Table + Transactions fact table
- **Data Visualization & KPI Design** — Calendar heatmap, bar charts, donut charts, matrix heatmap

---

## 📂 Data Source

Dataset contains **149,116 real transaction records** across January to June 2023 from a coffee shop chain with 3 New York City locations.

**Table: Transactions (Fact Table)**

| Column | Description |
|---|---|
| `transaction_id` | Unique transaction identifier |
| `transaction_date` | Date of transaction (Jan–Jun 2023) |
| `transaction_time` | Time of transaction (hour level) |
| `transaction_qty` | Quantity of items sold |
| `store_id` | Store identifier |
| `store_location` | Hell's Kitchen / Astoria / Lower Manhattan |
| `product_id` | Product identifier |
| `unit_price` | Price per unit |
| `product_category` | Coffee, Tea, Bakery, Drinking Chocolate, etc. |
| `product_type` | Barista Espresso, Brewed Chai Tea, Hot Chocolate, etc. |
| `product_detail` | Full product name and size |

**Supporting Table: Date_Table (Dimension)**
Custom calculated date table built in DAX for time intelligence functions.

---

## ✨ Features / Highlights

### 🔴 Business Problem
The coffee shop management team had no unified view of sales performance across their 3 locations. Key questions like — *Which store is performing best? What hours drive the most revenue? Which products should be promoted?* — could not be answered without manual, time-consuming reporting.

### 🎯 Goal of the Dashboard
To build a dynamic, interactive sales performance dashboard that gives management a clear, real-time picture of revenue, orders, and quantity sold — broken down by location, product, time of day, and day of week — enabling faster and smarter operational decisions.

---

### 📊 Walkthrough of Key Visuals

**Page 1 — Sales Report (Main Dashboard)**

| Visual | What It Shows |
|---|---|
| **KPI Cards** | Total Sales ($698K), Total Orders (149K), Total Qty Sold (214K) with MoM % change |
| **Month Filter + Calendar** | Interactive month selector with a calendar chart showing daily sales intensity |
| **Sales Trend (Bar Chart)** | Daily sales trend for selected month vs average sales line |
| **Sales by Weekend vs Weekday (Donut)** | Weekend 27.94% vs Weekday 72.06% revenue split |
| **Sales by Store Location (Bar)** | Revenue comparison across Hell's Kitchen, Astoria, Lower Manhattan |
| **Sales by Product Category (Bar)** | Revenue ranked by category — Coffee leads at $270K |
| **Top Product Types (Bar)** | Top 10 product types by revenue |
| **Sales by Day & Hour (Matrix Heatmap)** | Hour vs Day grid showing peak revenue combinations |

**Page 2 — ToolTip: Calendar Chart**
Hover-over tooltip showing daily sales, orders, and quantity for any date on the calendar.

**Page 3 — ToolTip: Day & Hour Chart**
Hover-over tooltip showing hour-level breakdown for any day-hour combination in the matrix.

---

## 📈 Business Impact & Insights

### 💰 Overall Performance (Jan–Jun 2023)

| Metric | Value |
|---|---|
| **Total Revenue** | $698,812 |
| **Total Orders** | 149,116 |
| **Total Qty Sold** | 214,470 |
| **Average Order Value** | $4.69 |

---

### 📅 Monthly Revenue Trend — Consistent Growth

| Month | Revenue | Orders | MoM Growth |
|---|---|---|---|
| January 2023 | $81,678 | 17,314 | — |
| February 2023 | $76,145 | 16,359 | -6.8% |
| March 2023 | $98,835 | 21,229 | +29.8% |
| April 2023 | $118,941 | 25,335 | +20.3% |
| May 2023 | $156,728 | 33,527 | +31.8% |
| June 2023 | $166,486 | 35,352 | +6.2% |

> 📌 **Insight:** Revenue nearly doubled from January to June — a 103% growth over 6 months. The February dip is likely seasonal; the sharp March rebound suggests a promotional or seasonal upturn.

---

### 🏪 Sales by Store Location

| Location | Revenue | Orders |
|---|---|---|
| Hell's Kitchen | $236,511 | 50,735 |
| Astoria | $232,244 | 50,599 |
| Lower Manhattan | $230,057 | 47,782 |

> 📌 **Insight:** All three locations perform within 3% of each other — indicating consistent brand standards. Hell's Kitchen holds a slight edge in both revenue and footfall.

---

### ☕ Sales by Product Category

| Category | Revenue | Share |
|---|---|---|
| Coffee | $269,952 | 38.6% |
| Tea | $196,406 | 28.1% |
| Bakery | $82,316 | 11.8% |
| Drinking Chocolate | $72,416 | 10.4% |
| Coffee Beans | $40,085 | 5.7% |
| Branded | $13,607 | 1.9% |
| Loose Tea | $11,214 | 1.6% |
| Flavours | $8,409 | 1.2% |
| Packaged Chocolate | $4,408 | 0.6% |

> 📌 **Insight:** Coffee and Tea together account for **66.7%** of total revenue. Bakery is a strong third — bundled promotions could further lift average order value.

---

### 🥇 Top 10 Product Types by Revenue

| Rank | Product Type | Revenue |
|---|---|---|
| 1 | Barista Espresso | $91,406 |
| 2 | Brewed Chai Tea | $77,082 |
| 3 | Hot Chocolate | $72,416 |
| 4 | Gourmet Brewed Coffee | $70,035 |
| 5 | Brewed Black Tea | $47,932 |
| 6 | Brewed Herbal Tea | $47,540 |
| 7 | Premium Brewed Coffee | $38,781 |
| 8 | Organic Brewed Coffee | $37,747 |
| 9 | Scone | $36,866 |
| 10 | Drip Coffee | $31,984 |

> 📌 **Insight:** Barista Espresso alone contributes **13.1%** of total revenue — the single most critical product to stock, staff for, and promote.

---

### 🕐 Sales by Hour — Peak Trading Hours

| Hour | Revenue | Performance |
|---|---|---|
| 10:00 AM | $88,673 | 🔴 Peak |
| 9:00 AM | $85,170 | 🔴 Peak |
| 8:00 AM | $82,700 | 🔴 Peak |
| 7:00 AM | $63,526 | 🟠 High |
| 11:00 AM | $46,319 | 🟡 Moderate |
| 3:00 PM | $41,733 | 🟡 Moderate |
| 2:00 PM | $41,305 | 🟡 Moderate |
| 4:00 PM | $41,123 | 🟡 Moderate |

> 📌 **Insight:** Morning rush (7–10 AM) drives approximately **45% of daily revenue** in just 4 hours. Staff fully and prep inventory for this window.

---

### 📆 Sales by Day of Week

| Day | Revenue |
|---|---|
| Monday | $101,677 |
| Friday | $101,373 |
| Thursday | $100,768 |
| Wednesday | $100,314 |
| Tuesday | $99,456 |
| Sunday | $98,330 |
| Saturday | $96,894 |

> 📌 **Insight:** Sales are consistent across all 7 days — varying by less than 5%. Saturday being the lowest suggests an office-commuter dominant customer base.

---

### 📅 Weekend vs Weekday Split

| Period | Revenue | Orders | Share |
|---|---|---|---|
| Weekdays (Mon–Fri) | $503,588 | 107,510 | 72.06% |
| Weekends (Sat–Sun) | $195,225 | 41,606 | 27.94% |

> 📌 **Insight:** Weekdays generate **2.6x more revenue** than weekends. Weekend promotions or family bundles could help close this gap.

---

### 🏆 Top 5 Individual Products by Revenue

| Product | Revenue |
|---|---|
| Sustainably Grown Organic Lg | $21,152 |
| Dark Chocolate Lg | $21,006 |
| Latte Rg | $19,112 |
| Cappuccino Lg | $17,642 |
| Morning Sunrise Chai Lg | $17,384 |

> 📌 **Insight:** Large-size premium products dominate — upselling to large sizes could push AOV beyond $4.69.

---

## 🗄️ MySQL Queries Used

### 🔧 Data Preparation & Cleaning

```sql
CREATE DATABASE coffee_shop_sales_db;

ALTER TABLE coffee_shop_sales
CHANGE COLUMN `ï»¿transaction_id` transaction_id INT;

UPDATE coffee_shop_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%d-%m-%Y');

ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_date DATE;

UPDATE coffee_shop_sales
SET transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s');

ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_time TIME;

SET SQL_SAFE_UPDATES = 0;
DESCRIBE coffee_shop_sales;
```

### Q1 — Total Sales + MoM Growth

```sql
SELECT CONCAT(ROUND(SUM(unit_price * transaction_qty)) / 1000, 'K') AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5;

SELECT
    MONTH(transaction_date) AS Month,
    ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales,
    (SUM(unit_price * transaction_qty) - LAG(SUM(unit_price * transaction_qty), 1)
        OVER (ORDER BY MONTH(transaction_date))) /
     LAG(SUM(unit_price * transaction_qty), 1)
        OVER (ORDER BY MONTH(transaction_date)) * 100 AS MOM_Increase_Percentage
FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);
```

### Q2 — Total Orders + MoM Growth

```sql
SELECT COUNT(transaction_id) AS Total_Orders
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5;

SELECT
    MONTH(transaction_date) AS Month,
    ROUND(COUNT(transaction_id)) AS Total_Orders,
    (COUNT(transaction_id) - LAG(COUNT(transaction_id), 1)
        OVER (ORDER BY MONTH(transaction_date))) /
     LAG(COUNT(transaction_id), 1)
        OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);
```

### Q3 — Total Quantity Sold + MoM Growth

```sql
SELECT SUM(transaction_qty) AS Total_Quantity_Sold
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5;

SELECT
    MONTH(transaction_date) AS Month,
    ROUND(SUM(transaction_qty)) AS Total_Quantity_Sold,
    (SUM(transaction_qty) - LAG(SUM(transaction_qty), 1)
        OVER (ORDER BY MONTH(transaction_date))) /
     LAG(SUM(transaction_qty), 1)
        OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);
```

### Q4 — Calendar Heat Map (Single Day)

```sql
SELECT
    CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000, 1), 'K') AS Total_Sales,
    CONCAT(ROUND(SUM(transaction_qty) / 1000, 1), 'K') AS Total_Quantity_Sold,
    CONCAT(ROUND(COUNT(transaction_id) / 1000, 1), 'K') AS Total_Orders
FROM coffee_shop_sales
WHERE transaction_date = '2023-05-18';
```

### Q5 — Weekend vs Weekday Sales

```sql
SELECT
    CASE
        WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'Weekends'
        ELSE 'Weekdays'
    END AS date_type,
    SUM(unit_price * transaction_qty) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY date_type;
```

### Q6 — Sales by Store Location

```sql
SELECT
    store_location,
    CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000, 2), 'K') AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY store_location
ORDER BY SUM(unit_price * transaction_qty) DESC;
```

### Q7 — Average Daily Sales + Above/Below Average Flag

```sql
SELECT AVG(Total_Sales) AS Avg_Sales
FROM (
    SELECT SUM(unit_price * transaction_qty) AS Total_Sales
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 5
    GROUP BY transaction_date
) AS Internal_Query;

SELECT
    day_of_month,
    CASE
        WHEN total_sales > avg_sales THEN 'Above_Avg'
        WHEN total_sales < avg_sales THEN 'Below_Avg'
        ELSE 'Avg'
    END AS sales_status,
    total_sales
FROM (
    SELECT
        DAY(transaction_date) AS day_of_month,
        SUM(unit_price * transaction_qty) AS total_sales,
        AVG(SUM(unit_price * transaction_qty)) OVER() AS avg_sales
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 5
    GROUP BY DAY(transaction_date)
) AS sales_data
ORDER BY day_of_month;
```

### Q8 — Sales by Product Category

```sql
SELECT
    product_category,
    SUM(unit_price * transaction_qty) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY product_category
ORDER BY SUM(unit_price * transaction_qty) DESC
LIMIT 10;
```

### Q9 — Sales by Hour & Day of Week

```sql
SELECT
    HOUR(transaction_time) AS Hours,
    SUM(transaction_qty * unit_price) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY HOUR(transaction_time)
ORDER BY HOUR(transaction_time);

SELECT
    CASE
        WHEN DAYOFWEEK(transaction_date) = 2 THEN 'Monday'
        WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
        WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
        WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
        WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
        WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
        ELSE 'Sunday'
    END AS Day_of_Week,
    ROUND(SUM(transaction_qty * unit_price)) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY Day_of_Week;
```

---

## 📐 DAX Measures & Calculated Columns

### Date Table

```dax
Date_Table = CALENDAR(MIN(Transactions[transaction_date]), MAX(Transactions[transaction_date]))
```

### Calculated Columns

```dax
Month Name = FORMAT(Date_Table[Date], "MMM YYYY")
Month Number = MONTH(Date_Table[Date])
Week Day = FORMAT(Date_Table[Date], "DDD")
Week Day Number = WEEKDAY(Date_Table[Date], 2)
Hour = HOUR(Transactions[transaction_time])
```

### Core KPI Measures

```dax
Total Sales = SUM(Transactions[transaction_qty] * Transactions[unit_price])
Total Orders = COUNT(Transactions[transaction_id])
Total Qty Sold = SUM(Transactions[transaction_qty])
```

### MoM Measures

```dax
PM Sales = CALCULATE([Total Sales], DATEADD(Date_Table[Date], -1, MONTH))
MOM Sales Diff = [Total Sales] - [PM Sales]
MOM Sales Growth = DIVIDE([MOM Sales Diff], [PM Sales], 0)

PM Orders = CALCULATE([Total Orders], DATEADD(Date_Table[Date], -1, MONTH))
MOM Orders Diff = [Total Orders] - [PM Orders]
MOM Orders Growth = DIVIDE([MOM Orders Diff], [PM Orders], 0)

PM Qty = CALCULATE([Total Qty Sold], DATEADD(Date_Table[Date], -1, MONTH))
MOM Qty Diff = [Total Qty Sold] - [PM Qty]
MOM Qty Growth = DIVIDE([MOM Qty Diff], [PM Qty], 0)
```

### Sales Trend Measures

```dax
Average Sales = AVERAGEX(VALUES(Date_Table[Date]), [Total Sales])

Sales vs Avg =
VAR Avg = [Average Sales]
VAR Current = [Total Sales]
RETURN
    IF(Current > Avg, "Above Average", IF(Current < Avg, "Below Average", "Average"))
```

## 💡 Key Takeaways for Business

1. **Protect the morning rush** — 7–10 AM drives ~45% of daily revenue. Staff fully and prep inventory the night before.
2. **Barista Espresso is your anchor product** — 13.1% of total revenue. Always available, well-priced, prominently positioned.
3. **All 3 stores are healthy** — no underperforming location. Focus on consistent service standards.
4. **Weekend revenue gap is an opportunity** — targeted weekend promotions could unlock $50K+ in incremental annual revenue.
5. **Upsell premium large-size products** — top 5 products are all large-size. Push AOV above $5.00.
6. **Tea is your second biggest category** — 28% of revenue. Deserves dedicated menu and marketing attention.

---
