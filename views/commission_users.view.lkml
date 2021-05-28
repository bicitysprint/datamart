view: commission_users {
  sql_table_name: "DATAMART_STAGE"."COMMISSION_USERS"
    ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension_group: created_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CREATED_MONTH" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: mgr_department {
    type: string
    sql: ${TABLE}."MGR_DEPARTMENT" ;;
  }

  dimension: mgr_email {
    type: string
    sql: ${TABLE}."MGR_EMAIL" ;;
  }

  dimension: mgr_first_name {
    type: string
    sql: ${TABLE}."MGR_FIRST_NAME" ;;
  }

  dimension: mgr_full_name {
    type: string
    sql: ${TABLE}."MGR_FULL_NAME" ;;
  }

  dimension: mgr_id {
    type: string
    sql: ${TABLE}."MGR_ID" ;;
  }

  dimension: mgr_last_name {
    type: string
    sql: ${TABLE}."MGR_LAST_NAME" ;;
  }

  dimension: mgr_sales_division {
    type: string
    sql: ${TABLE}."MGR_SALES_DIVISION" ;;
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}."MGR_STATUS" ;;
  }

  dimension: mgr_sub_department {
    type: string
    sql: ${TABLE}."MGR_SUB_DEPARTMENT" ;;
  }

  dimension: mgr_title {
    type: string
    sql: ${TABLE}."MGR_TITLE" ;;
  }

  dimension: mgr_user_name {
    type: string
    sql: ${TABLE}."MGR_USER_NAME" ;;
  }

  dimension_group: newstartermonth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."NEWSTARTERMONTH" ;;
  }

  dimension: s_mgr_department {
    type: string
    sql: ${TABLE}."S_MGR_DEPARTMENT" ;;
  }

  dimension: s_mgr_email {
    type: string
    sql: ${TABLE}."S_MGR_EMAIL" ;;
  }

  dimension: s_mgr_first_name {
    type: string
    sql: ${TABLE}."S_MGR_FIRST_NAME" ;;
  }

  dimension: s_mgr_full_name {
    type: string
    sql: ${TABLE}."S_MGR_FULL_NAME" ;;
  }

  dimension: s_mgr_id {
    type: string
    sql: ${TABLE}."S_MGR_ID" ;;
  }

  dimension: s_mgr_last_name {
    type: string
    sql: ${TABLE}."S_MGR_LAST_NAME" ;;
  }

  dimension: s_mgr_sales_division {
    type: string
    sql: ${TABLE}."S_MGR_SALES_DIVISION" ;;
  }

  dimension: s_mgr_status {
    type: string
    sql: ${TABLE}."S_MGR_STATUS" ;;
  }

  dimension: s_mgr_sub_department {
    type: string
    sql: ${TABLE}."S_MGR_SUB_DEPARTMENT" ;;
  }

  dimension: s_mgr_title {
    type: string
    sql: ${TABLE}."S_MGR_TITLE" ;;
  }

  dimension: s_mgr_user_name {
    type: string
    sql: ${TABLE}."S_MGR_USER_NAME" ;;
  }

  dimension: sales_division {
    type: string
    sql: ${TABLE}."SALES_DIVISION" ;;
  }

  dimension: scheme1_id {
    type: number
    sql: ${TABLE}."SCHEME1ID" ;;
  }

  dimension: scheme2_id {
    type: number
    sql: ${TABLE}."SCHEME2ID" ;;
  }

  dimension: scheme3_id {
    type: number
    sql: ${TABLE}."SCHEME3ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: sub_department {
    type: string
    sql: ${TABLE}."SUB_DEPARTMENT" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      last_name,
      mgr_last_name,
      first_name,
      user_name,
      full_name,
      mgr_first_name,
      s_mgr_user_name,
      s_mgr_full_name,
      mgr_user_name,
      s_mgr_last_name,
      s_mgr_first_name,
      mgr_full_name
    ]
  }
}
