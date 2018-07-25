view: plugin_configs {
  sql_table_name: data_5b477838c366d.plugin_configs ;;

  dimension: beacon_able {
    type: yesno
    sql: ${TABLE}.beacon_able ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`group` ;;
  }

  dimension: import_type {
    type: string
    sql: ${TABLE}.import_type ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plugin_id {
    type: number
    sql: ${TABLE}.plugin_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_installed {
    type: number
    sql: ${TABLE}.user_installed ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
