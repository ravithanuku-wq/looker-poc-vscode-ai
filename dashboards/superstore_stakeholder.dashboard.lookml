- dashboard: superstore_stakeholder
  title: Superstore Stakeholder Overview
  description: "Revenue, profitability, regional and product performance, and order returns."
  layout: newspaper
  filters:
  - name: order_date
    title: Order Date
    type: field_filter
    model: superstore_analytics
    explore: orders
    field: orders.order_date
    allow_multiple_values: true
    required: false
  elements:
  - name: total_sales
    title: Revenue
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [orders.total_sales]
    listen:
      orders.order_date: order_date
  - name: total_profit
    title: Total Profit
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [orders.total_profit]
    listen:
      orders.order_date: order_date
  - name: profit_margin
    title: Profit Margin
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [orders.profit_margin]
    listen:
      orders.order_date: order_date
  - name: total_orders
    title: Total Orders
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [orders.total_orders]
    listen:
      orders.order_date: order_date
  - name: returned_orders
    title: Returned Orders
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [returns.returned_orders_count]
    listen:
      orders.order_date: order_date
  - name: order_return_rate
    title: Order Return Rate
    type: single_value
    model: superstore_analytics
    explore: orders
    fields: [returns.order_return_rate]
    listen:
      orders.order_date: order_date
  - name: sales_profit_trend
    title: Revenue and Profit Over Time
    type: looker_line
    model: superstore_analytics
    explore: orders
    fields: [orders.order_month, orders.total_sales, orders.total_profit]
    sorts: [orders.order_month]
    limit: 500
    listen:
      orders.order_date: order_date
  - name: regional_performance
    title: Performance by Region and Regional Manager
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.region, people.person, orders.total_sales, orders.total_profit, orders.profit_margin]
    sorts: [orders.total_sales desc]
    limit: 100
    listen:
      orders.order_date: order_date
  - name: product_performance
    title: Sales and Profit by Category and Sub-Category
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.category, orders.subcategory, orders.total_sales, orders.total_profit, orders.profit_margin]
    sorts: [orders.total_sales desc]
    limit: 100
    listen:
      orders.order_date: order_date
  - name: low_profit_areas
    title: Lowest-Profit States
    type: looker_grid
    model: superstore_analytics
    explore: orders
    fields: [orders.state, orders.total_sales, orders.total_profit, orders.profit_margin]
    sorts: [orders.total_profit]
    limit: 20
    listen:
      orders.order_date: order_date
  - name: returns_by_region
    title: Returned Orders and Return Rate by Region
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.region, returns.returned_orders_count, returns.order_return_rate]
    sorts: [returns.returned_orders_count desc]
    limit: 20
    listen:
      orders.order_date: order_date
  - name: returns_by_category
    title: Returned Orders and Return Rate by Product Category
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.category, returns.returned_orders_count, returns.order_return_rate]
    sorts: [returns.returned_orders_count desc]
    limit: 20
    listen:
      orders.order_date: order_date
