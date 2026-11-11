- dashboard: orders_returns_people
  title: Orders, Returns & People Analysis
  layout: newspaper
  description: "Test dashboard for order sales, profitability, returns, and regional sales representatives."
  filters:
  - name: order_date
    title: Order Date
    type: field_filter
    model: looker_poc_vscode_ai
    explore: orders
    field: orders.order_date
    allow_multiple_values: true
    required: false
  elements:
  - name: sales_over_time
    title: Sales and Profit by Order Month
    type: looker_line
    model: looker_poc_vscode_ai
    explore: orders
    fields: [orders.order_month, orders.total_sales, orders.total_profit]
    sorts: [orders.order_month]
    limit: 500
    listen:
      orders.order_date: order_date
  - name: sales_by_region
    title: Sales by Region
    type: looker_bar
    model: looker_poc_vscode_ai
    explore: orders
    fields: [orders.region, orders.total_sales, orders.total_profit]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date: order_date
  - name: returned_orders_by_region
    title: Returned Orders by Region
    type: looker_bar
    model: looker_poc_vscode_ai
    explore: orders
    fields: [orders.region, returns.returned_order_count]
    sorts: [returns.returned_order_count desc]
    limit: 20
    listen:
      orders.order_date: order_date
  - name: category_performance
    title: Category Performance
    type: looker_grid
    model: looker_poc_vscode_ai
    explore: orders
    fields: [orders.category, orders.total_sales, orders.total_profit, orders.total_quantity, orders.average_discount]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date: order_date
  - name: regional_representatives
    title: Regional Sales Representatives
    type: looker_grid
    model: looker_poc_vscode_ai
    explore: orders
    fields: [people.region, people.person, orders.order_count, orders.total_sales, orders.return_rate]
    sorts: [orders.total_sales desc]
    limit: 20
    listen:
      orders.order_date: order_date
