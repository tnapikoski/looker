view: source_view_access {
  sql_table_name: data_5b477838c366d.source_view_access ;;

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
