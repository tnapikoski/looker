view: source_export_access {
  sql_table_name: data_5b477838c366d.source_export_access ;;

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: api_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.api_id ;;
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
    drill_fields: [api.api_id, api.api_name]
  }
}
