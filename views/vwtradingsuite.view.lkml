view: vwtradingsuite {
  sql_table_name: "DATAMART"."VWTRADINGSUITE"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountcode_wc {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."ACCOUNTCODE" || ${TABLE}."WC" ;;
  }

  dimension: accountmanager {
    type: string
    sql: ${TABLE}."ACCOUNTMANAGER" ;;
  }

  dimension: accountmanagerid {
    hidden: yes
    type: string
    sql: ${TABLE}."ACCOUNTMANAGERID" ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
  }

  dimension: clientcode {
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
    drill_fields: [consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: clientname {
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
    drill_fields: [consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: clientreportstatus {
    type: string
    sql: ${TABLE}."CLIENTREPORTSTATUS" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: consolcardconsolname {
    label: "Consolname"
    type: string
    sql: ${TABLE}."CONSOLCARDCONSOLNAME" ;;
    drill_fields: [accountcode,accountname,accountmanager]
  }

  dimension: consolcode {
    type: string
    sql: ${TABLE}."CONSOLCODE" ;;
    drill_fields: [accountcode,accountname,accountmanager]
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
    drill_fields: [sfdivision,managername,accountmanager]
  }

  dimension: division {
    hidden: yes
    type: string
    sql: ${TABLE}."DIVISION" ;;
    drill_fields: [sfdivision,managername,accountmanager]
  }

  dimension: fckey {
    hidden: yes
    type: string
    sql: ${TABLE}."FCKEY" ;;
  }

  dimension: iscurrentmonth {
    type: number
    sql: ${TABLE}."ISCURRENTMONTH" ;;
  }

  dimension: jobcount {
    hidden: yes
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
  }

  dimension: managername {
    type: string
    sql: ${TABLE}."MANAGERNAME" ;;
    drill_fields: [accountmanager,clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname]
  }

  dimension: opptype {
    type: string
    sql: ${TABLE}."OPPTYPE" ;;

  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
    value_format_name: gbp
  }

  dimension: margin {
    type: number
    sql: case when ${revenue} = 0 then 0 else
         ${profit} / ${revenue} end ;;
    value_format_name: percent_2
  }

  dimension: margin_forecast {
    type: number
    sql: case when ${revenueforecast} = 0 then 0 else
      ${profitforecast} / ${revenueforecast} end ;;
    value_format_name: percent_2
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
    value_format_name: gbp
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: reportgroup1 {
    hidden: yes
    type: string
    sql: ${TABLE}."REPORTGROUP1" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp
  }

  dimension: revenueforecast {
    type: number
    sql: ${TABLE}."REVENUEFORECAST" ;;
    value_format_name: gbp
  }

  dimension: sector1 {
    type: string
    sql: ${TABLE}."SECTOR1" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: sector2 {
    type: string
    sql: ${TABLE}."SECTOR2" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: sfdivision {
    label: "Division"
    type: string
    sql: ${TABLE}."SFDIVISION" ;;
    drill_fields: [sfdivision,managername,accountmanager]
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
    drill_fields: [accountmanager]
  }

  dimension: user_name {
    label: "Username"
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension_group: wc {
    group_label: "Week Commencing"
    type: time
    timeframes: [
      raw,
      date,
      week,
      week_of_year,
      month,
      month_num,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."WC" ;;
  }

  #########################    measures  ###########################

  measure: sum_of_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]

  }

  measure: sum_of_revenue_forecast {
    type: sum
    sql: ${revenueforecast} ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]

  }

  measure: sum_of_profit {
    type: sum
    sql: ${profit} ;;
    value_format_name: gbp
    drill_fields: [profit_detail*]

  }

  measure: sum_of_profit_forecast {
    type: sum
    sql: ${profitforecast} ;;
    value_format_name: gbp
    drill_fields: [profit_detail*]

  }

  measure: sum_of_margin {
    type: number
    sql: case when sum(${revenue}) 0 then 0 else
         sum(${profit}) / sum(${revenue}) end    ;;
    value_format_name: percent_2
  }


########################      drill sets      ##########################
set: revenue_detail {
  fields: [clientcode,clientname,wc_week,wc_week_of_year,sum_of_revenue,sum_of_revenue_forecast

  ]
}

  set: profit_detail {
    fields: [clientcode,clientname,wc_week,wc_week_of_year,sum_of_profit,sum_of_profit_forecast

    ]
  }

  set: margin_detail {
    fields: [clientcode,clientname,wc_week,wc_week_of_year,sum_of_revenue,sum_of_profit,sum_of_margin

    ]
  }

}
