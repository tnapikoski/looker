view: user_grants {
  sql_table_name: data_5b477838c366d.user_grants ;;

  dimension: user_grant_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_grant_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [user_grant_id, name]
  }
}
