view: source_charts {
  sql_table_name: data_5b477838c366d.source_charts ;;

  dimension: chart_id {
    type: number
    sql: ${TABLE}.chart_id ;;
  }

  dimension: chart_info {
    type: string
    sql: ${TABLE}.chart_info ;;
  }

  dimension: chart_name {
    type: string
    sql: ${TABLE}.chart_name ;;
  }

  dimension: config {
    type: string
    sql: ${TABLE}.config ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [chart_name, sources.source_id, sources.source_name]
  }
}
