view: source_fields {
  sql_table_name: data_5b477838c366d.source_fields ;;

  dimension: disable_export {
    type: yesno
    sql: ${TABLE}.disable_export ;;
  }

  dimension: drop_column {
    type: string
    sql: ${TABLE}.drop_column ;;
  }

  dimension: drop_columnv {
    type: number
    sql: ${TABLE}.drop_columnv ;;
  }

  dimension: drop_filter {
    type: string
    sql: ${TABLE}.drop_filter ;;
  }

  dimension: drop_table {
    type: number
    sql: ${TABLE}.drop_table ;;
  }

  dimension: field_date_type {
    type: yesno
    sql: ${TABLE}.field_date_type ;;
  }

  dimension: field_default {
    type: string
    sql: ${TABLE}.field_default ;;
  }

  dimension: field_desc {
    type: string
    sql: ${TABLE}.field_desc ;;
  }

  dimension: field_dropv {
    type: string
    sql: ${TABLE}.field_dropv ;;
  }

  dimension: field_format {
    type: yesno
    sql: ${TABLE}.field_format ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.field_id ;;
  }

  dimension: field_index {
    type: yesno
    sql: ${TABLE}.field_index ;;
  }

  dimension: field_length {
    type: string
    sql: ${TABLE}.field_length ;;
  }

  dimension: field_linkedp {
    type: string
    sql: ${TABLE}.field_linkedp ;;
  }

  dimension: field_linkedv {
    type: string
    sql: ${TABLE}.field_linkedv ;;
  }

  dimension: field_mashupv {
    type: string
    sql: ${TABLE}.field_mashupv ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: field_options {
    type: string
    sql: ${TABLE}.field_options ;;
  }

  dimension: field_order {
    type: number
    sql: ${TABLE}.field_order ;;
  }

  dimension: field_type {
    type: number
    sql: ${TABLE}.field_type ;;
  }

  dimension: fieldm_display {
    type: string
    sql: ${TABLE}.fieldm_display ;;
  }

  dimension: fieldm_rename {
    type: string
    sql: ${TABLE}.fieldm_rename ;;
  }

  dimension: fieldm_source_id {
    type: number
    sql: ${TABLE}.fieldm_source_id ;;
  }

  dimension: is_custom {
    type: yesno
    sql: ${TABLE}.is_custom ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [field_name, fieldm_rename, sources.source_id, sources.source_name]
  }
}
