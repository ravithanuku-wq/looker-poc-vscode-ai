view: people {
  sql_table_name: default.people ;;
  suggestions: no

  dimension: region {
    primary_key: yes
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: person {
    type: string
    sql: ${TABLE}.Person ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  measure: count {
    type: count
  }
}
