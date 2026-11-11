view: sample_rls {
  sql_table_name: default.sample_rls ;;
  suggestions: no

  dimension: branch_id {
    type: number
    sql: ${TABLE}.branch_id ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }
  measure: count {
    type: count
  }
}
