connection: "data-bricks"

include: "/views/orders.view.lkml"
include: "/views/people.view.lkml"
include: "/views/returns.view.lkml"
include: "/dashboards/orders_returns_people.dashboard.lookml"

explore: orders {
  label: "Superstore Orders"
  description: "Analyze order sales, profit, customers, and returns with regional representatives."

  join: people {
    type: left_outer
    sql_on: ${orders.region} = ${people.region} ;;
    relationship: many_to_one
  }

  join: returns {
    type: left_outer
    sql_on: ${orders.order_id} = ${returns.order_id} ;;
    relationship: many_to_one
  }
}
