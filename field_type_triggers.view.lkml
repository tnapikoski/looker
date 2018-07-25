view: field_type_triggers {
  sql_table_name: data_5b477838c366d.field_type_triggers ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: field_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.field_type_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.options ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: trigger_id {
    type: number
    sql: ${TABLE}.trigger_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, field_types.field_type_id, field_types.name]
  }
}
