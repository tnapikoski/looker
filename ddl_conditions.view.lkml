view: ddl_conditions {
  sql_table_name: data_5b477838c366d.ddl_conditions ;;

  dimension: condition {
    type: string
    sql: ${TABLE}.`condition` ;;
  }

  dimension: condition_id {
    type: number
    sql: ${TABLE}.condition_id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: param {
    type: string
    sql: ${TABLE}.param ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: test {
    type: string
    sql: ${TABLE}.test ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
