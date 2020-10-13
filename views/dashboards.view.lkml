view: dashboards {
  sql_table_name: "DATAMART"."DASHBOARDS"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountid {
    type: string
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: accountregion {
    type: string
    sql: ${TABLE}."ACCOUNTREGION" ;;
  }

  dimension: accountsc {
    type: string
    sql: ${TABLE}."ACCOUNTSC" ;;
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

  dimension: agent {
    type: string
    sql: ${TABLE}."AGENT" ;;
  }

  dimension: agentcost {
    type: number
    sql: ${TABLE}."AGENTCOST" ;;
  }

  dimension: agenttrackno {
    type: string
    sql: ${TABLE}."AGENTTRACKNO" ;;
  }

  dimension: allocatedregion {
    type: string
    sql: ${TABLE}."ALLOCATEDREGION" ;;
  }

  dimension: allocatedsc {
    type: string
    sql: ${TABLE}."ALLOCATEDSC" ;;
  }

  dimension_group: allocationdatetime {
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
    sql: ${TABLE}."ALLOCATIONDATETIME" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archivemonth {
    type: number
    sql: ${TABLE}."ARCHIVEMONTH" ;;
  }

  dimension: archiveyear {
    type: number
    sql: ${TABLE}."ARCHIVEYEAR" ;;
  }

  dimension: bookcaller {
    type: string
    sql: ${TABLE}."BOOKCALLER" ;;
  }

  dimension_group: bookingdatetime {
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
    sql: ${TABLE}."BOOKINGDATETIME" ;;
  }

  dimension: bookingday {
    type: number
    sql: ${TABLE}."BOOKINGDAY" ;;
  }

  dimension: bookingmonth {
    type: number
    sql: ${TABLE}."BOOKINGMONTH" ;;
  }

  dimension: bookingtype {
    type: string
    sql: ${TABLE}."BOOKINGTYPE" ;;
  }

  dimension: bookingweek {
    type: number
    sql: ${TABLE}."BOOKINGWEEK" ;;
  }

  dimension: bookingyear {
    type: number
    sql: ${TABLE}."BOOKINGYEAR" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: costaccountflag {
    type: string
    sql: ${TABLE}."COSTACCOUNTFLAG" ;;
  }

  dimension: costadjustment {
    type: number
    sql: ${TABLE}."COSTADJUSTMENT" ;;
  }

  dimension: couriermilage {
    type: number
    sql: ${TABLE}."COURIERMILAGE" ;;
  }

  dimension: cpa {
    type: number
    sql: ${TABLE}."CPA" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: custcoreamt {
    type: number
    sql: ${TABLE}."CUSTCOREAMT" ;;
  }

  dimension: datasource {
    type: number
    sql: ${TABLE}."DATASOURCE" ;;
  }

  dimension_group: deliverybydatetime {
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
    sql: ${TABLE}."DELIVERYBYDATETIME" ;;
  }

  dimension_group: deliverydatetime {
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
    sql: ${TABLE}."DELIVERYDATETIME" ;;
  }

  dimension: departmentname {
    type: string
    sql: ${TABLE}."DEPARTMENTNAME" ;;
  }

  dimension: destinationcountry {
    type: string
    sql: ${TABLE}."DESTINATIONCOUNTRY" ;;
  }

  dimension: destinationtown {
    type: string
    sql: ${TABLE}."DESTINATIONTOWN" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
  }

  dimension: drivercoreamt {
    type: number
    sql: ${TABLE}."DRIVERCOREAMT" ;;
  }

  dimension: drivercost {
    type: number
    sql: ${TABLE}."DRIVERCOST" ;;
  }

  dimension: driverkey {
    type: string
    sql: ${TABLE}."DRIVERKEY" ;;
  }

  dimension: driverpayperiod {
    type: string
    sql: ${TABLE}."DRIVERPAYPERIOD" ;;
  }

  dimension: driverstatus {
    type: string
    sql: ${TABLE}."DRIVERSTATUS" ;;
  }

  dimension: followons {
    type: string
    sql: ${TABLE}."FOLLOWONS" ;;
  }

  dimension: fromaddress1 {
    type: string
    sql: ${TABLE}."FROMADDRESS1" ;;
  }

  dimension: fromaddress2 {
    type: string
    sql: ${TABLE}."FROMADDRESS2" ;;
  }

  dimension: fromcomment {
    type: string
    sql: ${TABLE}."FROMCOMMENT" ;;
  }

  dimension: fromcontact {
    type: string
    sql: ${TABLE}."FROMCONTACT" ;;
  }

  dimension: fromlatitude {
    type: number
    sql: ${TABLE}."FROMLATITUDE" ;;
  }

  dimension: fromlongitude {
    type: number
    sql: ${TABLE}."FROMLONGITUDE" ;;
  }

  dimension: frompostcode {
    type: string
    sql: ${TABLE}."FROMPOSTCODE" ;;
  }

  dimension: handlingcost {
    type: number
    sql: ${TABLE}."HANDLINGCOST" ;;
  }

  dimension: hawb {
    type: string
    sql: ${TABLE}."HAWB" ;;
  }

  dimension: indemnitycharge {
    type: number
    sql: ${TABLE}."INDEMNITYCHARGE" ;;
  }

  dimension: indemnityflag {
    type: string
    sql: ${TABLE}."INDEMNITYFLAG" ;;
  }

  dimension: invoiceno {
    type: string
    sql: ${TABLE}."INVOICENO" ;;
  }

  dimension: itemsweight {
    type: number
    sql: ${TABLE}."ITEMSWEIGHT" ;;
  }

  dimension_group: jobcollectionarrivedat {
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
    sql: ${TABLE}."JOBCOLLECTIONARRIVEDAT" ;;
  }

  dimension: jobcount {
    type: number
    sql: ${TABLE}."JOBCOUNT" ;;
  }

  dimension_group: jobcreationdatetime {
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
    sql: ${TABLE}."JOBCREATIONDATETIME" ;;
  }

  dimension_group: jobdeliveryarrivedat {
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
    sql: ${TABLE}."JOBDELIVERYARRIVEDAT" ;;
  }

  dimension: jobno {
    type: number
    sql: ${TABLE}."JOBNO" ;;
  }

  dimension: jobregion {
    type: string
    sql: ${TABLE}."JOBREGION" ;;
  }

  dimension: jobsc {
    type: string
    sql: ${TABLE}."JOBSC" ;;
  }

  dimension: jobstatus {
    type: string
    sql: ${TABLE}."JOBSTATUS" ;;
  }

  dimension: journey {
    type: string
    sql: ${TABLE}."JOURNEY" ;;
  }

  dimension: linehaulcost {
    type: number
    sql: ${TABLE}."LINEHAULCOST" ;;
  }

  dimension: localworking {
    type: number
    sql: ${TABLE}."LOCALWORKING" ;;
  }

  dimension: mmessage {
    type: string
    sql: ${TABLE}."MMESSAGE" ;;
  }

  dimension: ndiregion {
    type: string
    sql: ${TABLE}."NDIREGION" ;;
  }

  dimension: ndisc {
    type: string
    sql: ${TABLE}."NDISC" ;;
  }

  dimension: nondistributedjobcost {
    type: number
    sql: ${TABLE}."NONDISTRIBUTEDJOBCOST" ;;
  }

  dimension: noofitems {
    type: number
    sql: ${TABLE}."NOOFITEMS" ;;
  }

  dimension: oohflag {
    type: string
    sql: ${TABLE}."OOHFLAG" ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: origincountry {
    type: string
    sql: ${TABLE}."ORIGINCOUNTRY" ;;
  }

  dimension: origintown {
    type: string
    sql: ${TABLE}."ORIGINTOWN" ;;
  }

  dimension: permflag {
    type: string
    sql: ${TABLE}."PERMFLAG" ;;
  }

  dimension_group: pickupdatetime {
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
    sql: ${TABLE}."PICKUPDATETIME" ;;
  }

  dimension: pod {
    type: string
    sql: ${TABLE}."POD" ;;
  }

  dimension: proworking {
    type: number
    sql: ${TABLE}."PROWORKING" ;;
  }

  dimension: qasvalidation {
    type: string
    sql: ${TABLE}."QASVALIDATION" ;;
  }

  dimension: reference2 {
    type: string
    sql: ${TABLE}."REFERENCE2" ;;
  }

  dimension: reference3 {
    type: string
    sql: ${TABLE}."REFERENCE3" ;;
  }

  dimension: referenceno {
    type: string
    sql: ${TABLE}."REFERENCENO" ;;
  }

  dimension: rejecteddriver {
    type: string
    sql: ${TABLE}."REJECTEDDRIVER" ;;
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

  dimension: servicecode {
    type: string
    sql: ${TABLE}."SERVICECODE" ;;
  }

  dimension: servicedesc {
    type: string
    sql: ${TABLE}."SERVICEDESC" ;;
  }

  dimension: serviceoption {
    type: string
    sql: ${TABLE}."SERVICEOPTION" ;;
  }

  dimension: split {
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension_group: systemdatetime {
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
    sql: ${TABLE}."SYSTEMDATETIME" ;;
  }

  dimension: toaddress1 {
    type: string
    sql: ${TABLE}."TOADDRESS1" ;;
  }

  dimension: toaddress2 {
    type: string
    sql: ${TABLE}."TOADDRESS2" ;;
  }

  dimension: tocomment {
    type: string
    sql: ${TABLE}."TOCOMMENT" ;;
  }

  dimension: tocontact {
    type: string
    sql: ${TABLE}."TOCONTACT" ;;
  }

  dimension: tolatitude {
    type: number
    sql: ${TABLE}."TOLATITUDE" ;;
  }

  dimension: tolongitude {
    type: number
    sql: ${TABLE}."TOLONGITUDE" ;;
  }

  dimension: topostcode {
    type: string
    sql: ${TABLE}."TOPOSTCODE" ;;
  }

  dimension: totalcost {
    type: number
    sql: ${TABLE}."TOTALCOST" ;;
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

  dimension: ukointflag {
    type: string
    sql: ${TABLE}."UKOINTFLAG" ;;
  }

  dimension: umbrellaservice {
    type: string
    sql: ${TABLE}."UMBRELLASERVICE" ;;
  }

  dimension: umessage {
    type: string
    sql: ${TABLE}."UMESSAGE" ;;
  }

  dimension: unitsdistance {
    type: number
    sql: ${TABLE}."UNITSDISTANCE" ;;
  }

  dimension: vehicledesc {
    type: string
    sql: ${TABLE}."VEHICLEDESC" ;;
  }

  dimension: vehicletype {
    type: string
    sql: ${TABLE}."VEHICLETYPE" ;;
  }

  dimension: workday {
    type: number
    sql: ${TABLE}."WORKDAY" ;;
  }

 dimension: customercharge {
   type: number
   sql: ${revenue}+${discount} ;;
 }

 dimension: driveragenttrunkcost {
  type: number
  sql: ${drivercost}+${agentcost}+${trunkcost} ;;
 }

dimension: margin {
  type: number
  sql: ${customercharge}-${driveragenttrunkcost} ;;
}

dimension: mamargin {
  type: number
  sql: ${totalrevenueadjusted}-${totalcostadjusted} ;;
}

################################################## MEASURES ##################################################

  measure: revenueplusdiscount {
    type: sum
    sql: ${customercharge} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "revenue plus discount"
  }

  measure: datcost {
    type: sum
    sql: ${driveragenttrunkcost} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "driver, agent, trunk cost (dat)"
  }

  measure: customermargin {
    type: sum
    sql: ${margin} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "based off of customercharge and datcost"
  }

  measure: volume {
    type: count_distinct
    sql: ${jobno} ;;
    description: "counting jobnos"
  }

  measure: managementaccountrevenue {
    type: sum
    sql: ${totalrevenueadjusted} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "includes accruals"
  }

  measure: managementaccountscost {
    type: sum
    sql: ${totalcostadjusted} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "includes accruals and non distributed cost"
  }

  measure: managementaccountsmargin {
    type: sum
    sql: ${mamargin} ;;
    value_format_name: gbp
    #gbp_0 to remove decimal
    description: "this might be double counting trunk cost at month end, check later"

  }

}
