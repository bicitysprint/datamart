view: ut_workday_calendar {
  sql_table_name: "CC"."UT_WORKDAY_CALENDAR"
    ;;

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: bags {
    type: number
    sql: ${TABLE}."BAGS" ;;
  }

  dimension: current_wd {
    type: number
    sql: ${TABLE}."CURRENT_WD" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: je {
    type: number
    sql: ${TABLE}."JE" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: mp {
    type: number
    sql: ${TABLE}."MP" ;;
  }

  dimension: pcm {
    type: number
    sql: ${TABLE}."PCM" ;;
  }

  dimension: twc {
    type: number
    sql: ${TABLE}."TWC" ;;
  }

  dimension: weekday {
    type: number
    sql: ${TABLE}."WEEKDAY" ;;
  }

  dimension: workday {
    type: number
    sql: ${TABLE}."WORKDAY" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
