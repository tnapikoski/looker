view: source_export_options {
  sql_table_name: data_5b477838c366d.source_export_options ;;

  dimension: json {
    type: string
    sql: ${TABLE}.json ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
