view: tradingjobs {
  sql_table_name: "DATAMART"."TRADINGJOBS"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
    drill_fields: [accountmanager,jobno,umbrellaservice]
  }

  dimension: accountmanager {
    label: "Historical Accountmanager"
    type: string
    sql: ${TABLE}."ACCOUNTMANAGER" ;;
  }

  dimension: currentaccountmanager {
    label: "Accountmanager"
    type: string
    sql: ${TABLE}."CURRENTACCOUNTMANAGER" ;;
    drill_fields: [currentclientcode,currentclientname,currentconsolcode,currentconsolname,accountcode,accountname]
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
    drill_fields: [accountmanager,jobno,umbrellaservice]
  }

  dimension: accrualsincost {
    type: number
    sql: ${TABLE}."ACCRUALSINCOST" ;;
    value_format_name: gbp
  }

  dimension: accrualsinrevenue {
    type: number
    sql: ${TABLE}."ACCRUALSINREVENUE" ;;
    value_format_name: gbp
  }

  dimension: accrualsoutcost {
    type: number
    sql: ${TABLE}."ACCRUALSOUTCOST" ;;
    value_format_name: gbp
  }

  dimension: accrualsoutrevenue {
    type: number
    sql: ${TABLE}."ACCRUALSOUTREVENUE" ;;
    value_format_name: gbp
  }

  dimension: agentcost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}."AGENTCOST" ;;
    value_format_name: gbp
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
    value_format_name: id
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

  dimension: archive_job {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}."ARCHIVE" || '-' || ${TABLE}."JOBNO" ;;
  }

  dimension_group: booking {
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
    sql: ${TABLE}."BOOKING_DATE" ;;
    drill_fields: [booking_date,jobno]
  }

  dimension: client_classification {
    type: string
    sql: ${TABLE}."CLIENT_CLASSIFICATION" ;;
    drill_fields: [currentclientcode,currentclientname]
  }

  dimension: clientcode {
    label: "Historical Clientcode"
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
    drill_fields: [consolcode,consolname,accountcode,accountname]
  }

  dimension: currentclientcode {
    label: "Clientcode"
    type: string
    sql: ${TABLE}."CURRENTCLIENTCODE" ;;
    drill_fields: [currentaccountmanager,currentconsolcode,currentconsolname,accountcode,accountname]
  }

  dimension: clientname {
    label: "Historical Clientname"
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
    drill_fields: [consolcode,consolname,accountcode,accountname]
  }

  dimension: currentclientname {
    label: "Clientname"
    type: string
    sql: ${TABLE}."CURENTCLIENTNAME" ;;
    drill_fields: [currentaccountmanager,currentconsolcode,currentconsolname,accountcode,accountname]
  }

  dimension: clientreportstatus {
    type: string
    sql: ${TABLE}."CLIENTREPORTSTATUS" ;;
    drill_fields: [currentclientcode,currentclientname]
  }

  dimension_group: commencingweekdate {
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
    sql: ${TABLE}."COMMENCINGWEEKDATE" ;;
  }

  dimension: consolcode {
    label: "Historical Consolcode"
    type: string
    sql: ${TABLE}."CONSOLCODE" ;;
    drill_fields: [accountcode,accountname]
  }

  dimension: currentconsolcode {
    label: "Consolcode"
    type: string
    sql: ${TABLE}."CURRENTCONSOLCODE" ;;
    drill_fields: [currentaccountmanager,accountcode,accountname]
  }

  dimension: consolname {
    label: "Historical Consolname"
    type: string
    sql: ${TABLE}."CONSOLNAME" ;;
    drill_fields: [accountcode,accountname]
  }

  dimension: currentconsolname {
    label: "Consolname"
    type: string
    sql: ${TABLE}."CURRENTCONSOLNAME" ;;
    drill_fields: [currentaccountmanager,accountcode,accountname]
  }

  dimension: costadjustment {
    type: number
    sql: ${TABLE}."COSTADJUSTMENT" ;;
    value_format_name: gbp
  }

  dimension: costinarchive {
    type: number
    sql: ${TABLE}."COSTINARCHIVE" ;;
    value_format_name: gbp
  }

  dimension: couriermileage {
    type: number
    sql: ${TABLE}."COURIERMILEAGE" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
    value_format_name: gbp
  }

  dimension: discount {
    group_label: "Revenue"
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: drivercost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}."DRIVERCOST" ;;
    value_format_name: gbp
  }

  dimension: drivpay_cx {
    type: number
    sql: ${TABLE}."DRIVPAY_CX" ;;
    value_format_name: gbp
  }

  dimension: drivpay_dw {
    type: number
    sql: ${TABLE}."DRIVPAY_DW" ;;
    value_format_name: gbp
  }

  dimension: drivpay_em {
    type: number
    sql: ${TABLE}."DRIVPAY_EM" ;;
    value_format_name: gbp
  }

  dimension: drivpay_ih {
    type: number
    sql: ${TABLE}."DRIVPAY_IH" ;;
    value_format_name: gbp
  }

  dimension: drivpay_lw {
    type: number
    sql: ${TABLE}."DRIVPAY_LW" ;;
    value_format_name: gbp
  }

  dimension: drivpay_mr {
    type: number
    sql: ${TABLE}."DRIVPAY_MR" ;;
    value_format_name: gbp
  }

  dimension: drivpay_sb {
    type: number
    sql: ${TABLE}."DRIVPAY_SB" ;;
    value_format_name: gbp
  }

  dimension: drivpay_tp {
    type: number
    sql: ${TABLE}."DRIVPAY_TP" ;;
    value_format_name: gbp
  }

  dimension: drivpay_w {
    type: number
    sql: ${TABLE}."DRIVPAY_W" ;;
    value_format_name: gbp
  }

  dimension: fckey_name {
    type: string
    sql: ${TABLE}."FCKEY_NAME" ;;
  }

  dimension: finalcost {
    type: number
    sql: ${TABLE}."FINALCOST" ;;
    value_format_name: gbp
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

  dimension: forecast_key {
    type: string
    sql: ${TABLE}."FORECAST_KEY" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
    drill_fields: [currentclientcode,currentclientname]
  }

  dimension: itemcount {
    type: number
    sql: ${TABLE}."ITEMCOUNT" ;;
  }

  dimension: itemweight {
    type: number
    sql: ${TABLE}."ITEMWEIGHT" ;;
  }

  dimension: jobcount {
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
  }

  dimension: jobno {
    type: number
    sql: ${TABLE}."JOBNO" ;;
    value_format_name: id
    drill_fields: [servicecode,servicedescription]
  }

  dimension: linehaulcost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}."LINEHAULCOST" ;;
    value_format_name: gbp
  }

  dimension: ndjcost {
    group_label: "Costs"
    description: "Non Distributed Job Costs"
    type: number
    sql: ${TABLE}."NDJCOST" ;;
    value_format_name: gbp
  }

  dimension: opptype {
    type: string
    sql: ${TABLE}."OPPTYPE" ;;
  }

  dimension: permflag {
    type: string
    sql: ${TABLE}."PERMFLAG" ;;
  }

  dimension: pi_status {
    type: number
    sql: ${TABLE}."PI_STATUS" ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
    value_format_name: gbp
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: revenue {
    group_label: "Revenue"
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp
  }

  dimension: revenue_actual {
    group_label: "Revenue"
    type: number
    sql: ${TABLE}."REVENUE" + ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: revenueadjustment {
    type: number
    sql: ${TABLE}."REVENUEADJUSTMENT" ;;
    value_format_name: gbp
  }

  dimension: revenueinarchive {
    type: number
    sql: ${TABLE}."REVENUEINARCHIVE" ;;
    value_format_name: gbp
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."SECTOR" ;;
    drill_fields: [clientcode,clientname]
  }

  dimension: servicecentre_clean {
    type: string
    sql: ${TABLE}."SERVICECENTRE_CLEAN" ;;
  }

  dimension: servicecentrecode_account {
    type: string
    sql: ${TABLE}."SERVICECENTRECODE_ACCOUNT" ;;
  }

  dimension: servicecentrecode_allocated {
    type: string
    sql: ${TABLE}."SERVICECENTRECODE_ALLOCATED" ;;
  }

  dimension: servicecentrecode_mgmtac {
    type: string
    sql: ${TABLE}."SERVICECENTRECODE_MGMTAC" ;;
  }

  dimension: servicecentredsc_account {
    type: string
    sql: ${TABLE}."SERVICECENTREDSC_ACCOUNT" ;;
  }

  dimension: servicecentredsc_allocated {
    type: string
    sql: ${TABLE}."SERVICECENTREDSC_ALLOCATED" ;;
  }

  dimension: servicecentredsc_mgmtac {
    type: string
    sql: ${TABLE}."SERVICECENTREDSC_MGMTAC" ;;
  }

  dimension: servicecode {
    type: string
    sql: ${TABLE}."SERVICECODE" ;;
    drill_fields: [jobno]
  }

  dimension: servicedescription {
    type: string
    sql: ${TABLE}."SERVICEDESCRIPTION" ;;
    drill_fields: [jobno]
  }

  dimension: servicegroupcode {
    type: string
    sql: ${TABLE}."SERVICEGROUPCODE" ;;
    drill_fields: [jobno]
  }

  dimension: subsector {
    type: string
    sql: ${TABLE}."SUBSECTOR" ;;
  }

  dimension: totalcost {
    type: number
    sql: ${TABLE}."TOTALCOST" ;;
    value_format_name: gbp
  }

  dimension: totalcostadjusted {
    type: number
    sql: ${TABLE}."TOTALCOSTADJUSTED" ;;
    value_format_name: gbp
  }

  dimension: totalrevenue {
    type: number
    sql: ${TABLE}."TOTALREVENUE" ;;
    value_format_name: gbp
  }

  dimension: totalrevenueadjusted {
    type: number
    sql: ${TABLE}."TOTALREVENUEADJUSTED" ;;
    value_format_name: gbp
  }

  dimension: trunkcost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}."TRUNKCOST" ;;
    value_format_name: gbp
  }

  dimension: cost_actual {
    group_label: "Costs"
    description: "Total Cost (Driver+Agent+Trunk+Linehaul+NDJ"
    type: number
    sql:  ${TABLE}."DRIVERCOST" + ${TABLE}."AGENTCOST" + ${TABLE}."TRUNKCOST" +
          ${TABLE}."LINEHAULCOST" + ${TABLE}."NDJCOST"   ;;
    value_format_name: gbp
  }

  dimension: profit_actual {
    group_label: "Profit & Margin"
    type: number
    sql: ${revenue_actual} - ${cost_actual} ;;
    value_format_name: gbp
  }

  dimension: margin_actual {
    group_label: "Profit & Margin"
    type: number
    sql: case when ${revenue_actual} = 0 then 0 else
         (${revenue_actual} - ${cost_actual}) / ${revenue_actual} end ;;
    value_format_name: percent_2
  }

  dimension: umbrellaservice {
    type: string
    sql: ${TABLE}."UMBRELLASERVICE" ;;
    drill_fields: [servicedescription,jobno]
  }

  dimension: week_number {
    type: number
    sql: ${TABLE}."WEEK_NUMBER" ;;
    drill_fields: [booking_date]
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
    drill_fields: [currentaccountmanager]
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
    drill_fields: [sfdivision]
  }

  dimension: sfdivision {
    label: "Division"
    type: string
    sql: ${TABLE}."SFDIVISION" ;;
    drill_fields: [managername,currentaccountmanager]
  }

  dimension: user_name {
    label: "Username"
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: managername {
    type: string
    sql: ${TABLE}."MANAGERNAME" ;;
    drill_fields: [currentaccountmanager]
  }

  dimension: frompostcode {
    type: string
    sql: ${TABLE}."FROMPOSTCODE" ;;
    map_layer_name: uk_postcode_areas
  }

  dimension: topostcode {
    type: string
    sql: ${TABLE}."TOPOSTCODE" ;;
  }

  dimension: fromlatitude {
    type: string
    sql: cast(${TABLE}."FROMLATITUDE" as decimal (8,6)) ;;
  }

  dimension: fromlongitude {
    type: string
    sql: cast(${TABLE}."FROMLONGITUDE" as decimal (9,6)) ;;
  }

  dimension: tolatitude {
    type: string
    sql: cast(${TABLE}."TOLATITUDE" as decimal (8,6)) ;;
  }

  dimension: tolongitude {
    type: string
    sql: cast(${TABLE}."TOLONGITUDE" as decimal (9,6)) ;;
  }

  dimension: fromLonglat {
    type: location
    sql_latitude: ${fromlatitude} ;;
    sql_longitude: ${fromlongitude}  ;;
  }

  dimension: toLonglat {
    type: location
    sql_latitude: ${tolatitude} ;;
    sql_longitude: ${tolongitude}  ;;
  }

  ###########################   measures   #############################

  measure: Number_of_bookings {

    type: sum
    sql: ${jobcount} ;;
    value_format_name: decimal_0
    drill_fields: [map_details*]
  }

  measure: sum_of_revenue {
    group_label: "Revenue"
    type: sum
    sql: ${revenue} ;;
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

  measure: sum_of_revenue_actual {
    group_label: "Revenue"
    type: sum
    sql: ${revenue_actual} ;;
    value_format_name: gbp
    drill_fields: [revenue_details*]
  }


  measure: sum_of_drivercost {
    group_label: "Costs"
    type: sum
    sql: ${drivercost} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_agentcost {
    group_label: "Costs"
    type: sum
    sql: ${agentcost} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_trunkcost {
    group_label: "Costs"
    type: sum
    sql: ${trunkcost} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_linehaulcost {
    group_label: "Costs"
    type: sum
    sql: ${linehaulcost} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_ndjcost {
    group_label: "Costs"
    type: sum
    sql: ${ndjcost} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_cost_actual {
    group_label: "Costs"
    type: sum
    sql: ${cost_actual} ;;
    value_format_name: gbp
    drill_fields: [cost_details*]
  }

  measure: sum_of_profit_actual {
    group_label: "Profit & Margin"
    type: sum
    sql: ${profit_actual} ;;
    value_format_name: gbp
    drill_fields: [margin_details*]
  }

  measure: sum_of_margin_actual {
    group_label: "Profit & Margin"
    type: number
    sql: case when sum(${revenue_actual}) = 0 then 0 else
         sum(${profit_actual}) / sum(${revenue_actual}) end  ;;
    value_format_name: percent_2
    drill_fields: [margin_details*]
  }

  measure: sum_of_jobcount {
    type: sum
    sql: ${jobcount}   ;;
    value_format_name: decimal_0
    drill_fields: [revenue_details*]
  }


 ###########################   drill sets   #############################

set: explore_set {

    fields: [archive,archive_date,archive_month_number,archive_name_of_month,archive_year,jobno,booking_date,booking_month,booking_month_num,booking_month_name,booking_week,booking_week_of_year,booking_year,
    reportgroup,clientreportstatus,currentclientcode,currentclientname,currentconsolcode,currentconsolname,accountcode,accountname,currentaccountmanager,opptype,forecast_key,
    fckey_name,servicecode,servicedescription,umbrellaservice,revenue,discount,revenue_actual,drivercost,agentcost,trunkcost,linehaulcost,ndjcost,cost_actual,
    profit_actual,margin_actual,
    title,department,sfdivision,user_name,managername,frompostcode,topostcode,fromlatitude,fromlongitude,tolatitude,tolongitude,fromLonglat,toLonglat,
    sum_of_revenue,sum_of_discount,sum_of_revenue_actual,sum_of_drivercost,sum_of_agentcost,sum_of_trunkcost,sum_of_linehaulcost,
    sum_of_ndjcost,sum_of_cost_actual,sum_of_profit_actual,sum_of_margin_actual,sum_of_jobcount,Number_of_bookings]
}

set: revenue_details {
     fields: [currentclientcode,currentclientname,booking_month_name,Number_of_bookings,sum_of_revenue_actual]
}

  set: cost_details {
    fields: [currentclientcode,currentclientname,booking_month_name,Number_of_bookings,sum_of_drivercost,sum_of_agentcost,sum_of_trunkcost,sum_of_linehaulcost,sum_of_ndjcost]
  }

  set: margin_details {
    fields: [currentclientcode,currentclientname,booking_month_name,Number_of_bookings,sum_of_revenue,sum_of_discount,sum_of_drivercost,sum_of_agentcost,sum_of_trunkcost,sum_of_linehaulcost,sum_of_ndjcost,sum_of_profit_actual,sum_of_margin_actual]
  }

  set: map_details {
    fields: [jobno,accountcode,accountname,frompostcode,topostcode,sum_of_revenue_actual,sum_of_margin_actual]
  }


}
