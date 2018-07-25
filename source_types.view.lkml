view: source_types {
  sql_table_name: data_5b477838c366d.source_types ;;

  dimension: source_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.source_type_id ;;
  }

  dimension: folder_guid {
    type: string
    sql: ${TABLE}.folder_guid ;;
  }

  dimension: folder_parent {
    type: number
    sql: ${TABLE}.folder_parent ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: source_type_desc {
    type: string
    sql: ${TABLE}.source_type_desc ;;
  }

  dimension: source_type_name {
    type: string
    sql: ${TABLE}.source_type_name ;;
  }

  measure: count {
    type: count
    drill_fields: [source_type_id, source_type_name, dashboards.count, sources.count]
  }
}
