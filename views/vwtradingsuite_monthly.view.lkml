view: vwtradingsuite_monthly {
 sql_table_name: "DATAMART"."VWTRADINGSUITE_MONTHLY"
    ;;

  ## sql_table_name: "DEV"."VWTRADINGSUITE_MONTHLY_DN"

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Account%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
             &Week=&Date=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
             &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
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
    link: {
      label: "See Client Detail for {{value}}"
      url: "/dashboards/663?Name={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Individual Detail for {{value}}"
      url: "/dashboards/673?Account%20Manager={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    drill_fields: [clientcode,clientname,consolcode,consolcardconsolname,accountcode,accountname]
  }

  dimension: accountmanagerid {
    type: string
    sql: ${TABLE}."ACCOUNTMANAGERID" ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Account%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
             &Week=&Date=&Client%20Report%20Status={{ _filters['vwtradingsuite_monthly.clientreportstatus']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: clientcode {
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
    drill_fields: [consolcardconsolname,consolcode,accountcode,accountname,accountmanager]

    link: {
      label: "See Consol Detail for {{value}}"
      url: "/dashboards/669?Client%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Account Detail for {{value}}"
      url: "/dashboards/670?Client%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Client%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
             &Week=&Date=&Client%20Report%20Status={{ _filters['vwtradingsuite_monthly.clientreportstatus']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: clientname {
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
    drill_fields: [consolcardconsolname,consolcode,accountcode,accountname,accountmanager]

    link: {
      label: "See Consol Detail for {{value}}"
      url: "/dashboards/669?Client%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Date=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Account Detail for {{value}}"
      url: "/dashboards/670?Client%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Client%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
             &Week=&Date=&Client%20Report%20Status={{ _filters['vwtradingsuite_monthly.clientreportstatus']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: clientreportstatus {
    type: string
    sql: ${TABLE}."CLIENTREPORTSTATUS" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: consolcardconsolname {
    label: "Consolname"
    type: string
    sql: ${TABLE}."CONSOLCARDCONSOLNAME" ;;
    drill_fields: [accountcode,accountname,accountmanager]

    link: {
      label: "See Account Detail for {{value}}"
      url: "/dashboards/670?Consol%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Date=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Consol%20Name={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
              &Week=&Date=&Client%20Report%20Status={{ _filters['vwtradingsuite_monthly.clientreportstatus']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }


  dimension: consolcode {
    type: string
    sql: ${TABLE}."CONSOLCODE" ;;
    drill_fields: [accountcode,accountname,accountmanager]

    link: {
      label: "See Account Detail for {{value}}"
      url: "/dashboards/670?Consol%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
           &Week=&Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
           &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Job Detail for {{value}}"
      url: "/dashboards/656?Consol%20Code={{value}}&Account%20Manager={{ _filters['vwtradingsuite_monthly.accountmanager']}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
             &Week=&Date=&Client%20Report%20Status={{ _filters['vwtradingsuite_monthly.clientreportstatus']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
    drill_fields: [sfdivision,managername,accountmanager]
    link: {
      label: "See Department Detail for {{value}}"
      url: "/dashboards/661?Department={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Client Detail for {{value}}"
      url: "/dashboards/663?Department={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

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
    drill_fields: [accountmanager]
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/662?Name={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: opptype {
    type: string
    sql: ${TABLE}."OPPTYPE" ;;
  }

  dimension: profit {
    group_label: "Margin & Profit"
    type: number
    sql: ${TABLE}."PROFIT" ;;
    value_format_name: gbp
  }

  dimension: profitforecast {
    group_label: "Margin & Profit"
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
    value_format_name: gbp
  }

  dimension: profitforecastprorata {
    group_label: "Margin & Profit"
    type: number
    sql: ${TABLE}."PROFITFORECASTPRORATA" ;;
    value_format_name: gbp
  }


  dimension: margin {
    group_label: "Margin & Profit"
    type: number
    sql:  case when ${revenue} = 0 then 0 else
          ${profit} / ${revenue} end  ;;
    value_format_name: percent_2
  }

  dimension: margin_forecast {
    group_label: "Margin & Profit"
    type: number
    sql:  case when ${revenueforecast} = 0 then 0 else
      ${profitforecast} / ${revenueforecast} end  ;;
    value_format_name: percent_2
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: reportgroup1 {
    hidden: yes
    type: string
    sql: ${TABLE}."REPORTGROUP1" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: revenue {
    group_label: "Revenue"
    description: "Total Revenue (Revenue and Discount)"
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp
  }

  dimension: revenueforecast {
    group_label: "Revenue"
    type: number
    sql: ${TABLE}."REVENUEFORECAST" ;;
    value_format_name: gbp
  }

  dimension: revenueforecastprorata {
    group_label: "Revenue"
    type: number
    sql: ${TABLE}."REVENUEFORECASTPRORATA" ;;
    value_format_name: gbp
  }

  dimension: sector1 {
    type: string
    sql: ${TABLE}."SECTOR1" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: sector2 {
    type: string
    sql: ${TABLE}."SECTOR2" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: sfdivision {
    label: "Division"
    type: string
    sql: ${TABLE}."SFDIVISION" ;;
    drill_fields: [managername,accountmanager]
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/661?Division={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Client Detail for {{value}}"
      url: "/dashboards/663?Division={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
            &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Management%20Account%20Service%20Centre={{ _filters['vwtradingsuite_monthly.managementaccountservicecentre']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
            &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
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
      week,
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

  dimension: ccg {
    type: string
    sql: ${TABLE}."CCG" ;;
  }

  dimension: sc_name {
    label: "Account Service Centre"
    type: string
    sql: ${TABLE}."SC_NAME" ;;
  }

  dimension: regional_manager {
    label: "Regional Manager"
    type: string
    sql: ${TABLE}."REGIONAL_MANAGER" ;;
  }

  dimension: servicecentre_manager {
    label: "Service Centre Manager"
    type: string
    sql: ${TABLE}."SERVICECENTRE_MANAGER" ;;
  }

  dimension: acq_code {
    label: "Acquisition Code"
    type: string
    sql: ${TABLE}."ACQ_CODE" ;;
  }

  dimension: forecast_key {
    label: "Key or Core"
    type: string
    sql: ${TABLE}."FORECAST_KEY" ;;
  }

  dimension: revforecastcomp {
    label: "Revenue Vs Forecast Comparison"
    group_label: "Revenue"
    type: number
    sql: ${revenue}-${revenueforecast} ;;
    value_format_name: gbp

  }

  dimension: profitforecastcomp {
    group_label: "Margin & Profit"
    label: "Profit Vs Forecast Comparison"
    type: number
    sql: ${profit}-${profitforecast} ;;
    value_format_name: gbp

  }

  dimension: managementaccountservicecentre {
    label: "Management Account Service Centre"
    type: string
    sql: replace(${TABLE}."MANAGEMENTACCOUNTSERVICECENTRE",'&','And') ;;
    drill_fields: [clientcode,clientname,consolcode,consolcardconsolname,accountcode,accountname]
    link: {
      label: "See Client Detail for {{value}}"
      url: "/dashboards/663?Management%20Account%20Service%20Centre={{value}}&Year={{ _filters['vwtradingsuite_monthly.wcmonthdate_year']}}&Month={{ _filters['vwtradingsuite_monthly.wcmonthdate_month_name']}}
      &Key%20or%20Core={{ _filters['vwtradingsuite_monthly.forecast_key']}}&Report%20Group={{ _filters['vwtradingsuite_monthly.reportgroup']}}
      &Acquisition%20Code={{ _filters['vwtradingsuite_monthly.acq_code']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: techdigitalsignup {
    label: "Digital Signup"
    type: string
    sql: ${TABLE}."TECHDIGITALSIGNUP" ;;
  }

  ##  dimension financial breakdown

  dimension: basicrevenue {
    group_label: "Revenue"
    label: "Basic Revenue"
    type: number
    sql: ${TABLE}."BASICREVENUE" ;;
    value_format_name: gbp
  }

  dimension: discount {
    group_label: "Revenue"
    label: "Discount"
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: cost {
    group_label: "Cost"
    label: "Cost"
    description: "Total Cost (Drivercost,Agentcost,Trunkcost,Linehaulcost,NDJCost,Costadjustment)"
    type: number
    sql: ${TABLE}."COST" ;;
    value_format_name: gbp
  }

  dimension: drivercost {
    group_label: "Cost"
    label: "Driver Cost"
    type: number
    sql: ${TABLE}."DRIVERCOST" ;;
    value_format_name: gbp
  }

  dimension: agentcost {
    group_label: "Cost"
    label: "Agent Cost"
    type: number
    sql: ${TABLE}."AGENTCOST" ;;
    value_format_name: gbp
  }

  dimension: trunkcost {
    group_label: "Cost"
    label: "Trunk Cost"
    type: number
    sql: ${TABLE}."TRUNKCOST" ;;
    value_format_name: gbp
  }

  dimension: linehaulcost {
    group_label: "Cost"
    label: "Linehaul Cost"
    type: number
    sql: ${TABLE}."LINEHAULCOST" ;;
    value_format_name: gbp
  }

  dimension: ndjcost {
    group_label: "Cost"
    label: "NDJ Cost"
    description: "Non Distributed Job Cost"
    type: number
    sql: ${TABLE}."NDJCOST" ;;
    value_format_name: gbp
  }

  dimension: costadjustment {
    group_label: "Cost"
    label: "Cost Adjustment"
    description: "Costs distributed from cost accounts"
    type: number
    sql: ${TABLE}."COSTADJUSTMENT" ;;
    value_format_name: gbp
  }

  ###########################      measures     ###########################

  measure: sum_of_job_count {
    type: sum
    sql: ${jobcount} ;;
    value_format_name: decimal_0
    drill_fields: [jobcount_detail*]
  }

  measure: sum_of_revenue {
    group_label: "Revenue"
    description: "Total Revenue (Revenue and Discount)"
    type: sum
    sql: ${revenue} ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]
  }

  measure: sum_of_revenue_ty {
    group_label: "Revenue"
    hidden: yes
    type: sum
    sql: case when ${wcmonthdate_year} = (select (max(${wcmonthdate_year})) from ${TABLE} ) then ${revenue} end ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]
  }

  measure: sum_of_revenue_py {
    group_label: "Revenue"
    hidden: yes
    type: sum
    sql: case when ${wcmonthdate_year} = (select (max(${wcmonthdate_year})-1) from ${TABLE} ) then ${revenue} end ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]
  }

  measure: sum_of_revenue_forecast {
    group_label: "Revenue"
    type: sum
    sql: ${revenueforecast} ;;
    value_format_name: gbp
    drill_fields: [revenue_detail*]
  }

  measure: sum_of_revenue_forecast_prorata {
    group_label: "Revenue"
    type: sum
    sql: ${revenueforecastprorata} ;;
    value_format_name: gbp
    drill_fields: [revenue_prorata_detail*]
  }

  measure: sum_of_basic_revenue {
    group_label: "Revenue"
    type: sum
    sql: ${basicrevenue} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_discount {
    group_label: "Revenue"
    type: sum
    sql: ${discount} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_profit {
    group_label: "Margin & Profit"
    type: sum
    sql: ${profit} ;;
    value_format_name: gbp
    drill_fields: [profit_detail*]
  }

  measure: sum_of_profit_forecast {
    group_label: "Margin & Profit"
    type: sum
    sql: ${profitforecast};;
    value_format_name: gbp
    drill_fields: [profit_detail*]
  }

  measure: sum_of_profit_forecast_prorata {
    group_label: "Margin & Profit"
    type: sum
    sql: ${profitforecastprorata};;
    value_format_name: gbp
    drill_fields: [profit_prorata_detail*]
  }

  measure: sum_of_margin {
    group_label: "Margin & Profit"
    type: number
    sql:case when sum(${revenue}) = 0 then 0 else
        sum(${profit}) / sum(${revenue}) end  ;;
    value_format_name: percent_2
    drill_fields: [margin_detail*]
  }

  measure: sum_of_margin_forecast {
    group_label: "Margin & Profit"
    type: number
    sql:case when sum(${revenueforecast}) = 0 then 0 else
      sum(${profitforecast}) / sum(${revenueforecast}) end  ;;
    value_format_name: percent_2
    drill_fields: [margin_detail*]
  }

  measure: sum_of_revenue_forecast_ytd {
    group_label: "Revenue"
    type: number
    sql: coalesce(sum(
         case when
                   ((${TABLE}."WCMONTHDATE"  < (TO_DATE(DATEADD('month', 0, DATE_TRUNC('month', CURRENT_DATE())))))) AND
                   ((((${TABLE}."WCMONTHDATE") >= ((TO_DATE(DATE_TRUNC('year', CURRENT_DATE())))) AND
                   (${TABLE}."WCMONTHDATE") < ((TO_DATE(DATEADD('year', 1, DATE_TRUNC('year', CURRENT_DATE()))))))))
                    then ${revenueforecast} end),0)+
                    coalesce(sum(${revenueforecastprorata}),0) ;;
    value_format_name: gbp
    drill_fields: [revenue_ytd_detail*]
  }

  measure: sum_of_profit_forecast_ytd {
    group_label: "Margin & Profit"
    type: number
    sql: coalesce(sum(
         case when
                   ((${TABLE}."WCMONTHDATE"  < (TO_DATE(DATEADD('month', 0, DATE_TRUNC('month', CURRENT_DATE())))))) AND
                   ((((${TABLE}."WCMONTHDATE") >= ((TO_DATE(DATE_TRUNC('year', CURRENT_DATE())))) AND
                   (${TABLE}."WCMONTHDATE") < ((TO_DATE(DATEADD('year', 1, DATE_TRUNC('year', CURRENT_DATE()))))))))
                    then ${profitforecast} end),0)+
                    coalesce(sum(${profitforecastprorata}),0) ;;
    value_format_name: gbp
    drill_fields: [profit_ytd_detail*]
  }

  measure: sum_of_revenue_forecast_comparison {
    group_label: "Revenue"
    type: sum
    sql: ${revforecastcomp} ;;
    value_format_name: gbp
    #drill_fields: [revenue_detail*]

  }

  measure: sum_of_profit_forecast_comparison {
    group_label: "Margin & Profit"
    type: sum
    sql: ${profitforecastcomp} ;;
    value_format_name: gbp
    #drill_fields: [revenue_detail*]

  }

  measure: sum_of_costs {
    group_label: "Costs"
    description: "Total Cost (Drivercost,Agentcost,Trunkcost,Linehaulcost,NDJCost,Costadjustment)"
    type: sum
    sql: ${cost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_drivercost {
    group_label: "Costs"
    type: sum
    sql: ${drivercost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_agentcost {
    group_label: "Costs"
    type: sum
    sql: ${agentcost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_trunkcost {
    group_label: "Costs"
    type: sum
    sql: ${trunkcost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_linehaulcost {
    group_label: "Costs"
    type: sum
    sql: ${linehaulcost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_ndjcost {
    group_label: "Costs"
    description: "Non Distributed Job Cost"
    type: sum
    sql: ${ndjcost} ;;
    value_format_name: gbp
    drill_fields: []
  }

  measure: sum_of_costadjustment {
    group_label: "Costs"
    description: "Costs distributed from cost accounts"
    type: sum
    sql: ${costadjustment} ;;
    value_format_name: gbp
    drill_fields: []
  }


  ######################    drill sets   #######################

  set: revenue_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_revenue_forecast]
  }

  set: jobcount_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_job_count,sum_of_revenue,sum_of_revenue_forecast]
  }

  set: revenue_prorata_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_revenue_forecast_prorata]
  }

  set: revenue_ytd_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_revenue_forecast_ytd]
  }

  set: profit_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_profit,sum_of_profit_forecast]
  }

  set: profit_prorata_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_profit,sum_of_profit_forecast_prorata]
  }

  set: profit_ytd_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_profit,sum_of_profit_forecast_ytd]
  }

  set: margin_detail {
    fields: [clientcode,clientname,accountmanager,forecast_key,wcmonthdate_year,wcmonthdate_month_name,sum_of_revenue,sum_of_profit,sum_of_margin]
  }

}
