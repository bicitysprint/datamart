view: salesforce_account_hierarchy {
  sql_table_name: "DATAMART_STAGE"."SALESFORCE_ACCOUNT_HIERARCHY"
    ;;

  dimension: account_id {
    type: string
    primary_key: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_manager {
    type: string
    sql: ${TABLE}."ACCOUNT_MANAGER" ;;
  }

  dimension: account_manager_id {
    type: string
    sql: ${TABLE}."ACCOUNT_MANAGER_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    label: "Account Code"
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}."ACCOUNT_TYPE" ;;
  }

  dimension: acquisition_code {
    type: string
    sql: ${TABLE}."ACQUISITION_CODE" ;;
  }

  dimension: acquisition_name {
    type: string
    sql: ${TABLE}."ACQUISITION_NAME" ;;
  }

  dimension: adp_account_level {
    type: string
    sql: ${TABLE}."ADP_ACCOUNT_LEVEL" ;;
  }

  dimension: adp_budget_type {
    type: string
    sql: ${TABLE}."ADP_BUDGET_TYPE" ;;
  }

  dimension: adp_id {
    type: string
    sql: ${TABLE}."ADP_ID" ;;
  }

  dimension: adp_name {
    type: string
    sql: ${TABLE}."ADP_NAME" ;;
  }

  dimension: client_card_client_code {
    type: string
    sql: ${TABLE}."CLIENT_CARD_CLIENT_CODE" ;;
  }

  dimension: client_card_client_name {
    type: string
    sql: ${TABLE}."CLIENT_CARD_CLIENT_NAME" ;;
  }

  dimension: client_card_consol {
    type: string
    sql: ${TABLE}."CLIENT_CARD_CONSOL" ;;
  }

  dimension: client_code {
    type: string
    sql: ${TABLE}."CLIENT_CODE" ;;
  }

  dimension: client_industry {
    type: string
    sql: ${TABLE}."CLIENT_INDUSTRY" ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}."CLIENT_NAME" ;;
  }

  dimension: consol_card_client_code {
    type: string
    sql: ${TABLE}."CONSOL_CARD_CLIENT_CODE" ;;
  }

  dimension: consol_card_client_name {
    type: string
    sql: ${TABLE}."CONSOL_CARD_CLIENT_NAME" ;;
  }

  dimension: consol_card_consol {
    type: string
    sql: ${TABLE}."CONSOL_CARD_CONSOL" ;;
  }

  dimension: consol_card_consol_name {
    type: string
    sql: ${TABLE}."CONSOL_CARD_CONSOL_NAME" ;;
  }

  dimension: consol_code {
    type: string
    sql: ${TABLE}."CONSOL_CODE" ;;
  }

  dimension: consol_industry {
    type: string
    sql: ${TABLE}."CONSOL_INDUSTRY" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: grandparent_id {
    type: string
    sql: ${TABLE}."GRANDPARENT_ID" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: opp_type {
    type: string
    sql: ${TABLE}."OPP_TYPE" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}."RN" ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}."STARTDATE" ;;
  }

  dimension: sub_division {
    type: string
    sql: ${TABLE}."SUB_DIVISION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  # ----- Sets of fields for drilling ------
  set: account_detail {
    fields: [client_code,client_name,consol_code,account_number,account_name,adp_name,
    ]
  }
}
