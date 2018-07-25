view: source_templates {
  sql_table_name: data_5b477838c366d.source_templates ;;

  dimension: json {
    type: string
    sql: ${TABLE}.json ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
