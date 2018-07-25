view: ui_refresh {
  sql_table_name: data_5b477838c366d.ui_refresh ;;

  dimension: refresh_id {
    type: number
    sql: ${TABLE}.refresh_id ;;
  }

  dimension: tool {
    type: string
    sql: ${TABLE}.tool ;;
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
