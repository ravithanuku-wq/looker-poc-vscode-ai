view: margin_items {
  sql_table_name: default.margin_items ;;
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
  dimension: margin_calc {
    type: string
    sql: ${TABLE}.margin_calc ;;
  }
  dimension: margin_dollar {
    type: number
    sql: ${TABLE}.margin_dollar ;;
  }
  dimension: margin_pct {
    type: string
    sql: ${TABLE}.margin_pct ;;
  }
  dimension: row {
    type: number
    sql: ${TABLE}.`Row` ;;
  }
  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }
  measure: count {
    type: count
  }
}
