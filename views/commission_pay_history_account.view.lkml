view: commission_pay_history_account {
  sql_table_name: "DATAMART_STAGE"."COMMISSION_PAY_HISTORY_ACCOUNT"
    ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
  }

  dimension: bookingmonth {
    type: number
    sql: ${TABLE}."BOOKINGMONTH" ;;
  }

  dimension: bookingyear {
    type: number
    sql: ${TABLE}."BOOKINGYEAR" ;;
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

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: eligibleamount {
    type: number
    sql: ${TABLE}."ELIGIBLEAMOUNT" ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}."FULLNAME" ;;
  }

  dimension: managername {
    type: string
    sql: ${TABLE}."MANAGERNAME" ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  dimension: revenueforecast {
    type: number
    sql: ${TABLE}."REVENUEFORECAST" ;;
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

  dimension: username {
    type: string
    sql: ${TABLE}."USERNAME" ;;
  }

  dimension_group: bonus_date {
    group_label: "Bonus"
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
    sql: ${TABLE}."WCMONTHDATE" ;;
  }

  measure: sum_of_eligible_amount {
    type: sum
    sql: ${eligibleamount} ;;
    drill_fields: [detail*]
    value_format_name: gbp
  }

  measure: sum_of_profit {
    type: sum
    sql: ${profit} ;;
    drill_fields: [detail*]
    value_format_name: gbp
  }

  measure: sum_of_profit_forecast {
    type: sum
    sql: ${profitforecast} ;;
    drill_fields: [detail*]
    value_format_name: gbp
  }

  measure: performance {
    type: number
    sql: case when sum(${profitforecast}) = 0 then 0 else
          sum(${profit}) / sum(${profitforecast}) end ;;
    drill_fields: [detail*]
    value_format_name: percent_2
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      managername,
      accountname,
      fullname,
      schemename,
      username
    ]
  }
}
