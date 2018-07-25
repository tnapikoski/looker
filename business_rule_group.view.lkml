view: business_rule_group {
  sql_table_name: data_5b477838c366d.business_rule_group ;;

  dimension: business_rule_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.business_rule_group_id ;;
  }

  dimension: business_rule_group_guid {
    type: string
    sql: ${TABLE}.business_rule_group_guid ;;
  }

  dimension: business_rule_group_name {
    type: string
    sql: ${TABLE}.business_rule_group_name ;;
  }

  dimension: business_rule_group_notify {
    type: yesno
    sql: ${TABLE}.business_rule_group_notify ;;
  }

  dimension: business_rule_group_update {
    type: yesno
    sql: ${TABLE}.business_rule_group_update ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
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
      business_rule_group_id,
      business_rule_group_name,
      sources.source_id,
      sources.source_name,
      business_rule.count,
      business_rule_triggers.count
    ]
  }
}
