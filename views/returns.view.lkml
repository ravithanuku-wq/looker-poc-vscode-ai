view: returns {
  sql_table_name: default.returns ;;
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
  dimension: returned {
    type: string
    sql: ${TABLE}.Returned ;;
  }
  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.customer_name, orders.product_name]
  }
  measure: returned_order_count {
    type: count_distinct
    sql: ${order_id} ;;
    filters: [returned: "Yes"]
    description: "Number of distinct orders marked as returned."
  }
}
