view: field_types_old {
  sql_table_name: data_5b477838c366d.field_types_old ;;

  dimension: field_type_default {
    type: string
    sql: ${TABLE}.field_type_default ;;
  }

  dimension: field_type_desc {
    type: string
    sql: ${TABLE}.field_type_desc ;;
  }

  dimension: field_type_format {
    type: yesno
    sql: ${TABLE}.field_type_format ;;
  }

  dimension: field_type_html_style {
    type: string
    sql: ${TABLE}.field_type_html_style ;;
  }

  dimension: field_type_html_temp {
    type: string
    sql: ${TABLE}.field_type_html_temp ;;
  }

  dimension: field_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.field_type_id ;;
  }

  dimension: field_type_length {
    type: string
    sql: ${TABLE}.field_type_length ;;
  }

  dimension: field_type_name {
    type: string
    sql: ${TABLE}.field_type_name ;;
  }

  dimension: field_type_php_onrecordadd {
    type: string
    sql: ${TABLE}.field_type_php_onrecordadd ;;
  }

  dimension: field_type_php_onrecorddeletepost {
    type: string
    sql: ${TABLE}.field_type_php_onrecorddeletepost ;;
  }

  dimension: field_type_php_onrecorddeletepre {
    type: string
    sql: ${TABLE}.field_type_php_onrecorddeletepre ;;
  }

  dimension: field_type_php_onrecordupdate {
    type: string
    sql: ${TABLE}.field_type_php_onrecordupdate ;;
  }

  dimension: field_type_php_onsourceadd {
    type: string
    sql: ${TABLE}.field_type_php_onsourceadd ;;
  }

  dimension: field_type_type {
    type: yesno
    sql: ${TABLE}.field_type_type ;;
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

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  measure: count {
    type: count
    drill_fields: [field_type_name, field_types.field_type_id, field_types.name]
  }
}
