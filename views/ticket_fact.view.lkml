view: ticket_fact {
  sql_table_name: default.ticket_fact ;;
  suggestions: no

  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }
  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }
  dimension_group: ticket_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ticket_created_date ;;
  }
  measure: count {
    type: count
  }
}
