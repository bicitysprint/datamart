view: vwtrading {
  sql_table_name: "DATAMART"."VWTRADING"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountmanager {
    type: string
    sql: ${TABLE}."ACCOUNTMANAGER" ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
  }

  dimension: accrualsincost {
    type: number
    sql: ${TABLE}."ACCRUALSINCOST" ;;
  }

  dimension: accrualsinrevenue {
    type: number
    sql: ${TABLE}."ACCRUALSINREVENUE" ;;
  }

  dimension: accrualsoutcost {
    type: number
    sql: ${TABLE}."ACCRUALSOUTCOST" ;;
  }

  dimension: accrualsoutrevenue {
    type: number
    sql: ${TABLE}."ACCRUALSOUTREVENUE" ;;
  }

  dimension: agentcost {
    type: number
    sql: ${TABLE}."AGENTCOST" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension_group: booking {
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
    sql: ${TABLE}."BOOKING_DATE" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: clientcode {
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
  }

  dimension: clientname {
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
  }

  dimension: consolcode {
    type: string
    sql: ${TABLE}."CONSOLCODE" ;;
  }

  dimension: consolname {
    type: string
    sql: ${TABLE}."CONSOLNAME" ;;
  }

  dimension: costadjustment {
    type: number
    sql: ${TABLE}."COSTADJUSTMENT" ;;
  }

  dimension: costinarchive {
    type: number
    sql: ${TABLE}."COSTINARCHIVE" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
  }

  dimension: drivercost {
    type: number
    sql: ${TABLE}."DRIVERCOST" ;;
  }

  dimension: finalcost {
    type: number
    sql: ${TABLE}."FINALCOST" ;;
  }

  dimension: finalprofit {
    type: number
    sql: ${TABLE}."FINALPROFIT" ;;
  }

  dimension: finalrevenue {
    type: number
    sql: ${TABLE}."FINALREVENUE" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: jobcount {
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
  }

  dimension: ndjcost {
    type: number
    sql: ${TABLE}."NDJCOST" ;;
  }

  dimension: opptype {
    type: string
    sql: ${TABLE}."OPPTYPE" ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."PROFIT" ;;
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}."REPORTGROUP" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  dimension: revenueadjustment {
    type: number
    sql: ${TABLE}."REVENUEADJUSTMENT" ;;
  }

  dimension: revenueinarchive {
    type: number
    sql: ${TABLE}."REVENUEINARCHIVE" ;;
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
  }

  dimension: servicedescription {
    type: string
    sql: ${TABLE}."SERVICEDESCRIPTION" ;;
  }

  dimension: servicegroupcode {
    type: string
    sql: ${TABLE}."SERVICEGROUPCODE" ;;
  }

  dimension: totalcostadjusted {
    type: number
    sql: ${TABLE}."TOTALCOSTADJUSTED" ;;
  }

  dimension: totalrevenue {
    type: number
    sql: ${TABLE}."TOTALREVENUE" ;;
  }

  dimension: totalrevenueadjusted {
    type: number
    sql: ${TABLE}."TOTALREVENUEADJUSTED" ;;
  }

  dimension: trunkcost {
    type: number
    sql: ${TABLE}."TRUNKCOST" ;;
  }

  measure: count {
    type: count
    drill_fields: [accountname, consolname, clientname]
  }
}
