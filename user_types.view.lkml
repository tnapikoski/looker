view: user_types {
  sql_table_name: data_5b477838c366d.user_types ;;

  dimension: user_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: user_type_desc {
    type: string
    sql: ${TABLE}.user_type_desc ;;
  }

  dimension: user_type_name {
    type: string
    sql: ${TABLE}.user_type_name ;;
  }

  dimension: user_type_tools {
    type: string
    sql: ${TABLE}.user_type_tools ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_type_id,
      user_type_name,
      permissions.count,
      permission_duplicates.count,
      user_type_form_access.count,
      user_type_table_access.count
    ]
  }
}
