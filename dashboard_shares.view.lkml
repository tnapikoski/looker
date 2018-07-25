view: dashboard_shares {
  sql_table_name: data_5b477838c366d.dashboard_shares ;;

  dimension: dashboard_guid {
    type: string
    sql: ${TABLE}.dashboard_guid ;;
  }

  dimension: shared_guid {
    type: string
    sql: ${TABLE}.shared_guid ;;
  }

  dimension: shared_id {
    type: number
    sql: ${TABLE}.shared_id ;;
  }

  dimension: user_guid {
    type: string
    sql: ${TABLE}.user_guid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
