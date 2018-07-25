view: forms {
  sql_table_name: data_5b477838c366d.forms ;;

  dimension: form_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.form_id ;;
  }

  dimension: allow_copy {
    type: yesno
    sql: ${TABLE}.allow_copy ;;
  }

  dimension: allow_paste {
    type: yesno
    sql: ${TABLE}.allow_paste ;;
  }

  dimension: form_column_config {
    type: string
    sql: ${TABLE}.form_column_config ;;
  }

  dimension: form_filter_config {
    type: string
    sql: ${TABLE}.form_filter_config ;;
  }

  dimension: form_guid {
    type: string
    sql: ${TABLE}.form_guid ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.form_name ;;
  }

  dimension: form_theme {
    type: number
    sql: ${TABLE}.form_theme ;;
  }

  dimension: form_type {
    type: yesno
    sql: ${TABLE}.form_type ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: reload {
    type: yesno
    sql: ${TABLE}.reload ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: submit_apis {
    type: string
    sql: ${TABLE}.submit_apis ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      form_id,
      form_name,
      sources.source_id,
      sources.source_name,
      form_elements.count,
      user_type_form_access.count
    ]
  }
}
