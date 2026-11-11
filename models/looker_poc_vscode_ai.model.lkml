connection: "data-bricks"

# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/orders_returns_people.dashboard.lookml"

datagroup: looker_poc_vscode_ai_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_vscode_ai_default_datagroup

explore: returns {
  join: orders {
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: one_to_many
  }
}

explore: orders {
  label: "Orders, Returns & People"
  description: "Analyze order-line sales and profit alongside returned orders and regional sales representatives."

  join: returns {
    type: left_outer
    sql_on: ${orders.order_id} = ${returns.order_id} ;;
    relationship: many_to_one
  }

  join: people {
    type: left_outer
    sql_on: ${orders.region} = ${people.region} ;;
    relationship: many_to_one
  }
}
