view: source_defaults {
  sql_table_name: data_5b477838c366d.source_defaults ;;

  dimension: default_id {
    type: number
    sql: ${TABLE}.default_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: view_id {
    type: number
    sql: ${TABLE}.view_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
