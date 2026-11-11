connection: "data-bricks"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_poc_vscode_ai_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_vscode_ai_default_datagroup

explore: fcr_analysis {}

explore: first_contact_resolution {}

explore: item_sales {}

explore: margin_items {}

explore: margin_items_customer {}

explore: margin_new_customers {}

explore: merchant_dim {}

explore: orders {}

explore: people {}

explore: returns {
  join: orders {
    type: left_outer 
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: sales_item_customer {}

explore: sales_new_customer {}

explore: sample_rls {}

explore: ticket_fact {}

