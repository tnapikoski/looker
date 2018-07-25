view: source_pivot_access {
  sql_table_name: data_5b477838c366d.source_pivot_access ;;

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: pivot_id {
    type: number
    sql: ${TABLE}.pivot_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
