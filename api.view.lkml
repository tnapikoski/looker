view: api {
  sql_table_name: data_5b477838c366d.api ;;

  dimension: api_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.api_id ;;
  }

  dimension: api_guid {
    type: string
    sql: ${TABLE}.api_guid ;;
  }

  dimension: api_name {
    type: string
    sql: ${TABLE}.api_name ;;
  }

  dimension: api_options {
    type: string
    sql: ${TABLE}.api_options ;;
  }

  dimension: api_type {
    type: string
    sql: ${TABLE}.api_type ;;
  }

  dimension: api_url {
    type: string
    sql: ${TABLE}.api_url ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
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
    drill_fields: [api_id, api_name, sources.source_id, sources.source_name, source_export_access.count]
  }
}
