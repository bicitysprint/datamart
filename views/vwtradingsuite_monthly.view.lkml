view: vwtradingsuite_monthly {
  sql_table_name: "DATAMART"."VWTRADINGSUITE_MONTHLY"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountcode_month {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."ACCOUNTCODE" || '-'|| ${TABLE}."WCMONTHDATE" ;;
  }

  dimension: accountmanager {
    type: string
    sql: ${TABLE}."ACCOUNTMANAGER" ;;
  }

  dimension: accountmanagerid {
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
  }

  dimension: fckey {
    hidden: yes
    type: string
    sql: ${TABLE}."FCKEY" ;;
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

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
    value_format_name: gbp
  }

  dimension: margin {
    type: number
    sql:  case when ${revenue} = 0 then 0 else
          ${profit} / ${revenue} end  ;;
    value_format_name: percent_2
  }

  dimension: margin_forecast {
    type: number
    sql:  case when ${revenueforecast} = 0 then 0 else
      ${profitforecast} / ${revenueforecast} end  ;;
    value_format_name: percent_2
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
    drill_fields: [clientcode,clientname,consolcardconsolname,consolcode,accountcode,accountname,accountmanager]
  }

  dimension: reportgroup1 {
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
    drill_fields: [managername,accountmanager]
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

  dimension: wcmonth {
    hidden: yes
    type: number
    sql: ${TABLE}."WCMONTH" ;;
  }

  dimension_group: wcmonthdate {
    group_label: "Booking Month"
    label: "Booking"
    type: time
    timeframes: [
      # raw,
      # date,
      # week,
      month,
      month_num,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."WCMONTHDATE" ;;
  }

  dimension: wcyear {
    hidden: yes
    type: number
    sql: ${TABLE}."WCYEAR" ;;
  }

  ###########################      measures     ###########################

  measure: sum_of_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_ty {
    hidden: yes
    type: sum
    sql: case when ${wcmonthdate_year} = (select (max(${wcmonthdate_year})) from ${TABLE} ) then ${revenue} end ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_py {
    hidden: yes
    type: sum
    sql: case when ${wcmonthdate_year} = (select (max(${wcmonthdate_year})-1) from ${TABLE} ) then ${revenue} end ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_revenue_forecast {
    type: sum
    sql: ${revenueforecast} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_profit {
    type: sum
    sql: ${profit} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_profit_forecast {
    type: sum
    sql: ${profitforecast};;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_margin {
    type: number
    sql:case when sum(${revenue}) = 0 then 0 else
        sum(${profit}) / sum(${revenue}) end  ;;
    value_format_name: percent_2
    drill_fields: []
  }

  measure: sum_of_margin_forecast {
    type: number
    sql:case when sum(${revenueforecast}) = 0 then 0 else
      sum(${profitforecast} / sum(${revenueforecast}) end  ;;
    value_format_name: percent_2
    drill_fields: []
  }

  ######################    drill sets   #######################

  set: revenue_detail {
    fields: [clientcode,clientname,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_revenue_forecast]
  }

  set: profit_detail {
    fields: [clientcode,clientname,wcmonthdate_year,wcmonthdate_month_name,sum_of_profit,sum_of_profit_forecast]
  }

  set: margin_detail {
    fields: [clientcode,clientname,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_profit,sum_of_margin]
  }

}
