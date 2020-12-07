view: trading {
  sql_table_name: "DATAMART"."TRADING"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountcode_archive {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ||'-'|| ${TABLE}."ARCHIVE"  ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
  }

  dimension: archive {
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_date {
    group_label: "Archive Dates"
    type: date
    sql: '20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||right(last_day(to_date('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||'01')),2) ;;
  }

  dimension: archive_name_of_month {
    group_label: "Archive Dates"
    type: date_month_name
    sql: TO_DATE('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||right(last_day(to_date('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||'01')),2)) ;;
  }

  dimension: archive_month_number {
    group_label: "Archive Dates"
    type: date_month_num
    sql: TO_DATE('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||right(last_day(to_date('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||'01')),2)) ;;
  }

  dimension: archive_year {
    group_label: "Archive Dates"
    type: date_year
    sql: TO_DATE('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||right(last_day(to_date('20'||left(ARCHIVE,2)||'-'||substring(ARCHIVE,3,2)||'-'||'01')),2)) ;;
  }


  dimension: clientcode {
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
  }

  dimension: clientname {
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
  }

  dimension: clientreportstatus {
    type: string
    sql: ${TABLE}."CLIENTREPORTSTATUS" ;;
  }

  dimension: consolcardconsolname {
    type: string
    sql: ${TABLE}."CONSOLCARDCONSOLNAME" ;;
  }

  dimension: consolcode {
    type: string
    sql: ${TABLE}."CONSOLCODE" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
    value_format_name: gbp
  }

  dimension: dailyrevenue {
    type: number
    sql: ${TABLE}."DAILYREVENUE" ;;
    value_format_name: gbp
  }

  dimension: dailyrevenuebudget {
    type: number
    sql: ${TABLE}."DAILYREVENUEBUDGET" ;;
    value_format_name: gbp
  }

  dimension: dailyrevenueforecast {
    type: number
    sql: ${TABLE}."DAILYREVENUEFORECAST" ;;
    value_format_name: gbp
  }

  dimension: dailyrevenuepy {
    type: number
    sql: ${TABLE}."DAILYREVENUEPY" ;;
    value_format_name: gbp
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: division {
    type: string
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: fckey {
    type: string
    sql: ${TABLE}."FCKEY" ;;
  }

  dimension: finalprofit {
    type: number
    sql: ${TABLE}."FINALPROFIT" ;;
    value_format_name: gbp
  }

  dimension: finalrevenue {
    type: number
    sql: ${TABLE}."FINALREVENUE" ;;
    value_format_name: gbp
  }

  dimension: industrymapped {
    type: string
    sql: ${TABLE}."INDUSTRYMAPPED" ;;
  }

  dimension: iscurrentmonth {
    type: number
    sql: ${TABLE}."ISCURRENTMONTH" ;;
  }

  dimension: opptype {
    type: string
    sql: ${TABLE}."OPPTYPE" ;;
  }

  dimension: profitbudget {
    type: number
    sql: ${TABLE}."PROFITBUDGET" ;;
    value_format_name: gbp
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
    value_format_name: gbp
  }

  dimension: profitpytotal {
    type: number
    sql: ${TABLE}."PROFITPYTOTAL" ;;
  }

  dimension: profittotal {
    type: number
    sql: ${TABLE}."PROFITTOTAL" ;;
    value_format_name: gbp
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
  }

  dimension: reportgroup1 {
    type: string
    sql: ${TABLE}."REPORTGROUP1" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp
  }

  dimension: revenueaccrualsin {
    type: number
    sql: ${TABLE}."REVENUEACCRUALSIN" ;;
    value_format_name: gbp
  }

  dimension: revenueaccrualsout {
    type: number
    sql: ${TABLE}."REVENUEACCRUALSOUT" ;;
    value_format_name: gbp
  }

  dimension: revenuebudget {
    type: number
    sql: ${TABLE}."REVENUEBUDGET" ;;
    value_format_name: gbp
  }

  dimension: revenueforecast {
    type: number
    sql: ${TABLE}."REVENUEFORECAST" ;;
    value_format_name: gbp
  }

  dimension: revenuepytotal {
    type: number
    sql: ${TABLE}."REVENUEPYTOTAL" ;;
  }

  dimension: revenuetotal {
    type: number
    sql: ${TABLE}."REVENUETOTAL" ;;
    value_format_name: gbp
  }

  dimension: revenuinarchive {
    type: number
    sql: ${TABLE}."REVENUINARCHIVE" ;;
    value_format_name: gbp
  }

  dimension: revenueactual {
    type: number
    sql: ${TABLE}."REVENUE" + ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: jobcount {
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
    value_format_name: gbp
  }


  #############################   measures  ################################

  measure: sum_of_job_count {
    type: sum
    sql: ${jobcount} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_actual {
    type: sum
    sql: ${revenueactual} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_py {
    type: sum
    sql: ${revenuepytotal} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_forecast {
    type: sum
    sql: ${revenueforecast} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_profit_total {
    type: sum
    sql: ${profittotal} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_profit_forecast {
    type: sum
    sql: ${profitforecast} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_daily_revenue_actual {
    type: sum
    sql: ${dailyrevenue} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_daily_revenue_forecast {
    type: sum
    sql: ${dailyrevenueforecast} ;;
    value_format_name: gbp
    drill_fields: []
  }

}
