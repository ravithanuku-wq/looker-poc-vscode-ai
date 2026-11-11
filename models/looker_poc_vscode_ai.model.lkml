connection: "data-bricks"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_poc_vscode_ai_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_vscode_ai_default_datagroup

explore: returns {
  join: orders {
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}
