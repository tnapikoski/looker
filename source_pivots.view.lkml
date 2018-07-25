view: source_pivots {
  sql_table_name: data_5b477838c366d.source_pivots ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pivot_id {
    type: number
    sql: ${TABLE}.pivot_id ;;
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
    drill_fields: [name, sources.source_id, sources.source_name]
  }
}
