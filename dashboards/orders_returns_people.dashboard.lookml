- dashboard: orders_returns_people
  title: Orders, Returns & People Analysis
  layout: newspaper
  description: "Test dashboard for order sales, profitability, returns, and regional sales representatives."
  filters:
  - name: order_date
    title: Order Date
    type: field_filter
    model: superstore_analytics
    explore: orders
    field: orders.order_date_date
    allow_multiple_values: true
    required: false
  elements:
  - name: sales_over_time
    title: Sales and Profit by Order Month
    type: looker_line
    model: superstore_analytics
    explore: orders
    fields: [orders.order_date_month, orders.total_sales, orders.total_profit]
    sorts: [orders.order_date_month]
    limit: 500
    listen:
      orders.order_date_date: order_date
  - name: sales_by_region
    title: Sales by Region
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.region, orders.total_sales, orders.total_profit]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date_date: order_date
  - name: core_kpis
    title: Core Superstore KPIs
    type: looker_grid
    model: superstore_analytics
    explore: orders
    fields: [orders.total_sales, orders.total_profit, orders.profit_margin, orders.total_orders, orders.total_customers, orders.average_order_value]
    limit: 1
    listen:
      orders.order_date_date: order_date
  - name: returned_orders_by_region
    title: Returned Orders by Region
    type: looker_bar
    model: superstore_analytics
    explore: orders
    fields: [orders.region, returns.returned_orders_count, returns.order_return_rate]
    sorts: [returns.returned_orders_count desc]
    limit: 20
    listen:
      orders.order_date_date: order_date
  - name: category_performance
    title: Category Performance
    type: looker_grid
    model: superstore_analytics
    explore: orders
    fields: [orders.category, orders.total_sales, orders.total_profit, orders.total_quantity, orders.average_discount]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date_date: order_date
  - name: regional_representatives
    title: Regional Sales Representatives
    type: looker_grid
    model: superstore_analytics
    explore: orders
    fields: [people.region, people.regional_manager, orders.total_orders, orders.total_sales, returns.order_return_rate]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date_date: order_date
