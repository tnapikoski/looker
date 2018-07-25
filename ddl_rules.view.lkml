view: ddl_rules {
  sql_table_name: data_5b477838c366d.ddl_rules ;;

  dimension: config {
    type: string
    sql: ${TABLE}.config ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: script {
    type: string
    sql: ${TABLE}.script ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
