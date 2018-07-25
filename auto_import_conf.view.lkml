view: auto_import_conf {
  sql_table_name: data_5b477838c366d.auto_import_conf ;;

  dimension: auto_import_conf_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.auto_import_conf_id ;;
  }

  dimension: auto_import_conf_guid {
    type: string
    sql: ${TABLE}.auto_import_conf_guid ;;
  }

  dimension: import_options {
    type: string
    sql: ${TABLE}.import_options ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [auto_import_conf_id, name]
  }
}
