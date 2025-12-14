# Financial Stock Analysis

This project analyzes historical stock price data using SQL.  
It applies financial analytics techniques such as daily return calculation, moving averages, volatility measurement, and technical trading signals (Golden Cross strategy).

The project is designed to demonstrate strong SQL skills including:
- Window functions  
- Time-series analysis  
- CTEs  
- Aggregations  
- Data exploration

## 🔍 Dataset Description

The dataset contains daily stock price information with the following columns:

| Column     | Description |
|-----------|-------------|
| Date      | Trading date |
| Open      | Opening price |
| High      | Highest price of the day |
| Low       | Lowest price |
| Close     | Closing price |
| Adj_Close | Adjusted close price |
| Volume    | Total shares traded |

## 📊 Dataset Description

The dataset contains daily stock information, including:

- **Date** – Trading day  
- **Open** – Opening market price  
- **High** – Highest price during the day  
- **Low** – Lowest price during the day  
- **Close** – Final closing price  
- **Adjusted Close** – Price adjusted for splits/dividends  
- **Volume** – Number of shares traded  

This dataset is used as the base for all SQL analysis.

## 🔍 Analysis Performed

---

### **1️⃣ Daily Return Analysis**
Daily returns measure how much the stock price changes from one day to the next.  
This helps identify trends, market behavior, and volatility.

The formula used computes the percentage increase or decrease compared to the previous day.

---

### **2️⃣ Moving Average Analysis (7-day & 30-day)**
Two types of moving averages were calculated:

- **7-day Moving Average:** Shows short-term price trends  
- **30-day Moving Average:** Shows long-term behavior  

These are used by analysts to observe momentum, trend reversals, and price smoothing.

---

### **3️⃣ Buy/Sell Signal Generation (Golden Cross Strategy)**
A classic technical indicator was used:

- When the **short-term average rises above** the long-term average → **BUY signal**  
- When the **short-term average falls below** the long-term average → **SELL signal**  
- Otherwise → **HOLD**

This strategy is widely used in algorithmic trading.

---

### **4️⃣ Volatility Measurement (30-Day Rolling Standard Deviation)**
Volatility indicates how much the stock price fluctuates over time.  
A rolling 30-day standard deviation was used to identify:

- Highly unstable market periods  
- High-risk vs low-risk zones  
- Impact of economic events on the stock

---

### **5️⃣ Monthly and Yearly Return Calculations**
Returns were aggregated by:

- **Month** – to compare performance across months  
- **Year** – to measure long-term growth  

These calculations help illustrate how the stock performs in different time periods.

---

### **6️⃣ High Volume Days Analysis**
Identified the days with the highest trading activity.  
High volume often signals:

- Major news events  
- Institutional buying/selling  
- Trend reversals  

---

### **7️⃣ Summary Statistics**
Key descriptive statistics were extracted:

- Minimum closing price  
- Maximum closing price  
- Average price over the entire period  
- Standard deviation (overall volatility)

This gives a quick overview of the stock’s performance.

---

## 🧠 Skills Demonstrated

This project showcases the following SQL skills:

- Window Functions  
- Common Table Expressions (CTEs)  
- Time-Series Analysis  
- Financial Metrics Calculation  
- Statistical Analysis  
- Data Exploration & Cleaning  
- MySQL Workbench Usage  

