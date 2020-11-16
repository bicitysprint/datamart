view: trading {
  sql_table_name: "DATAMART"."TRADING"
    ;;

  dimension: accountcode {
    type: string
    sql: ${TABLE}."ACCOUNTCODE" ;;
  }

  dimension: accountname {
    type: string
    sql: ${TABLE}."ACCOUNTNAME" ;;
  }

  dimension: archive {
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
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
  }

  dimension: dailyrevenue {
    type: number
    sql: ${TABLE}."DAILYREVENUE" ;;
  }

  dimension: dailyrevenuebudget {
    type: number
    sql: ${TABLE}."DAILYREVENUEBUDGET" ;;
  }

  dimension: dailyrevenueforecast {
    type: number
    sql: ${TABLE}."DAILYREVENUEFORECAST" ;;
  }

  dimension: dailyrevenuepy {
    type: number
    sql: ${TABLE}."DAILYREVENUEPY" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
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
  }

  dimension: finalrevenue {
    type: number
    sql: ${TABLE}."FINALREVENUE" ;;
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
  }

  dimension: profitforecast {
    type: number
    sql: ${TABLE}."PROFITFORECAST" ;;
  }

  dimension: profitpytotal {
    type: number
    sql: ${TABLE}."PROFITPYTOTAL" ;;
  }

  dimension: profittotal {
    type: number
    sql: ${TABLE}."PROFITTOTAL" ;;
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
  }

  dimension: revenueaccrualsin {
    type: number
    sql: ${TABLE}."REVENUEACCRUALSIN" ;;
  }

  dimension: revenueaccrualsout {
    type: number
    sql: ${TABLE}."REVENUEACCRUALSOUT" ;;
  }

  dimension: revenuebudget {
    type: number
    sql: ${TABLE}."REVENUEBUDGET" ;;
  }

  dimension: revenueforecast {
    type: number
    sql: ${TABLE}."REVENUEFORECAST" ;;
  }

  dimension: revenuepytotal {
    type: number
    sql: ${TABLE}."REVENUEPYTOTAL" ;;
  }

  dimension: revenuetotal {
    type: number
    sql: ${TABLE}."REVENUETOTAL" ;;
  }

  dimension: revenuinarchive {
    type: number
    sql: ${TABLE}."REVENUINARCHIVE" ;;
  }

  measure: count {
    type: count
    drill_fields: [accountname, consolcardconsolname, clientname]
  }
}
