view: commission_pay_history_final {
  sql_table_name: "DATAMART_STAGE"."COMMISSION_PAY_HISTORY_FINAL"
    ;;

  dimension: amountearned {
    type: number
    sql: ${TABLE}."AMOUNTEARNED" ;;
    value_format_name: gbp
  }

  dimension: amountearnedadjusted {
    type: number
    sql: iff((TO_CHAR(DATE_TRUNC('month', ${TABLE}."MONTHDATE" ), 'YYYY-MM')) < '2021-04',${TABLE}."AMOUNTEARNED",${TABLE}."AMOUNTEARNEDADJUSTED") ;;
    value_format_name: gbp
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

  dimension: difference {
    type: number
    sql: iff((TO_CHAR(DATE_TRUNC('month', ${TABLE}."MONTHDATE" ), 'YYYY-MM')) < '2021-04',0,${TABLE}."DIFFERENCE") ;;
    value_format_name: gbp
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
    value_format_name: gbp
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
    value_format_name: percent_2
  }

  dimension: prev_amountearned {
    type: string
    sql: ${TABLE}."PREV_AMOUNTEARNED" ;;
    value_format_name: gbp
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
    value_format_name: gbp
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
    value_format_name: gbp
  }

  dimension: rerun_amountearned {
    type:number
    sql: iff((TO_CHAR(DATE_TRUNC('month', ${TABLE}."MONTHDATE" ), 'YYYY-MM')) <= '2021-04',0, ${TABLE}."RERUN_AMOUNTEARNED") ;;
    value_format_name: gbp
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
    drill_fields: [name, elementname, schemename]
  }
}
