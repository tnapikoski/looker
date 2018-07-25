view: user_session {
  sql_table_name: data_5b477838c366d.user_session ;;

  dimension: session_info {
    type: string
    sql: ${TABLE}.session_info ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
