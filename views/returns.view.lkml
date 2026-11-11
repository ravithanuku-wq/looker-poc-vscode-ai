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
}
