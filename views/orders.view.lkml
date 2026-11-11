view: orders {
  sql_table_name: default.orders ;;
  drill_fields: [order_id]
  suggestions: no

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.`Order ID` ;;
  }
  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.`Customer ID` ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.`Customer Name` ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Order Date` ;;
  }
  dimension: postal_code {
    type: number
    sql: ${TABLE}.`Postal Code` ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.`Product ID` ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: row_id {
    type: number
    sql: ${TABLE}.`Row ID` ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }
  dimension_group: ship_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Ship Date` ;;
  }
  dimension: ship_mode {
    type: string
    sql: ${TABLE}.`Ship Mode` ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }
  measure: count {
    type: count
    drill_fields: [order_id, customer_name, product_name, returns.count]
  }
  measure: order_count {
    type: count_distinct
    sql: ${order_id} ;;
    description: "Number of distinct orders, regardless of the number of product lines."
  }
  measure: total_orders {
    type: count_distinct
    sql: ${order_id} ;;
    description: "Number of distinct orders."
  }
  measure: total_customers {
    type: count_distinct
    sql: ${customer_id} ;;
    description: "Number of distinct customers."
  }
  measure: total_sales {
    type: sum
    sql: ${sales} ;;
    value_format_name: usd
    description: "Total sales across order lines."
  }
  measure: total_profit {
    type: sum
    sql: ${profit} ;;
    value_format_name: usd
    description: "Total profit across order lines."
  }
  measure: profit_margin {
    type: number
    sql: 1.0 * ${total_profit} / NULLIF(${total_sales}, 0) ;;
    value_format_name: percent_2
    description: "Total profit divided by total sales."
  }
  measure: average_order_value {
    type: number
    sql: 1.0 * ${total_sales} / NULLIF(${total_orders}, 0) ;;
    value_format_name: usd
    description: "Total sales divided by distinct orders."
  }
  measure: total_quantity {
    type: sum
    sql: ${quantity} ;;
    description: "Total quantity of products ordered."
  }
  measure: average_discount {
    type: average
    sql: ${discount} ;;
    value_format_name: percent_2
    description: "Average discount across order lines."
  }
}
