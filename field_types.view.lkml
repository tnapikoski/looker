view: field_types {
  sql_table_name: data_5b477838c366d.field_types ;;

  dimension: field_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.field_type_id ;;
  }

  dimension: default {
    type: string
    sql: ${TABLE}.`default` ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: format {
    type: yesno
    sql: ${TABLE}.format ;;
  }

  dimension: html_style {
    type: string
    sql: ${TABLE}.html_style ;;
  }

  dimension: html_temp {
    type: string
    sql: ${TABLE}.html_temp ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_editable {
    type: yesno
    sql: ${TABLE}.is_editable ;;
  }

  dimension: is_hidden {
    type: number
    sql: ${TABLE}.is_hidden ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: type {
    type: yesno
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      field_type_id,
      name,
      sources.source_id,
      sources.source_name,
      field_types_old.count,
      field_type_triggers.count
    ]
  }
}
