view: client_classification {
  sql_table_name: "DATAMART_STAGE"."CLIENT_CLASSIFICATION"
    ;;

  dimension: classification {
    type: string
    sql: ${TABLE}."CLASSIFICATION" ;;
  }

  dimension: classification_local {
    type: string
    sql: ${TABLE}."CLASSIFICATION_LOCAL" ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}."CLIENT" ;;
  }

  dimension: reporting_classification {
    type: string
    sql: ${TABLE}."REPORTING_CLASSIFICATION" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."SECTOR" ;;
  }

  dimension: subsector {
    type: string
    sql: ${TABLE}."SUBSECTOR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
