view: dt_top10_clients {
  derived_table: {
    persist_for: "24 hour"
    sql: select
      t.clientcode,
      t.clientname,
      sum(t.finalrevenue) as revenue
      from datamart.trading t
      where t.archive between 210131 and 210531
      group by 1,2 order by 3 desc limit 10
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: clientcode {
    primary_key: yes
    type: string
    sql: ${TABLE}."CLIENTCODE" ;;
  }

  dimension: clientname {
    hidden: yes
    type: string
    sql: ${TABLE}."CLIENTNAME" ;;
  }

  dimension: revenue {
    hidden: yes
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  set: detail {
    fields: [clientcode, clientname, revenue]
  }
}
