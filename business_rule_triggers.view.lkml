view: business_rule_triggers {
  sql_table_name: data_5b477838c366d.business_rule_triggers ;;

  dimension: business_rule_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_rule_group_id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: trigger_id {
    type: number
    sql: ${TABLE}.trigger_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name, business_rule_group.business_rule_group_id, business_rule_group.business_rule_group_name]
  }
}
