view: commission_pay_view {
  sql_table_name: "DATAMART_STAGE"."COMMISSION_PAY_VIEW"
    ;;

  dimension: amountearned {
    type: number
    sql: ${TABLE}."AMOUNTEARNED" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: elementid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ELEMENTID" ;;
  }

  dimension: elementname {
    type: string
    sql: ${TABLE}."ELEMENTNAME" ;;
  }

  dimension: eligibleearnings {
    type: number
    sql: ${TABLE}."ELIGIBLEEARNINGS" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension_group: monthdate {
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
    sql: ${TABLE}."MONTHDATE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: performance {
    type: number
    sql: ${TABLE}."PERFORMANCE" ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  dimension: scheme1_id {
    type: number
    sql: ${TABLE}."SCHEME1ID" ;;
  }

  dimension: schemename {
    type: string
    sql: ${TABLE}."SCHEMENAME" ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}."USERID" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [elementname, name, schemename]
  }
}
