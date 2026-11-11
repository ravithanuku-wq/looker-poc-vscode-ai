view: sales_new_customer {
  sql_table_name: default.sales_new_customer ;;
  suggestions: no

  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: current_qtr {
    type: string
    sql: ${TABLE}.current_qtr ;;
  }
  dimension: filter {
    type: string
    sql: ${TABLE}.filter ;;
  }
  dimension: last_qtr {
    type: string
    sql: ${TABLE}.last_qtr ;;
  }
  dimension: levels {
    type: string
    sql: ${TABLE}.levels ;;
  }
  dimension: row {
    type: number
    sql: ${TABLE}.`Row` ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }
  dimension: sales_delta {
    type: number
    sql: ${TABLE}.sales_delta ;;
  }
  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }
  measure: count {
    type: count
  }
}
