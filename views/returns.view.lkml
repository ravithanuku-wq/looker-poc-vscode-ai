view: returns {
  sql_table_name: default.returns ;;
  suggestions: no

  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.`Order ID` ;;
  }
  dimension: returned {
    type: string
    sql: ${TABLE}.Returned ;;
  }
  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.customer_name, orders.product_name]
  }
  measure: returned_orders_count {
    type: count_distinct
    sql: ${order_id} ;;
    filters: [returned: "Yes"]
    description: "Number of distinct orders marked as returned."
  }
  measure: order_return_rate {
    type: number
    sql: 1.0 * ${returned_orders_count} / NULLIF(${orders.total_orders}, 0) ;;
    value_format_name: percent_2
    description: "Returned orders as a share of distinct orders."
  }
}
