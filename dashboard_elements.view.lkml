view: dashboard_elements {
  sql_table_name: data_5b477838c366d.dashboard_elements ;;

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: element_info {
    type: string
    sql: ${TABLE}.element_info ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.element_name ;;
  }

  dimension: element_order {
    type: number
    sql: ${TABLE}.element_order ;;
  }

  dimension: element_type {
    type: string
    sql: ${TABLE}.element_type ;;
  }

  measure: count {
    type: count
    drill_fields: [element_name, dashboards.dashboard_id, dashboards.dashboard_name]
  }
}
