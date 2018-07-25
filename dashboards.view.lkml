view: dashboards {
  sql_table_name: data_5b477838c366d.dashboards ;;

  dimension: dashboard_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: dashboard_desc {
    type: string
    sql: ${TABLE}.dashboard_desc ;;
  }

  dimension: dashboard_guid {
    type: string
    sql: ${TABLE}.dashboard_guid ;;
  }

  dimension: dashboard_name {
    type: string
    sql: ${TABLE}.dashboard_name ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: source_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_type_id ;;
  }

  dimension: theme {
    type: number
    sql: ${TABLE}.theme ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dashboard_id,
      dashboard_name,
      source_types.source_type_id,
      source_types.source_type_name,
      dashboard_access.count,
      dashboard_elements.count,
      dashboard_saves.count
    ]
  }
}
