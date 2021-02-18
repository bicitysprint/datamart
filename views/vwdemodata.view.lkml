view: vwdemodata {
  sql_table_name: "DEV"."VWDEMODATA"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountsc {
    type: string
    sql: ${TABLE}."ACCOUNTSC" ;;
  }

  dimension_group: bookingdatetime {
    group_label: "Booking"
    label: "Booking"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month,
      month_num,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}."BOOKINGDATETIME" ;;
  }

  dimension: bookingtype {
    type: string
    sql: ${TABLE}."BOOKINGTYPE" ;;
  }

  dimension: driverkey {
    type: string
    sql: ${TABLE}."DRIVERKEY" ;;
  }

  dimension: jobno {
    primary_key: yes
    type: number
    sql: ${TABLE}."JOBNO" ;;
    value_format_name: id
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp

  }

  dimension: servicecode {
    type: string
    sql: ${TABLE}."SERVICECODE" ;;
  }

  dimension: servicedesc {
    type: string
    sql: ${TABLE}."SERVICEDESC" ;;
  }

  dimension: umbrellaservice {
    type: string
    sql: ${TABLE}."UMBRELLASERVICE" ;;
  }

  measure: number_of_jobs {
    type: count_distinct
    sql: ${jobno} ;;
    drill_fields: [accountcode,bookingdatetime_year,bookingdatetime_month_name,number_of_jobs,sum_of_revenue]
  }

  measure: sum_of_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: gbp
    drill_fields: [accountcode,bookingdatetime_year,bookingdatetime_month_name,number_of_jobs,sum_of_revenue]
  }

}
