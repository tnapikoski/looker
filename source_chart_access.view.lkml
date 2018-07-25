view: source_chart_access {
  sql_table_name: data_5b477838c366d.source_chart_access ;;

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: chart_id {
    type: number
    sql: ${TABLE}.chart_id ;;
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
    drill_fields: []
  }
}
