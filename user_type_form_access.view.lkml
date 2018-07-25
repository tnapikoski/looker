view: user_type_form_access {
  sql_table_name: data_5b477838c366d.user_type_form_access ;;

  dimension: form_access {
    type: number
    sql: ${TABLE}.form_access ;;
  }

  dimension: form_access_id {
    type: number
    sql: ${TABLE}.form_access_id ;;
  }

  dimension: form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.form_id ;;
  }

  dimension: user_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [user_types.user_type_id, user_types.user_type_name, forms.form_id, forms.form_name]
  }
}
