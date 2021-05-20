view: commission_jobs {
  sql_table_name: "DATAMART_STAGE"."COMMISSION_JOBS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
    drill_fields: [jobno]
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
    drill_fields: [jobno]
  }

  dimension_group: actual_closed {
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
    sql: ${TABLE}."ACTUAL_CLOSED_DATE" ;;
  }

  dimension_group: actual_comm_end {
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
    sql: ${TABLE}."ACTUAL_COMM_END_DATE" ;;
  }

  dimension_group: actual_comm_start {
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
    sql: ${TABLE}."ACTUAL_COMM_START_DATE" ;;
  }

  dimension: adj_comm_amount {
    type: number
    sql: ${TABLE}."ADJ_COMM_AMOUNT" ;;
    value_format_name: gbp
  }

  dimension: adj_comm_amount_no_revsplit {
    type: number
    sql: ${TABLE}."ADJ_COMM_AMOUNT_NO_REVSPLIT" ;;
    value_format_name: gbp
  }

  dimension: adj_comm_split_perc {
    type: number
    sql: ${TABLE}."ADJ_COMM_SPLIT_PERC" ;;
    value_format_name: percent_2
  }

  dimension: agentcost {
    type: number
    sql: ${TABLE}."AGENTCOST" ;;
    value_format_name: gbp
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_job_salesrep {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${archive} || '-' || ${jobno} || '-' || ${user_full_name} ;;
  }

  dimension_group: archive {
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
    sql: ${TABLE}."ARCHIVE_DATE" ;;
  }

##  dimension: archive_month {
##    type: number
##    sql: ${TABLE}."ARCHIVE_MONTH" ;;
##  }

##  dimension: archive_year {
##    type: number
##    sql: ${TABLE}."ARCHIVE_YEAR" ;;
##  }

  dimension: booking_day {
    hidden: yes
    type: number
    sql: ${TABLE}."BOOKING_DAY" ;;
  }

  dimension: booking_month {
    hidden: yes
    type: number
    sql: ${TABLE}."BOOKING_MONTH" ;;
  }

  dimension: booking_week {
    hidden: yes
    type: number
    sql: ${TABLE}."BOOKING_WEEK" ;;
  }

  dimension: booking_year {
    hidden: yes
    type: number
    sql: ${TABLE}."BOOKING_YEAR" ;;
  }

  dimension_group: bookingdatetime {
    label: "Booking"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}."BOOKINGDATETIME" ;;
    drill_fields: [jobno]
  }

  dimension: bookingtype {
    type: string
    sql: ${TABLE}."BOOKINGTYPE" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: comm_adj {
    type: number
    sql: ${TABLE}."COMM_ADJ" ;;
  }

  dimension_group: comm_end {
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
    sql: ${TABLE}."COMM_END_DATE" ;;
  }

  dimension: comm_month_period {
    type: number
    sql: ${TABLE}."COMM_MONTH_PERIOD" ;;
  }

  dimension_group: comm_period_start {
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
    sql: ${TABLE}."COMM_PERIOD_START" ;;
  }

  dimension: comm_split_perc {
    type: number
    sql: ${TABLE}."COMM_SPLIT_PERC" ;;
    value_format_name: percent_2
  }

  dimension_group: comm_start {
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
    sql: ${TABLE}."COMM_START_DATE" ;;
  }

  dimension: commission_amount {
    type: number
    sql: ${TABLE}."COMMISSION_AMOUNT" ;;
    value_format_name: gbp
  }

  dimension: commission_amount_no_revsplit {
    type: number
    sql: ${TABLE}."COMMISSION_AMOUNT_NO_REVSPLIT" ;;
    value_format_name: gbp
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
    value_format_name: gbp
  }

  dimension: costaccountflag {
    type: string
    sql: ${TABLE}."COSTACCOUNTFLAG" ;;
  }

  dimension_group: createddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATEDDATE" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
    value_format_name: gbp
  }

  dimension: customer_charge {
    type: number
    sql: ${TABLE}."CUSTOMER_CHARGE" ;;
    value_format_name: gbp
  }

  dimension: customer_charge_split {
    type: number
    sql: ${TABLE}."REVENUE_SPLIT_AMOUNT" ;;
    value_format_name: gbp
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
    value_format_name: gbp
  }

  dimension: drivercost {
    type: number
    sql: ${TABLE}."DRIVERCOST" ;;
    value_format_name: gbp
  }

  dimension: invoiceno {
    type: string
    sql: ${TABLE}."INVOICENO" ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_split {
    type: string
    sql: ${TABLE}."IS_SPLIT" ;;
  }

  dimension: isnewcustomerin2019 {
    type: number
    sql: ${TABLE}."ISNEWCUSTOMERIN2019" ;;
  }

  dimension: isnewcustomerin2020 {
    type: number
    sql: ${TABLE}."ISNEWCUSTOMERIN2020" ;;
  }

  dimension: isnewcustomerin2021 {
    type: number
    sql: ${TABLE}."ISNEWCUSTOMERIN2021" ;;
  }

  dimension: jobcount {
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
  }

  dimension: jobno {
    type: number
    sql: ${TABLE}."JOBNO" ;;
    value_format_name: id
  }

  dimension: linehaulcost {
    type: number
    sql: ${TABLE}."LINEHAULCOST" ;;
    value_format_name: gbp
  }

  dimension: manager_name {
    type: string
    sql: ${TABLE}."MANAGER_NAME" ;;
  }

  dimension: manager_username {
    type: string
    sql: ${TABLE}."MANAGER_USERNAME" ;;
  }

  dimension: margin {
    type: number
    sql: ${TABLE}."MARGIN" ;;
    value_format_name: gbp
  }

  dimension: margin_split_amount {
    type: number
    sql: ${TABLE}."MARGIN_SPLIT_AMOUNT" ;;
    value_format_name: gbp
  }

  dimension_group: modifieddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."MODIFIEDDATE" ;;
  }

  dimension: nondistributedjobcost {
    type: number
    sql: ${TABLE}."NONDISTRIBUTEDJOBCOST" ;;
    value_format_name: gbp
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}."OPP_ID" ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}."OPP_NAME" ;;
  }

  dimension: opportunity_type {
    type: string
    sql: ${TABLE}."OPPORTUNITY_TYPE" ;;
  }

  dimension: opportunity_umbrella_service {
    type: string
    sql: ${TABLE}."OPPORTUNITY_UMBRELLA_SERVICE" ;;
  }

  dimension: pod {
    type: string
    sql: ${TABLE}."POD" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
    value_format_name: gbp
  }

  dimension: revenue_split_perc {
    type: number
    sql: ${TABLE}."REVENUE_SPLIT_PERC" ;;
    value_format_name: percent_2
  }

  dimension: sales_division {
    type: string
    sql: ${TABLE}."SALES_DIVISION" ;;
  }

  dimension: scheme1_id {
    type: number
    sql: ${TABLE}."SCHEME1ID" ;;
  }

  dimension: scheme2_id {
    type: number
    sql: ${TABLE}."SCHEME2ID" ;;
  }

  dimension: scheme3_id {
    type: number
    sql: ${TABLE}."SCHEME3ID" ;;
  }

  dimension: servicecode {
    type: string
    sql: ${TABLE}."SERVICECODE" ;;
  }

  dimension_group: sf_commission_end {
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
    sql: ${TABLE}."SF_COMMISSION_END_DATE" ;;
  }

  dimension_group: sf_commission_start {
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
    sql: ${TABLE}."SF_COMMISSION_START_DATE" ;;
  }

  dimension: split {
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: split_lv {
    type: string
    sql: ${TABLE}."SPLIT_LV" ;;
  }

  dimension: trunkcost {
    type: number
    sql: ${TABLE}."TRUNKCOST" ;;
    value_format_name: gbp
  }

  dimension: umbrellaservice {
    type: string
    sql: ${TABLE}."UMBRELLASERVICE" ;;
  }

  dimension: user_full_name {
    type: string
    sql: ${TABLE}."USER_FULL_NAME" ;;
    drill_fields: [accountcode,accountname]
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: user_status {
    type: string
    sql: ${TABLE}."USER_STATUS" ;;
  }

  ####################################    measues   #####################################

  measure: sum_of_actual_commission {
    type: sum
    sql: ${adj_comm_amount} ;;
    drill_fields: [bookingdatetime_year,bookingdatetime_month,user_full_name,accountcode,accountname,sum_of_customer_charge_with_split,sum_of_margin,sum_of_actual_commission]
    value_format_name: gbp
  }

  measure: sum_of_margin {
    description: "Margin With Splits"
    type: sum
    sql: ${margin_split_amount} ;;
    value_format_name: gbp
  }

  measure: sum_of_customer_charge_with_split {
    description: "Revenue With Splits"
    type: sum
    sql: ${customer_charge_split} ;;
    value_format_name: gbp
    drill_fields: [bookingdatetime_year,bookingdatetime_month,user_full_name,accountcode,accountname,sum_of_customer_charge_with_split,sum_of_margin,sum_of_actual_commission]
  }

  measure: sum_of_revenue {
    description: "Margin With Splits"
    type: sum
    sql: ${revenue} ;;
    value_format_name: gbp
  }


}
