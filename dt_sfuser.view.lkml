view: dt_sfuser {
  derived_table: {
    persist_for: "24 hour"
    sql: SELECT

            U.ID,
            U.USERNAME,
            U.EMAIL,
            U.NAME,
            U.TITLE,
            U.DEPARTMENT,
            CASE WHEN U.DEPARTMENT LIKE '%Development%' THEN 'Business Development' WHEN U.DEPARTMENT LIKE '%Solutions%' THEN 'Business Solutions' ELSE U.DEPARTMENT END AS DEPT,
            U.DIVISION,
            U.MANAGERID,
            T1.MANAGER_NAME,
            CASE WHEN U.TITLE LIKE '%AD' THEN 'Account Director' WHEN U.TITLE LIKE '%KAM' THEN 'KAM' WHEN U.TITLE LIKE '%TM' THEN 'TM' WHEN U.TITLE LIKE '%Territory%' THEN 'TM'
            WHEN U.TITLE LIKE '%Indoor%' THEN 'TM' ELSE U.TITLE END AS ROLE,
            U.ISACTIVE

            FROM DATAMART.SFUSER U

            LEFT JOIN

            (SELECT

            U.ID,
            U.MANAGERID,
            U.NAME AS MANAGER_NAME

            FROM DATAMART.SFUSER U

             ) AS T1 ON T1.ID = U.MANAGERID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."USERNAME" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/650?Name={{value}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/648?Department={{value}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }

    link: {
      label: "See Client Detail for {{value}}"
      url: "/dashboards/650?Department={{value}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: dept {
    type: string
    sql: ${TABLE}."DEPT" ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}."DIVISION" ;;
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/649?Division={{value}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }

  dimension: managerid {
    type: string
    sql: ${TABLE}."MANAGERID" ;;
  }

  dimension: manager_name {
    type: string
    sql: ${TABLE}."MANAGER_NAME" ;;
    link: {
      label: "See Detail for {{value}}"
      url: "/dashboards/649?Manager={{value}}&Name={{value}}&Department={{ _filters['dt_sfuser.department']}}"
      icon_url: "https://cecil.citysprint.co.uk/favicon.ico"
    }
  }


  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  dimension: isactive {
    type: string
    sql: ${TABLE}."ISACTIVE" ;;
  }

  set: detail {
    fields: [name,department,division,dept,manager_name
    ]
  }
}
