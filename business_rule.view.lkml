view: business_rule {
  sql_table_name: data_5b477838c366d.business_rule ;;

  dimension: business_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.business_rule_id ;;
  }

  dimension: business_rule_action {
    type: string
    sql: ${TABLE}.business_rule_action ;;
  }

  dimension: business_rule_crit {
    type: string
    sql: ${TABLE}.business_rule_crit ;;
  }

  dimension: business_rule_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_rule_group_id ;;
  }

  dimension: business_rule_guid {
    type: string
    sql: ${TABLE}.business_rule_guid ;;
  }

  dimension: business_rule_name {
    type: string
    sql: ${TABLE}.business_rule_name ;;
  }

  dimension: business_rule_order {
    type: number
    sql: ${TABLE}.business_rule_order ;;
  }

  dimension: business_rule_php {
    type: string
    sql: ${TABLE}.business_rule_php ;;
  }

  dimension: business_rule_run {
    type: string
    sql: ${TABLE}.business_rule_run ;;
  }

  dimension: business_rule_sql {
    type: string
    sql: ${TABLE}.business_rule_sql ;;
  }

  dimension: business_rule_type {
    type: string
    sql: ${TABLE}.business_rule_type ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: filter {
    type: string
    sql: ${TABLE}.filter ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  measure: count {
    type: count
    drill_fields: [business_rule_id, business_rule_name, business_rule_group.business_rule_group_id, business_rule_group.business_rule_group_name]
  }
}
