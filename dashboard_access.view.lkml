view: dashboard_access {
  sql_table_name: data_5b477838c366d.dashboard_access ;;

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [dashboards.dashboard_id, dashboards.dashboard_name]
  }
}
