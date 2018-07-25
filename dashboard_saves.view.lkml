view: dashboard_saves {
  sql_table_name: data_5b477838c366d.dashboard_saves ;;

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: save_id {
    type: number
    sql: ${TABLE}.save_id ;;
  }

  dimension: save_info {
    type: string
    sql: ${TABLE}.save_info ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [dashboards.dashboard_id, dashboards.dashboard_name]
  }
}
