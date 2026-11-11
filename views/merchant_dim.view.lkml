view: merchant_dim {
  sql_table_name: default.merchant_dim ;;
  suggestions: no

  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }
  dimension: enterprise_brand {
    type: string
    sql: ${TABLE}.enterprise_brand ;;
  }
  dimension: pos_integrated {
    type: yesno
    sql: ${TABLE}.pos_integrated ;;
  }
  measure: count {
    type: count
  }
}
