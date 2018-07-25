view: source_conditionals {
  sql_table_name: data_5b477838c366d.source_conditionals ;;

  dimension: conditional_filter {
    type: string
    sql: ${TABLE}.conditional_filter ;;
  }

  dimension: conditional_format {
    type: string
    sql: ${TABLE}.conditional_format ;;
  }

  dimension: conditional_id {
    type: number
    sql: ${TABLE}.conditional_id ;;
  }

  dimension: conditional_name {
    type: string
    sql: ${TABLE}.conditional_name ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [conditional_name, sources.source_id, sources.source_name]
  }
}
