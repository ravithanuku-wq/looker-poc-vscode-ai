view: first_contact_resolution {
  sql_table_name: default.first_contact_resolution ;;
  suggestions: no

  dimension: __index_level_0__ {
    type: string
    sql: ${TABLE}.__index_level_0__ ;;
  }
  dimension: _rescued_data {
    type: string
    sql: ${TABLE}._rescued_data ;;
  }
  dimension: after_hours_ind {
    type: yesno
    sql: ${TABLE}.after_hours_ind ;;
  }
  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }
  dimension_group: assigned_time_central {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.assigned_time_central ;;
  }
  dimension: brand_group {
    type: string
    sql: ${TABLE}.brand_group ;;
  }
  dimension: care_group {
    type: string
    sql: ${TABLE}.care_group ;;
  }
  dimension: catering_order_ind {
    type: string
    sql: ${TABLE}.catering_order_ind ;;
  }
  dimension_group: created_time_central {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_time_central ;;
  }
  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: diner_fraud_recommendation {
    type: string
    sql: ${TABLE}.diner_fraud_recommendation ;;
  }
  dimension: diner_profile {
    type: string
    sql: ${TABLE}.diner_profile ;;
  }
  dimension: driver_level {
    type: string
    sql: ${TABLE}.driver_level ;;
  }
  dimension: enterprise_brand {
    type: string
    sql: ${TABLE}.enterprise_brand ;;
  }
  dimension: enterprise_indicator {
    type: yesno
    sql: ${TABLE}.enterprise_indicator ;;
  }
  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }
  dimension_group: hire {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hire_date ;;
  }
  dimension: order_related_ind {
    type: string
    sql: ${TABLE}.order_related_ind ;;
  }
  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }
  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }
  dimension: partner_site {
    type: string
    sql: ${TABLE}.partner_site ;;
  }
  dimension: pcr_name {
    type: string
    sql: ${TABLE}.pcr_name ;;
  }
  dimension: pos_integrated {
    type: yesno
    sql: ${TABLE}.pos_integrated ;;
  }
  dimension: primary_contact_reason {
    type: string
    sql: ${TABLE}.primary_contact_reason ;;
  }
  dimension: requester_id {
    type: number
    sql: ${TABLE}.requester_id ;;
  }
  dimension: resolution_type_fcr {
    type: string
    sql: ${TABLE}.resolution_type_fcr ;;
  }
  dimension: scr_name {
    type: string
    sql: ${TABLE}.scr_name ;;
  }
  dimension: secondary_contact_reason {
    type: string
    sql: ${TABLE}.secondary_contact_reason ;;
  }
  dimension: spanish_ivr {
    type: yesno
    sql: ${TABLE}.spanish_ivr ;;
  }
  dimension: sub_department {
    type: string
    sql: ${TABLE}.sub_department ;;
  }
  dimension: sub_sub_department {
    type: string
    sql: ${TABLE}.sub_sub_department ;;
  }
  dimension_group: subsequent_created_time_central_fcr {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.subsequent_created_time_central_fcr ;;
  }
  dimension: subsequent_pcr_fcr {
    type: string
    sql: ${TABLE}.subsequent_pcr_fcr ;;
  }
  dimension: subsequent_scr_fcr {
    type: string
    sql: ${TABLE}.subsequent_scr_fcr ;;
  }
  dimension: subsequent_ticket_fcr {
    type: number
    sql: ${TABLE}.subsequent_ticket_fcr ;;
  }
  dimension_group: ticket_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ticket_created_date ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: ticket_type {
    type: string
    sql: ${TABLE}.ticket_type ;;
  }
  dimension_group: tier {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.tier ;;
  }
  measure: count {
    type: count
    drill_fields: [pcr_name, scr_name, group_name]
  }
}
